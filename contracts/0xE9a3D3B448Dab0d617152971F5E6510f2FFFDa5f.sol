contract main {




// =====================  Runtime code  =====================


#
#  - sub_007f9310(?)
#
function _fallback() payable {
    revert
}

function sub_51eeb66e(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    mem[96] = ('cd', 36).length
    mem[64] = (32 * ('cd', 36).length) + 128
    if not ('cd', 36).length:
        idx = 0
        while idx < ('cd', 36).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _690 = mem[(32 * idx) + 128]
            if idx >= ('cd', 36).length:
                revert with 'NH{q', 50
            require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 99
            require cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)] == address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)])
            if idx >= ('cd', 36).length:
                revert with 'NH{q', 50
            require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 99
            require cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] < calldata.size + -cd[(cd[36] + (32 * idx) + 36)] + -cd[36] - 67
            require cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)] <= test266151307()
            require cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68 <= calldata.size - (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)])
            require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
            staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).borrowable0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _778 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _779 = mem[_778]
            require mem[_778] == mem[_778 + 12 len 20]
            require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
            staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).borrowable1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _782 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _785 = mem[_782]
            require mem[_782] == mem[_782 + 12 len 20]
            if not address(cd[4]):
                _788 = mem[_690 + 64]
                _789 = mem[_690 + 96]
                _790 = mem[_690 + 32]
                if cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)] > test266151307():
                    revert with 'NH{q', 65
                _793 = mem[64]
                if not cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]:
                    mem[_690 + 128] = mem[64]
                    require ext_code.size(address(_779))
                    call address(_779).accrueInterest() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(_779))
                    staticcall address(_779).borrowIndex() with:
                            gas gas_remaining wei
                    mem[mem[64] + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 32] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_788] = ext_call.return_data[0]
                    require ext_code.size(address(_779))
                    staticcall address(_779).borrowRate() with:
                            gas gas_remaining wei
                    mem[_793 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_788 + 32] = ext_call.return_data[0]
                    require ext_code.size(address(_785))
                    call address(_785).accrueInterest() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(_785))
                    staticcall address(_785).borrowIndex() with:
                            gas gas_remaining wei
                    mem[_793 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 32] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_789] = ext_call.return_data[0]
                    require ext_code.size(address(_785))
                    staticcall address(_785).borrowRate() with:
                            gas gas_remaining wei
                    mem[_793 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (4 * ceil32(return_data.size)) + 32] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_789 + 32] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).liquidationIncentive() with:
                            gas gas_remaining wei
                    mem[_793 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (6 * ceil32(return_data.size)) + 32] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_790 + 32] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).exchangeRate() with:
                         gas gas_remaining wei
                    mem[_793 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (7 * ceil32(return_data.size)) + 32] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_790] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).safetyMarginSqrt() with:
                            gas gas_remaining wei
                    mem[_793 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (8 * ceil32(return_data.size)) + 32] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _793 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (10 * ceil32(return_data.size)) + 32
                    require return_data.size >= 32
                    mem[_790 + 64] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).getPrices() with:
                         gas gas_remaining wei
                    mem[_793 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (10 * ceil32(return_data.size)) + 32 len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _793 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (11 * ceil32(return_data.size)) + 32
                    require return_data.size >= 64
                    mem[_790 + 128] = ext_call.return_data[32]
                    mem[_790 + 96] = ext_call.return_data[0]
                    s = 0
                    while s < cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]:
                        require cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)] == address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                        if s >= mem[_793]:
                            revert with 'NH{q', 50
                        _1491 = mem[(32 * s) + _793 + 32]
                        require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                        call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).accountLiquidity(address arg1) with:
                             gas gas_remaining wei
                            args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1505 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if mem[_1505]:
                            mem[_1491 + 96] = mem[_1505]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                            staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1564 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_1491] = mem[_1564]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_779))
                            staticcall address(_779).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1591 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_1491 + 32] = mem[_1591]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_785))
                            staticcall address(_785).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1615 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_1491 + 64] = mem[_1615]
                        else:
                            if mem[_1505 + 32] >= 0 and 0 < mem[_1505 + 32] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                revert with 'NH{q', 17
                            if mem[_1505 + 32] < 0 and 0 > mem[_1505 + 32] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            mem[_1491 + 96] = -mem[_1505 + 32]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                            staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1587 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_1491] = mem[_1587]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_779))
                            staticcall address(_779).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1611 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_1491 + 32] = mem[_1611]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_785))
                            staticcall address(_785).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1633 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_1491 + 64] = mem[_1633]
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        continue 
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                mem[mem[64] + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 32] = 0
                mem[mem[64] + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 64] = 0
                mem[mem[64] + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 96] = 0
                mem[mem[64] + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 128] = 0
                mem[var67002] = var67001
                if not var67003 - 1:
                    mem[_690 + 128] = _793
                    require ext_code.size(address(_779))
                    call address(_779).accrueInterest() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(_779))
                    staticcall address(_779).borrowIndex() with:
                            gas gas_remaining wei
                    mem[_793 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_788] = ext_call.return_data[0]
                    require ext_code.size(address(_779))
                    staticcall address(_779).borrowRate() with:
                            gas gas_remaining wei
                    mem[_793 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + ceil32(return_data.size) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_788 + 32] = ext_call.return_data[0]
                    require ext_code.size(address(_785))
                    call address(_785).accrueInterest() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(_785))
                    staticcall address(_785).borrowIndex() with:
                            gas gas_remaining wei
                    mem[_793 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_789] = ext_call.return_data[0]
                    require ext_code.size(address(_785))
                    staticcall address(_785).borrowRate() with:
                            gas gas_remaining wei
                    mem[_793 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (4 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_789 + 32] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).liquidationIncentive() with:
                            gas gas_remaining wei
                    mem[_793 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (6 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_790 + 32] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).exchangeRate() with:
                         gas gas_remaining wei
                    mem[_793 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (7 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_790] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).safetyMarginSqrt() with:
                            gas gas_remaining wei
                    mem[_793 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (8 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _793 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (10 * ceil32(return_data.size)) + 160
                    require return_data.size >= 32
                    mem[_790 + 64] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).getPrices() with:
                         gas gas_remaining wei
                    mem[_793 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (10 * ceil32(return_data.size)) + 160 len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _793 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (11 * ceil32(return_data.size)) + 160
                    require return_data.size >= 64
                    mem[_790 + 128] = ext_call.return_data[32]
                    mem[_790 + 96] = ext_call.return_data[0]
                    s = 0
                    while s < cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]:
                        require cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)] == address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                        if s >= mem[_793]:
                            revert with 'NH{q', 50
                        _2729 = mem[(32 * s) + _793 + 32]
                        require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                        call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).accountLiquidity(address arg1) with:
                             gas gas_remaining wei
                            args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2745 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if mem[_2745]:
                            mem[_2729 + 96] = mem[_2745]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                            staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2805 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_2729] = mem[_2805]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_779))
                            staticcall address(_779).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2827 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_2729 + 32] = mem[_2827]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_785))
                            staticcall address(_785).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2851 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_2729 + 64] = mem[_2851]
                        else:
                            if mem[_2745 + 32] >= 0 and 0 < mem[_2745 + 32] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                revert with 'NH{q', 17
                            if mem[_2745 + 32] < 0 and 0 > mem[_2745 + 32] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            mem[_2729 + 96] = -mem[_2745 + 32]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                            staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2824 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_2729] = mem[_2824]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_779))
                            staticcall address(_779).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2848 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_2729 + 32] = mem[_2848]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_785))
                            staticcall address(_785).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2871 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_2729 + 64] = mem[_2871]
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        continue 
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                mem[_793 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 160] = 0
                mem[_793 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 192] = 0
                mem[_793 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 224] = 0
                mem[_793 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 256] = 0
                mem[var71002] = var71001
                if not var71003 - 1:
                    mem[_690 + 128] = _793
                    require ext_code.size(address(_779))
                    call address(_779).accrueInterest() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(_779))
                    staticcall address(_779).borrowIndex() with:
                            gas gas_remaining wei
                    mem[_793 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 288] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_788] = ext_call.return_data[0]
                    require ext_code.size(address(_779))
                    staticcall address(_779).borrowRate() with:
                            gas gas_remaining wei
                    mem[_793 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + ceil32(return_data.size) + 288] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_788 + 32] = ext_call.return_data[0]
                    require ext_code.size(address(_785))
                    call address(_785).accrueInterest() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(_785))
                    staticcall address(_785).borrowIndex() with:
                            gas gas_remaining wei
                    mem[_793 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_789] = ext_call.return_data[0]
                    require ext_code.size(address(_785))
                    staticcall address(_785).borrowRate() with:
                            gas gas_remaining wei
                    mem[_793 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (4 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_789 + 32] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).liquidationIncentive() with:
                            gas gas_remaining wei
                    mem[_793 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (6 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_790 + 32] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).exchangeRate() with:
                         gas gas_remaining wei
                    mem[_793 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (7 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_790] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).safetyMarginSqrt() with:
                            gas gas_remaining wei
                    mem[_793 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (8 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _793 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (10 * ceil32(return_data.size)) + 288
                    require return_data.size >= 32
                    mem[_790 + 64] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).getPrices() with:
                         gas gas_remaining wei
                    mem[_793 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (10 * ceil32(return_data.size)) + 288 len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _793 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (11 * ceil32(return_data.size)) + 288
                    require return_data.size >= 64
                    mem[_790 + 128] = ext_call.return_data[32]
                    mem[_790 + 96] = ext_call.return_data[0]
                    s = 0
                    while s < cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]:
                        require cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)] == address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                        if s >= mem[_793]:
                            revert with 'NH{q', 50
                        _3986 = mem[(32 * s) + _793 + 32]
                        require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                        call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).accountLiquidity(address arg1) with:
                             gas gas_remaining wei
                            args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4003 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if mem[_4003]:
                            mem[_3986 + 96] = mem[_4003]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                            staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4026 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_3986] = mem[_4026]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_779))
                            staticcall address(_779).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4051 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_3986 + 32] = mem[_4051]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_785))
                            staticcall address(_785).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4076 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_3986 + 64] = mem[_4076]
                        else:
                            if mem[_4003 + 32] >= 0 and 0 < mem[_4003 + 32] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                revert with 'NH{q', 17
                            if mem[_4003 + 32] < 0 and 0 > mem[_4003 + 32] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            mem[_3986 + 96] = -mem[_4003 + 32]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                            staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4047 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_3986] = mem[_4047]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_779))
                            staticcall address(_779).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4073 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_3986 + 32] = mem[_4073]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_785))
                            staticcall address(_785).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4096 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_3986 + 64] = mem[_4096]
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        continue 
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                mem[_793 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 288] = 0
                mem[_793 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 320] = 0
                mem[_793 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 352] = 0
                mem[_793 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 384] = 0
                mem[var75002] = var75001
                if not var75003 - 1:
                    mem[_690 + 128] = _793
                    require ext_code.size(address(_779))
                    call address(_779).accrueInterest() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(_779))
                    staticcall address(_779).borrowIndex() with:
                            gas gas_remaining wei
                    mem[_793 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 416] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_788] = ext_call.return_data[0]
                    require ext_code.size(address(_779))
                    staticcall address(_779).borrowRate() with:
                            gas gas_remaining wei
                    mem[_793 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + ceil32(return_data.size) + 416] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_788 + 32] = ext_call.return_data[0]
                    require ext_code.size(address(_785))
                    call address(_785).accrueInterest() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(_785))
                    staticcall address(_785).borrowIndex() with:
                            gas gas_remaining wei
                    mem[_793 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 416] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_789] = ext_call.return_data[0]
                    require ext_code.size(address(_785))
                    staticcall address(_785).borrowRate() with:
                            gas gas_remaining wei
                    mem[_793 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (4 * ceil32(return_data.size)) + 416] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_789 + 32] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).liquidationIncentive() with:
                            gas gas_remaining wei
                    mem[_793 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (6 * ceil32(return_data.size)) + 416] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_790 + 32] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).exchangeRate() with:
                         gas gas_remaining wei
                    mem[_793 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (7 * ceil32(return_data.size)) + 416] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_790] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).safetyMarginSqrt() with:
                            gas gas_remaining wei
                    mem[_793 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (8 * ceil32(return_data.size)) + 416] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _793 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (10 * ceil32(return_data.size)) + 416
                    require return_data.size >= 32
                    mem[_790 + 64] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).getPrices() with:
                         gas gas_remaining wei
                    mem[_793 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (10 * ceil32(return_data.size)) + 416 len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _793 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (11 * ceil32(return_data.size)) + 416
                    require return_data.size >= 64
                    mem[_790 + 128] = ext_call.return_data[32]
                    mem[_790 + 96] = ext_call.return_data[0]
                    s = 0
                    while s < cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]:
                        require cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)] == address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                        if s >= mem[_793]:
                            revert with 'NH{q', 50
                        _5063 = mem[(32 * s) + _793 + 32]
                        require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                        call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).accountLiquidity(address arg1) with:
                             gas gas_remaining wei
                            args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5087 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if mem[_5087]:
                            mem[_5063 + 96] = mem[_5087]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                            staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5134 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_5063] = mem[_5134]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_779))
                            staticcall address(_779).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5172 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_5063 + 32] = mem[_5172]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_785))
                            staticcall address(_785).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5212 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_5063 + 64] = mem[_5212]
                        else:
                            if mem[_5087 + 32] >= 0 and 0 < mem[_5087 + 32] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                revert with 'NH{q', 17
                            if mem[_5087 + 32] < 0 and 0 > mem[_5087 + 32] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            mem[_5063 + 96] = -mem[_5087 + 32]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                            staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5169 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_5063] = mem[_5169]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_779))
                            staticcall address(_779).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5209 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_5063 + 32] = mem[_5209]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_785))
                            staticcall address(_785).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5245 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_5063 + 64] = mem[_5245]
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        continue 
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                mem[_793 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 416] = 0
                mem[_793 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 448] = 0
                mem[_793 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 480] = 0
                mem[_793 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 512] = 0
                mem[var79002] = var79001
                if not var79003 - 1:
                    mem[_690 + 128] = _793
                    require ext_code.size(address(_779))
                    call address(_779).accrueInterest() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(_779))
                    staticcall address(_779).borrowIndex() with:
                            gas gas_remaining wei
                    mem[_793 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 544] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_788] = ext_call.return_data[0]
                    require ext_code.size(address(_779))
                    staticcall address(_779).borrowRate() with:
                            gas gas_remaining wei
                    mem[_793 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + ceil32(return_data.size) + 544] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_788 + 32] = ext_call.return_data[0]
                    require ext_code.size(address(_785))
                    call address(_785).accrueInterest() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(_785))
                    staticcall address(_785).borrowIndex() with:
                            gas gas_remaining wei
                    mem[_793 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 544] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_789] = ext_call.return_data[0]
                    require ext_code.size(address(_785))
                    staticcall address(_785).borrowRate() with:
                            gas gas_remaining wei
                    mem[_793 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (4 * ceil32(return_data.size)) + 544] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_789 + 32] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).liquidationIncentive() with:
                            gas gas_remaining wei
                    mem[_793 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (6 * ceil32(return_data.size)) + 544] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_790 + 32] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).exchangeRate() with:
                         gas gas_remaining wei
                    mem[_793 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (7 * ceil32(return_data.size)) + 544] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_790] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).safetyMarginSqrt() with:
                            gas gas_remaining wei
                    mem[_793 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (8 * ceil32(return_data.size)) + 544] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _793 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (10 * ceil32(return_data.size)) + 544
                    require return_data.size >= 32
                    mem[_790 + 64] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).getPrices() with:
                         gas gas_remaining wei
                    mem[_793 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (10 * ceil32(return_data.size)) + 544 len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _793 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (11 * ceil32(return_data.size)) + 544
                    require return_data.size >= 64
                    mem[_790 + 128] = ext_call.return_data[32]
                    mem[_790 + 96] = ext_call.return_data[0]
                    s = 0
                    while s < cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]:
                        require cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)] == address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                        if s >= mem[_793]:
                            revert with 'NH{q', 50
                        _6015 = mem[(32 * s) + _793 + 32]
                        require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                        call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).accountLiquidity(address arg1) with:
                             gas gas_remaining wei
                            args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6039 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if mem[_6039]:
                            mem[_6015 + 96] = mem[_6039]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                            staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6086 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_6015] = mem[_6086]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_779))
                            staticcall address(_779).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6124 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_6015 + 32] = mem[_6124]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_785))
                            staticcall address(_785).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6164 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_6015 + 64] = mem[_6164]
                        else:
                            if mem[_6039 + 32] >= 0 and 0 < mem[_6039 + 32] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                revert with 'NH{q', 17
                            if mem[_6039 + 32] < 0 and 0 > mem[_6039 + 32] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            mem[_6015 + 96] = -mem[_6039 + 32]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                            staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6121 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_6015] = mem[_6121]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_779))
                            staticcall address(_779).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6161 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_6015 + 32] = mem[_6161]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_785))
                            staticcall address(_785).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6197 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_6015 + 64] = mem[_6197]
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        continue 
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                mem[_793 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 544] = 0
                mem[_793 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 576] = 0
                mem[_793 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 608] = 0
                mem[_793 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 640] = 0
                mem[var83002] = var83001
                if not var83003 - 1:
                    mem[_690 + 128] = _793
                    require ext_code.size(address(_779))
                    call address(_779).accrueInterest() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(_779))
                    staticcall address(_779).borrowIndex() with:
                            gas gas_remaining wei
                    mem[_793 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 672] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_788] = ext_call.return_data[0]
                    require ext_code.size(address(_779))
                    staticcall address(_779).borrowRate() with:
                            gas gas_remaining wei
                    mem[_793 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + ceil32(return_data.size) + 672] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_788 + 32] = ext_call.return_data[0]
                    require ext_code.size(address(_785))
                    call address(_785).accrueInterest() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(_785))
                    staticcall address(_785).borrowIndex() with:
                            gas gas_remaining wei
                    mem[_793 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 672] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_789] = ext_call.return_data[0]
                    require ext_code.size(address(_785))
                    staticcall address(_785).borrowRate() with:
                            gas gas_remaining wei
                    mem[_793 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (4 * ceil32(return_data.size)) + 672] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_789 + 32] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).liquidationIncentive() with:
                            gas gas_remaining wei
                    mem[_793 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (6 * ceil32(return_data.size)) + 672] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_790 + 32] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).exchangeRate() with:
                         gas gas_remaining wei
                    mem[_793 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (7 * ceil32(return_data.size)) + 672] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_790] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).safetyMarginSqrt() with:
                            gas gas_remaining wei
                    mem[_793 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (8 * ceil32(return_data.size)) + 672] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _793 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (10 * ceil32(return_data.size)) + 672
                    require return_data.size >= 32
                    mem[_790 + 64] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).getPrices() with:
                         gas gas_remaining wei
                    mem[_793 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (10 * ceil32(return_data.size)) + 672 len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _793 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (11 * ceil32(return_data.size)) + 672
                    require return_data.size >= 64
                    mem[_790 + 128] = ext_call.return_data[32]
                    mem[_790 + 96] = ext_call.return_data[0]
                    s = 0
                    while s < cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]:
                        require cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)] == address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                        if s >= mem[_793]:
                            revert with 'NH{q', 50
                        _6967 = mem[(32 * s) + _793 + 32]
                        require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                        call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).accountLiquidity(address arg1) with:
                             gas gas_remaining wei
                            args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6991 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if mem[_6991]:
                            mem[_6967 + 96] = mem[_6991]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                            staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7038 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_6967] = mem[_7038]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_779))
                            staticcall address(_779).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7076 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_6967 + 32] = mem[_7076]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_785))
                            staticcall address(_785).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7116 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_6967 + 64] = mem[_7116]
                        else:
                            if mem[_6991 + 32] >= 0 and 0 < mem[_6991 + 32] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                revert with 'NH{q', 17
                            if mem[_6991 + 32] < 0 and 0 > mem[_6991 + 32] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            mem[_6967 + 96] = -mem[_6991 + 32]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                            staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7073 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_6967] = mem[_7073]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_779))
                            staticcall address(_779).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7113 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_6967 + 32] = mem[_7113]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_785))
                            staticcall address(_785).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7149 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_6967 + 64] = mem[_7149]
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        continue 
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                mem[_793 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 672] = 0
                mem[_793 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 704] = 0
                mem[_793 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 736] = 0
                mem[_793 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 768] = 0
                mem[var87002] = var87001
                if not var87003 - 1:
                    mem[_690 + 128] = _793
                    require ext_code.size(address(_779))
                    call address(_779).accrueInterest() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(_779))
                    staticcall address(_779).borrowIndex() with:
                            gas gas_remaining wei
                    mem[_793 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 800] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_788] = ext_call.return_data[0]
                    require ext_code.size(address(_779))
                    staticcall address(_779).borrowRate() with:
                            gas gas_remaining wei
                    mem[_793 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + ceil32(return_data.size) + 800] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_788 + 32] = ext_call.return_data[0]
                    require ext_code.size(address(_785))
                    call address(_785).accrueInterest() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(_785))
                    staticcall address(_785).borrowIndex() with:
                            gas gas_remaining wei
                    mem[_793 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 800] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_789] = ext_call.return_data[0]
                    require ext_code.size(address(_785))
                    staticcall address(_785).borrowRate() with:
                            gas gas_remaining wei
                    mem[_793 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (4 * ceil32(return_data.size)) + 800] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_789 + 32] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).liquidationIncentive() with:
                            gas gas_remaining wei
                    mem[_793 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (6 * ceil32(return_data.size)) + 800] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_790 + 32] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).exchangeRate() with:
                         gas gas_remaining wei
                    mem[_793 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (7 * ceil32(return_data.size)) + 800] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_790] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).safetyMarginSqrt() with:
                            gas gas_remaining wei
                    mem[_793 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (8 * ceil32(return_data.size)) + 800] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _793 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (10 * ceil32(return_data.size)) + 800
                    require return_data.size >= 32
                    mem[_790 + 64] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).getPrices() with:
                         gas gas_remaining wei
                    mem[_793 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (10 * ceil32(return_data.size)) + 800 len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _793 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (11 * ceil32(return_data.size)) + 800
                    require return_data.size >= 64
                    mem[_790 + 128] = ext_call.return_data[32]
                    mem[_790 + 96] = ext_call.return_data[0]
                    s = 0
                    while s < cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]:
                        require cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)] == address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                        if s >= mem[_793]:
                            revert with 'NH{q', 50
                        _7919 = mem[(32 * s) + _793 + 32]
                        require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                        call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).accountLiquidity(address arg1) with:
                             gas gas_remaining wei
                            args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7943 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if mem[_7943]:
                            mem[_7919 + 96] = mem[_7943]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                            staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7990 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_7919] = mem[_7990]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_779))
                            staticcall address(_779).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8028 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_7919 + 32] = mem[_8028]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_785))
                            staticcall address(_785).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8068 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_7919 + 64] = mem[_8068]
                        else:
                            if mem[_7943 + 32] >= 0 and 0 < mem[_7943 + 32] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                revert with 'NH{q', 17
                            if mem[_7943 + 32] < 0 and 0 > mem[_7943 + 32] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            mem[_7919 + 96] = -mem[_7943 + 32]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                            staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8025 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_7919] = mem[_8025]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_779))
                            staticcall address(_779).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8065 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_7919 + 32] = mem[_8065]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_785))
                            staticcall address(_785).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8101 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_7919 + 64] = mem[_8101]
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        continue 
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                mem[_793 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 800] = 0
                mem[_793 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 832] = 0
                mem[_793 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 864] = 0
                mem[_793 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 896] = 0
                mem[var91002] = var91001
                if not var91003 - 1:
                    mem[_690 + 128] = _793
                    require ext_code.size(address(_779))
                    call address(_779).accrueInterest() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(_779))
                    staticcall address(_779).borrowIndex() with:
                            gas gas_remaining wei
                    mem[_793 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 928] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_788] = ext_call.return_data[0]
                    require ext_code.size(address(_779))
                    staticcall address(_779).borrowRate() with:
                            gas gas_remaining wei
                    mem[_793 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + ceil32(return_data.size) + 928] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_788 + 32] = ext_call.return_data[0]
                    require ext_code.size(address(_785))
                    call address(_785).accrueInterest() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(_785))
                    staticcall address(_785).borrowIndex() with:
                            gas gas_remaining wei
                    mem[_793 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 928] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_789] = ext_call.return_data[0]
                    require ext_code.size(address(_785))
                    staticcall address(_785).borrowRate() with:
                            gas gas_remaining wei
                    mem[_793 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (4 * ceil32(return_data.size)) + 928] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_789 + 32] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).liquidationIncentive() with:
                            gas gas_remaining wei
                    mem[_793 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (6 * ceil32(return_data.size)) + 928] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_790 + 32] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).exchangeRate() with:
                         gas gas_remaining wei
                    mem[_793 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (7 * ceil32(return_data.size)) + 928] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_790] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).safetyMarginSqrt() with:
                            gas gas_remaining wei
                    mem[_793 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (8 * ceil32(return_data.size)) + 928] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _793 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (10 * ceil32(return_data.size)) + 928
                    require return_data.size >= 32
                    mem[_790 + 64] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).getPrices() with:
                         gas gas_remaining wei
                    mem[_793 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (10 * ceil32(return_data.size)) + 928 len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _793 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (11 * ceil32(return_data.size)) + 928
                    require return_data.size >= 64
                    mem[_790 + 128] = ext_call.return_data[32]
                    mem[_790 + 96] = ext_call.return_data[0]
                    s = 0
                    while s < cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]:
                        require cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)] == address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                        if s >= mem[_793]:
                            revert with 'NH{q', 50
                        _8871 = mem[(32 * s) + _793 + 32]
                        require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                        call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).accountLiquidity(address arg1) with:
                             gas gas_remaining wei
                            args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8895 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if mem[_8895]:
                            mem[_8871 + 96] = mem[_8895]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                            staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8942 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_8871] = mem[_8942]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_779))
                            staticcall address(_779).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8980 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_8871 + 32] = mem[_8980]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_785))
                            staticcall address(_785).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9020 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_8871 + 64] = mem[_9020]
                        else:
                            if mem[_8895 + 32] >= 0 and 0 < mem[_8895 + 32] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                revert with 'NH{q', 17
                            if mem[_8895 + 32] < 0 and 0 > mem[_8895 + 32] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            mem[_8871 + 96] = -mem[_8895 + 32]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                            staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8977 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_8871] = mem[_8977]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_779))
                            staticcall address(_779).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9017 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_8871 + 32] = mem[_9017]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_785))
                            staticcall address(_785).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9053 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_8871 + 64] = mem[_9053]
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        continue 
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                mem[_793 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 928] = 0
                mem[_793 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 960] = 0
                mem[_793 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 992] = 0
                mem[_793 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 1024] = 0
                mem[var95002] = var95001
                if var95003 - 1:
                    if var99003 - 1:
                        # nil
                    else:
                        require ext_code.size(address(_779))
                        call address(_779).accrueInterest() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(address(_779))
                        staticcall address(_779).borrowIndex() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(_779))
                        staticcall address(_779).borrowRate() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(_785))
                        call address(_785).accrueInterest() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(address(_785))
                        staticcall address(_785).borrowIndex() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(_785))
                        staticcall address(_785).borrowRate() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                        staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).liquidationIncentive() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                        call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).exchangeRate() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                        staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).safetyMarginSqrt() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                        call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).getPrices() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        # nil
                else:
                    mem[_690 + 128] = _793
                    require ext_code.size(address(_779))
                    call address(_779).accrueInterest() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(_779))
                    staticcall address(_779).borrowIndex() with:
                            gas gas_remaining wei
                    mem[_793 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 1056] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_788] = ext_call.return_data[0]
                    require ext_code.size(address(_779))
                    staticcall address(_779).borrowRate() with:
                            gas gas_remaining wei
                    mem[_793 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + ceil32(return_data.size) + 1056] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_788 + 32] = ext_call.return_data[0]
                    require ext_code.size(address(_785))
                    call address(_785).accrueInterest() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(_785))
                    staticcall address(_785).borrowIndex() with:
                            gas gas_remaining wei
                    mem[_793 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 1056] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_789] = ext_call.return_data[0]
                    require ext_code.size(address(_785))
                    staticcall address(_785).borrowRate() with:
                            gas gas_remaining wei
                    mem[_793 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (4 * ceil32(return_data.size)) + 1056] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_789 + 32] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).liquidationIncentive() with:
                            gas gas_remaining wei
                    mem[_793 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (6 * ceil32(return_data.size)) + 1056] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_790 + 32] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).exchangeRate() with:
                         gas gas_remaining wei
                    mem[_793 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (7 * ceil32(return_data.size)) + 1056] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_790] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).safetyMarginSqrt() with:
                            gas gas_remaining wei
                    mem[_793 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (8 * ceil32(return_data.size)) + 1056] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _793 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (10 * ceil32(return_data.size)) + 1056
                    require return_data.size >= 32
                    mem[_790 + 64] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).getPrices() with:
                         gas gas_remaining wei
                    mem[_793 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (10 * ceil32(return_data.size)) + 1056 len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _793 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (11 * ceil32(return_data.size)) + 1056
                    require return_data.size >= 64
                    mem[_790 + 128] = ext_call.return_data[32]
                    mem[_790 + 96] = ext_call.return_data[0]
                    s = 0
                    while s < cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]:
                        require cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)] == address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                        if s >= mem[_793]:
                            revert with 'NH{q', 50
                        _9823 = mem[(32 * s) + _793 + 32]
                        require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                        call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).accountLiquidity(address arg1) with:
                             gas gas_remaining wei
                            args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9847 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if mem[_9847]:
                            mem[_9823 + 96] = mem[_9847]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                            staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9894 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_9823] = mem[_9894]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_779))
                            staticcall address(_779).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9932 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_9823 + 32] = mem[_9932]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_785))
                            staticcall address(_785).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9972 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_9823 + 64] = mem[_9972]
                        else:
                            if mem[_9847 + 32] >= 0 and 0 < mem[_9847 + 32] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                revert with 'NH{q', 17
                            if mem[_9847 + 32] < 0 and 0 > mem[_9847 + 32] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            mem[_9823 + 96] = -mem[_9847 + 32]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                            staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9929 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_9823] = mem[_9929]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_779))
                            staticcall address(_779).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9969 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_9823 + 32] = mem[_9969]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_785))
                            staticcall address(_785).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10005 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_9823 + 64] = mem[_10005]
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        continue 
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
            else:
                require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).underlying() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _796 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _802 = mem[_796]
                require mem[_796] == mem[_796 + 12 len 20]
                _811 = mem[_690]
                require ext_code.size(address(cd[4]))
                staticcall address(cd[4]).MIN_T() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _817 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_817] == mem[_817 + 28 len 4]
                mem[_811] = mem[_817 + 28 len 4]
                _842 = mem[_811 + 32]
                require ext_code.size(address(cd[4]))
                staticcall address(cd[4]).getPair(address arg1) with:
                        gas gas_remaining wei
                       args address(_802)
                mem[mem[64] len 192] = ext_call.return_data[0 len 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _852 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 192
                _862 = mem[_852]
                _863 = mem[_852 + 32]
                _868 = mem[_852 + 64]
                require mem[_852 + 64] == mem[_852 + 92 len 4]
                _876 = mem[_852 + 96]
                require mem[_852 + 96] == mem[_852 + 124 len 4]
                _890 = mem[_852 + 128]
                require mem[_852 + 128] == bool(mem[_852 + 128])
                require mem[_852 + 160] == bool(mem[_852 + 160])
                mem[_842 + 160] = bool(mem[_852 + 160])
                mem[_842 + 128] = bool(_890)
                mem[_842 + 96] = uint32(_876)
                mem[_842 + 64] = uint32(_868)
                mem[_842 + 32] = _863
                mem[_842] = _862
                _919 = mem[_811 + 128]
                require ext_code.size(address(_802))
                staticcall address(_802).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _928 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _940 = mem[_928]
                require mem[_928] == mem[_928 + 18 len 14]
                _951 = mem[_928 + 32]
                require mem[_928 + 32] == mem[_928 + 50 len 14]
                require mem[_928 + 64] == mem[_928 + 92 len 4]
                mem[_919 + 64] = mem[_928 + 92 len 4]
                mem[_919 + 32] = Mask(112, 0, _951)
                mem[_919] = Mask(112, 0, _940)
                require ext_code.size(address(_802))
                staticcall address(_802).totalSupply() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _984 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[_811 + 160] = mem[_984]
                require ext_code.size(address(_802))
                staticcall address(_802).price0CumulativeLast() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _998 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[_811 + 64] = mem[_998]
                require ext_code.size(address(_802))
                staticcall address(_802).price1CumulativeLast() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1018 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[_811 + 96] = mem[_1018]
                _1030 = mem[_690 + 64]
                _1031 = mem[_690 + 96]
                _1032 = mem[_690 + 32]
                if cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)] > test266151307():
                    revert with 'NH{q', 65
                _1036 = mem[64]
                if not cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]:
                    mem[_690 + 128] = mem[64]
                    require ext_code.size(address(_779))
                    call address(_779).accrueInterest() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(_779))
                    staticcall address(_779).borrowIndex() with:
                            gas gas_remaining wei
                    mem[mem[64] + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 32] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_1030] = ext_call.return_data[0]
                    require ext_code.size(address(_779))
                    staticcall address(_779).borrowRate() with:
                            gas gas_remaining wei
                    mem[_1036 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_1030 + 32] = ext_call.return_data[0]
                    require ext_code.size(address(_785))
                    call address(_785).accrueInterest() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(_785))
                    staticcall address(_785).borrowIndex() with:
                            gas gas_remaining wei
                    mem[_1036 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 32] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_1031] = ext_call.return_data[0]
                    require ext_code.size(address(_785))
                    staticcall address(_785).borrowRate() with:
                            gas gas_remaining wei
                    mem[_1036 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (4 * ceil32(return_data.size)) + 32] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_1031 + 32] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).liquidationIncentive() with:
                            gas gas_remaining wei
                    mem[_1036 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (6 * ceil32(return_data.size)) + 32] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_1032 + 32] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).exchangeRate() with:
                         gas gas_remaining wei
                    mem[_1036 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (7 * ceil32(return_data.size)) + 32] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_1032] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).safetyMarginSqrt() with:
                            gas gas_remaining wei
                    mem[_1036 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (8 * ceil32(return_data.size)) + 32] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _1036 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (10 * ceil32(return_data.size)) + 32
                    require return_data.size >= 32
                    mem[_1032 + 64] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).getPrices() with:
                         gas gas_remaining wei
                    mem[_1036 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (10 * ceil32(return_data.size)) + 32 len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _1036 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (11 * ceil32(return_data.size)) + 32
                    require return_data.size >= 64
                    mem[_1032 + 128] = ext_call.return_data[32]
                    mem[_1032 + 96] = ext_call.return_data[0]
                    s = 0
                    while s < cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]:
                        require cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)] == address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                        if s >= mem[_1036]:
                            revert with 'NH{q', 50
                        _1494 = mem[(32 * s) + _1036 + 32]
                        require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                        call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).accountLiquidity(address arg1) with:
                             gas gas_remaining wei
                            args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1507 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if mem[_1507]:
                            mem[_1494 + 96] = mem[_1507]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                            staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1565 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_1494] = mem[_1565]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_779))
                            staticcall address(_779).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1592 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_1494 + 32] = mem[_1592]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_785))
                            staticcall address(_785).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1616 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_1494 + 64] = mem[_1616]
                        else:
                            if mem[_1507 + 32] >= 0 and 0 < mem[_1507 + 32] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                revert with 'NH{q', 17
                            if mem[_1507 + 32] < 0 and 0 > mem[_1507 + 32] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            mem[_1494 + 96] = -mem[_1507 + 32]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                            staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1589 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_1494] = mem[_1589]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_779))
                            staticcall address(_779).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1613 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_1494 + 32] = mem[_1613]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_785))
                            staticcall address(_785).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1635 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_1494 + 64] = mem[_1635]
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        continue 
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                mem[mem[64] + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 32] = 0
                mem[mem[64] + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 64] = 0
                mem[mem[64] + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 96] = 0
                mem[mem[64] + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 128] = 0
                mem[var130002] = var130001
                if not var130003 - 1:
                    mem[_690 + 128] = _1036
                    require ext_code.size(address(_779))
                    call address(_779).accrueInterest() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(_779))
                    staticcall address(_779).borrowIndex() with:
                            gas gas_remaining wei
                    mem[_1036 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_1030] = ext_call.return_data[0]
                    require ext_code.size(address(_779))
                    staticcall address(_779).borrowRate() with:
                            gas gas_remaining wei
                    mem[_1036 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + ceil32(return_data.size) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_1030 + 32] = ext_call.return_data[0]
                    require ext_code.size(address(_785))
                    call address(_785).accrueInterest() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(_785))
                    staticcall address(_785).borrowIndex() with:
                            gas gas_remaining wei
                    mem[_1036 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_1031] = ext_call.return_data[0]
                    require ext_code.size(address(_785))
                    staticcall address(_785).borrowRate() with:
                            gas gas_remaining wei
                    mem[_1036 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (4 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_1031 + 32] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).liquidationIncentive() with:
                            gas gas_remaining wei
                    mem[_1036 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (6 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_1032 + 32] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).exchangeRate() with:
                         gas gas_remaining wei
                    mem[_1036 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (7 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_1032] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).safetyMarginSqrt() with:
                            gas gas_remaining wei
                    mem[_1036 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (8 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _1036 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (10 * ceil32(return_data.size)) + 160
                    require return_data.size >= 32
                    mem[_1032 + 64] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).getPrices() with:
                         gas gas_remaining wei
                    mem[_1036 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (10 * ceil32(return_data.size)) + 160 len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _1036 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (11 * ceil32(return_data.size)) + 160
                    require return_data.size >= 64
                    mem[_1032 + 128] = ext_call.return_data[32]
                    mem[_1032 + 96] = ext_call.return_data[0]
                    s = 0
                    while s < cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]:
                        require cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)] == address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                        if s >= mem[_1036]:
                            revert with 'NH{q', 50
                        _2732 = mem[(32 * s) + _1036 + 32]
                        require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                        call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).accountLiquidity(address arg1) with:
                             gas gas_remaining wei
                            args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2747 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if mem[_2747]:
                            mem[_2732 + 96] = mem[_2747]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                            staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2806 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_2732] = mem[_2806]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_779))
                            staticcall address(_779).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2828 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_2732 + 32] = mem[_2828]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_785))
                            staticcall address(_785).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2852 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_2732 + 64] = mem[_2852]
                        else:
                            if mem[_2747 + 32] >= 0 and 0 < mem[_2747 + 32] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                revert with 'NH{q', 17
                            if mem[_2747 + 32] < 0 and 0 > mem[_2747 + 32] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            mem[_2732 + 96] = -mem[_2747 + 32]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                            staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2826 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_2732] = mem[_2826]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_779))
                            staticcall address(_779).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2850 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_2732 + 32] = mem[_2850]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_785))
                            staticcall address(_785).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2873 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_2732 + 64] = mem[_2873]
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        continue 
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                mem[_1036 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 160] = 0
                mem[_1036 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 192] = 0
                mem[_1036 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 224] = 0
                mem[_1036 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 256] = 0
                mem[var134002] = var134001
                if not var134003 - 1:
                    mem[_690 + 128] = _1036
                    require ext_code.size(address(_779))
                    call address(_779).accrueInterest() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(_779))
                    staticcall address(_779).borrowIndex() with:
                            gas gas_remaining wei
                    mem[_1036 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 288] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_1030] = ext_call.return_data[0]
                    require ext_code.size(address(_779))
                    staticcall address(_779).borrowRate() with:
                            gas gas_remaining wei
                    mem[_1036 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + ceil32(return_data.size) + 288] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_1030 + 32] = ext_call.return_data[0]
                    require ext_code.size(address(_785))
                    call address(_785).accrueInterest() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(_785))
                    staticcall address(_785).borrowIndex() with:
                            gas gas_remaining wei
                    mem[_1036 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_1031] = ext_call.return_data[0]
                    require ext_code.size(address(_785))
                    staticcall address(_785).borrowRate() with:
                            gas gas_remaining wei
                    mem[_1036 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (4 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_1031 + 32] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).liquidationIncentive() with:
                            gas gas_remaining wei
                    mem[_1036 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (6 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_1032 + 32] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).exchangeRate() with:
                         gas gas_remaining wei
                    mem[_1036 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (7 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_1032] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).safetyMarginSqrt() with:
                            gas gas_remaining wei
                    mem[_1036 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (8 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _1036 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (10 * ceil32(return_data.size)) + 288
                    require return_data.size >= 32
                    mem[_1032 + 64] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).getPrices() with:
                         gas gas_remaining wei
                    mem[_1036 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (10 * ceil32(return_data.size)) + 288 len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _1036 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (11 * ceil32(return_data.size)) + 288
                    require return_data.size >= 64
                    mem[_1032 + 128] = ext_call.return_data[32]
                    mem[_1032 + 96] = ext_call.return_data[0]
                    s = 0
                    while s < cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]:
                        require cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)] == address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                        if s >= mem[_1036]:
                            revert with 'NH{q', 50
                        _3989 = mem[(32 * s) + _1036 + 32]
                        require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                        call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).accountLiquidity(address arg1) with:
                             gas gas_remaining wei
                            args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4005 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if mem[_4005]:
                            mem[_3989 + 96] = mem[_4005]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                            staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4027 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_3989] = mem[_4027]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_779))
                            staticcall address(_779).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4052 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_3989 + 32] = mem[_4052]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_785))
                            staticcall address(_785).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4077 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_3989 + 64] = mem[_4077]
                        else:
                            if mem[_4005 + 32] >= 0 and 0 < mem[_4005 + 32] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                revert with 'NH{q', 17
                            if mem[_4005 + 32] < 0 and 0 > mem[_4005 + 32] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            mem[_3989 + 96] = -mem[_4005 + 32]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                            staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4049 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_3989] = mem[_4049]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_779))
                            staticcall address(_779).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4075 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_3989 + 32] = mem[_4075]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_785))
                            staticcall address(_785).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4098 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_3989 + 64] = mem[_4098]
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        continue 
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                mem[_1036 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 288] = 0
                mem[_1036 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 320] = 0
                mem[_1036 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 352] = 0
                mem[_1036 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 384] = 0
                mem[var138002] = var138001
                if not var138003 - 1:
                    mem[_690 + 128] = _1036
                    require ext_code.size(address(_779))
                    call address(_779).accrueInterest() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(_779))
                    staticcall address(_779).borrowIndex() with:
                            gas gas_remaining wei
                    mem[_1036 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 416] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_1030] = ext_call.return_data[0]
                    require ext_code.size(address(_779))
                    staticcall address(_779).borrowRate() with:
                            gas gas_remaining wei
                    mem[_1036 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + ceil32(return_data.size) + 416] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_1030 + 32] = ext_call.return_data[0]
                    require ext_code.size(address(_785))
                    call address(_785).accrueInterest() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(_785))
                    staticcall address(_785).borrowIndex() with:
                            gas gas_remaining wei
                    mem[_1036 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 416] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_1031] = ext_call.return_data[0]
                    require ext_code.size(address(_785))
                    staticcall address(_785).borrowRate() with:
                            gas gas_remaining wei
                    mem[_1036 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (4 * ceil32(return_data.size)) + 416] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_1031 + 32] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).liquidationIncentive() with:
                            gas gas_remaining wei
                    mem[_1036 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (6 * ceil32(return_data.size)) + 416] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_1032 + 32] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).exchangeRate() with:
                         gas gas_remaining wei
                    mem[_1036 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (7 * ceil32(return_data.size)) + 416] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_1032] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).safetyMarginSqrt() with:
                            gas gas_remaining wei
                    mem[_1036 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (8 * ceil32(return_data.size)) + 416] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _1036 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (10 * ceil32(return_data.size)) + 416
                    require return_data.size >= 32
                    mem[_1032 + 64] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).getPrices() with:
                         gas gas_remaining wei
                    mem[_1036 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (10 * ceil32(return_data.size)) + 416 len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _1036 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (11 * ceil32(return_data.size)) + 416
                    require return_data.size >= 64
                    mem[_1032 + 128] = ext_call.return_data[32]
                    mem[_1032 + 96] = ext_call.return_data[0]
                    s = 0
                    while s < cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]:
                        require cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)] == address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                        if s >= mem[_1036]:
                            revert with 'NH{q', 50
                        _5066 = mem[(32 * s) + _1036 + 32]
                        require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                        call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).accountLiquidity(address arg1) with:
                             gas gas_remaining wei
                            args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5089 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if mem[_5089]:
                            mem[_5066 + 96] = mem[_5089]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                            staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5135 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_5066] = mem[_5135]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_779))
                            staticcall address(_779).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5173 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_5066 + 32] = mem[_5173]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_785))
                            staticcall address(_785).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5213 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_5066 + 64] = mem[_5213]
                        else:
                            if mem[_5089 + 32] >= 0 and 0 < mem[_5089 + 32] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                revert with 'NH{q', 17
                            if mem[_5089 + 32] < 0 and 0 > mem[_5089 + 32] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            mem[_5066 + 96] = -mem[_5089 + 32]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                            staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5171 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_5066] = mem[_5171]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_779))
                            staticcall address(_779).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5211 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_5066 + 32] = mem[_5211]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_785))
                            staticcall address(_785).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5247 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_5066 + 64] = mem[_5247]
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        continue 
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                mem[_1036 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 416] = 0
                mem[_1036 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 448] = 0
                mem[_1036 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 480] = 0
                mem[_1036 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 512] = 0
                mem[var142002] = var142001
                if not var142003 - 1:
                    mem[_690 + 128] = _1036
                    require ext_code.size(address(_779))
                    call address(_779).accrueInterest() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(_779))
                    staticcall address(_779).borrowIndex() with:
                            gas gas_remaining wei
                    mem[_1036 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 544] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_1030] = ext_call.return_data[0]
                    require ext_code.size(address(_779))
                    staticcall address(_779).borrowRate() with:
                            gas gas_remaining wei
                    mem[_1036 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + ceil32(return_data.size) + 544] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_1030 + 32] = ext_call.return_data[0]
                    require ext_code.size(address(_785))
                    call address(_785).accrueInterest() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(_785))
                    staticcall address(_785).borrowIndex() with:
                            gas gas_remaining wei
                    mem[_1036 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 544] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_1031] = ext_call.return_data[0]
                    require ext_code.size(address(_785))
                    staticcall address(_785).borrowRate() with:
                            gas gas_remaining wei
                    mem[_1036 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (4 * ceil32(return_data.size)) + 544] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_1031 + 32] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).liquidationIncentive() with:
                            gas gas_remaining wei
                    mem[_1036 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (6 * ceil32(return_data.size)) + 544] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_1032 + 32] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).exchangeRate() with:
                         gas gas_remaining wei
                    mem[_1036 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (7 * ceil32(return_data.size)) + 544] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_1032] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).safetyMarginSqrt() with:
                            gas gas_remaining wei
                    mem[_1036 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (8 * ceil32(return_data.size)) + 544] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _1036 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (10 * ceil32(return_data.size)) + 544
                    require return_data.size >= 32
                    mem[_1032 + 64] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).getPrices() with:
                         gas gas_remaining wei
                    mem[_1036 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (10 * ceil32(return_data.size)) + 544 len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _1036 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (11 * ceil32(return_data.size)) + 544
                    require return_data.size >= 64
                    mem[_1032 + 128] = ext_call.return_data[32]
                    mem[_1032 + 96] = ext_call.return_data[0]
                    s = 0
                    while s < cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]:
                        require cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)] == address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                        if s >= mem[_1036]:
                            revert with 'NH{q', 50
                        _6018 = mem[(32 * s) + _1036 + 32]
                        require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                        call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).accountLiquidity(address arg1) with:
                             gas gas_remaining wei
                            args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6041 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if mem[_6041]:
                            mem[_6018 + 96] = mem[_6041]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                            staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6087 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_6018] = mem[_6087]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_779))
                            staticcall address(_779).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6125 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_6018 + 32] = mem[_6125]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_785))
                            staticcall address(_785).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6165 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_6018 + 64] = mem[_6165]
                        else:
                            if mem[_6041 + 32] >= 0 and 0 < mem[_6041 + 32] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                revert with 'NH{q', 17
                            if mem[_6041 + 32] < 0 and 0 > mem[_6041 + 32] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            mem[_6018 + 96] = -mem[_6041 + 32]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                            staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6123 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_6018] = mem[_6123]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_779))
                            staticcall address(_779).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6163 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_6018 + 32] = mem[_6163]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_785))
                            staticcall address(_785).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6199 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_6018 + 64] = mem[_6199]
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        continue 
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                mem[_1036 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 544] = 0
                mem[_1036 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 576] = 0
                mem[_1036 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 608] = 0
                mem[_1036 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 640] = 0
                mem[var146002] = var146001
                if not var146003 - 1:
                    mem[_690 + 128] = _1036
                    require ext_code.size(address(_779))
                    call address(_779).accrueInterest() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(_779))
                    staticcall address(_779).borrowIndex() with:
                            gas gas_remaining wei
                    mem[_1036 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 672] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_1030] = ext_call.return_data[0]
                    require ext_code.size(address(_779))
                    staticcall address(_779).borrowRate() with:
                            gas gas_remaining wei
                    mem[_1036 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + ceil32(return_data.size) + 672] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_1030 + 32] = ext_call.return_data[0]
                    require ext_code.size(address(_785))
                    call address(_785).accrueInterest() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(_785))
                    staticcall address(_785).borrowIndex() with:
                            gas gas_remaining wei
                    mem[_1036 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 672] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_1031] = ext_call.return_data[0]
                    require ext_code.size(address(_785))
                    staticcall address(_785).borrowRate() with:
                            gas gas_remaining wei
                    mem[_1036 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (4 * ceil32(return_data.size)) + 672] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_1031 + 32] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).liquidationIncentive() with:
                            gas gas_remaining wei
                    mem[_1036 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (6 * ceil32(return_data.size)) + 672] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_1032 + 32] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).exchangeRate() with:
                         gas gas_remaining wei
                    mem[_1036 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (7 * ceil32(return_data.size)) + 672] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_1032] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).safetyMarginSqrt() with:
                            gas gas_remaining wei
                    mem[_1036 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (8 * ceil32(return_data.size)) + 672] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _1036 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (10 * ceil32(return_data.size)) + 672
                    require return_data.size >= 32
                    mem[_1032 + 64] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).getPrices() with:
                         gas gas_remaining wei
                    mem[_1036 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (10 * ceil32(return_data.size)) + 672 len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _1036 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (11 * ceil32(return_data.size)) + 672
                    require return_data.size >= 64
                    mem[_1032 + 128] = ext_call.return_data[32]
                    mem[_1032 + 96] = ext_call.return_data[0]
                    s = 0
                    while s < cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]:
                        require cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)] == address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                        if s >= mem[_1036]:
                            revert with 'NH{q', 50
                        _6970 = mem[(32 * s) + _1036 + 32]
                        require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                        call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).accountLiquidity(address arg1) with:
                             gas gas_remaining wei
                            args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6993 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if mem[_6993]:
                            mem[_6970 + 96] = mem[_6993]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                            staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7039 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_6970] = mem[_7039]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_779))
                            staticcall address(_779).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7077 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_6970 + 32] = mem[_7077]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_785))
                            staticcall address(_785).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7117 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_6970 + 64] = mem[_7117]
                        else:
                            if mem[_6993 + 32] >= 0 and 0 < mem[_6993 + 32] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                revert with 'NH{q', 17
                            if mem[_6993 + 32] < 0 and 0 > mem[_6993 + 32] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            mem[_6970 + 96] = -mem[_6993 + 32]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                            staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7075 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_6970] = mem[_7075]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_779))
                            staticcall address(_779).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7115 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_6970 + 32] = mem[_7115]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_785))
                            staticcall address(_785).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7151 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_6970 + 64] = mem[_7151]
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        continue 
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                mem[_1036 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 672] = 0
                mem[_1036 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 704] = 0
                mem[_1036 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 736] = 0
                mem[_1036 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 768] = 0
                mem[var150002] = var150001
                if not var150003 - 1:
                    mem[_690 + 128] = _1036
                    require ext_code.size(address(_779))
                    call address(_779).accrueInterest() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(_779))
                    staticcall address(_779).borrowIndex() with:
                            gas gas_remaining wei
                    mem[_1036 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 800] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_1030] = ext_call.return_data[0]
                    require ext_code.size(address(_779))
                    staticcall address(_779).borrowRate() with:
                            gas gas_remaining wei
                    mem[_1036 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + ceil32(return_data.size) + 800] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_1030 + 32] = ext_call.return_data[0]
                    require ext_code.size(address(_785))
                    call address(_785).accrueInterest() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(_785))
                    staticcall address(_785).borrowIndex() with:
                            gas gas_remaining wei
                    mem[_1036 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 800] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_1031] = ext_call.return_data[0]
                    require ext_code.size(address(_785))
                    staticcall address(_785).borrowRate() with:
                            gas gas_remaining wei
                    mem[_1036 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (4 * ceil32(return_data.size)) + 800] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_1031 + 32] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).liquidationIncentive() with:
                            gas gas_remaining wei
                    mem[_1036 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (6 * ceil32(return_data.size)) + 800] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_1032 + 32] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).exchangeRate() with:
                         gas gas_remaining wei
                    mem[_1036 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (7 * ceil32(return_data.size)) + 800] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_1032] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).safetyMarginSqrt() with:
                            gas gas_remaining wei
                    mem[_1036 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (8 * ceil32(return_data.size)) + 800] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _1036 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (10 * ceil32(return_data.size)) + 800
                    require return_data.size >= 32
                    mem[_1032 + 64] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).getPrices() with:
                         gas gas_remaining wei
                    mem[_1036 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (10 * ceil32(return_data.size)) + 800 len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _1036 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (11 * ceil32(return_data.size)) + 800
                    require return_data.size >= 64
                    mem[_1032 + 128] = ext_call.return_data[32]
                    mem[_1032 + 96] = ext_call.return_data[0]
                    s = 0
                    while s < cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]:
                        require cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)] == address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                        if s >= mem[_1036]:
                            revert with 'NH{q', 50
                        _7922 = mem[(32 * s) + _1036 + 32]
                        require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                        call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).accountLiquidity(address arg1) with:
                             gas gas_remaining wei
                            args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7945 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if mem[_7945]:
                            mem[_7922 + 96] = mem[_7945]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                            staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7991 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_7922] = mem[_7991]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_779))
                            staticcall address(_779).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8029 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_7922 + 32] = mem[_8029]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_785))
                            staticcall address(_785).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8069 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_7922 + 64] = mem[_8069]
                        else:
                            if mem[_7945 + 32] >= 0 and 0 < mem[_7945 + 32] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                revert with 'NH{q', 17
                            if mem[_7945 + 32] < 0 and 0 > mem[_7945 + 32] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            mem[_7922 + 96] = -mem[_7945 + 32]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                            staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8027 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_7922] = mem[_8027]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_779))
                            staticcall address(_779).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8067 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_7922 + 32] = mem[_8067]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_785))
                            staticcall address(_785).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8103 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_7922 + 64] = mem[_8103]
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        continue 
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                mem[_1036 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 800] = 0
                mem[_1036 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 832] = 0
                mem[_1036 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 864] = 0
                mem[_1036 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 896] = 0
                mem[var154002] = var154001
                if not var154003 - 1:
                    mem[_690 + 128] = _1036
                    require ext_code.size(address(_779))
                    call address(_779).accrueInterest() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(_779))
                    staticcall address(_779).borrowIndex() with:
                            gas gas_remaining wei
                    mem[_1036 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 928] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_1030] = ext_call.return_data[0]
                    require ext_code.size(address(_779))
                    staticcall address(_779).borrowRate() with:
                            gas gas_remaining wei
                    mem[_1036 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + ceil32(return_data.size) + 928] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_1030 + 32] = ext_call.return_data[0]
                    require ext_code.size(address(_785))
                    call address(_785).accrueInterest() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(_785))
                    staticcall address(_785).borrowIndex() with:
                            gas gas_remaining wei
                    mem[_1036 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 928] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_1031] = ext_call.return_data[0]
                    require ext_code.size(address(_785))
                    staticcall address(_785).borrowRate() with:
                            gas gas_remaining wei
                    mem[_1036 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (4 * ceil32(return_data.size)) + 928] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_1031 + 32] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).liquidationIncentive() with:
                            gas gas_remaining wei
                    mem[_1036 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (6 * ceil32(return_data.size)) + 928] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_1032 + 32] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).exchangeRate() with:
                         gas gas_remaining wei
                    mem[_1036 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (7 * ceil32(return_data.size)) + 928] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_1032] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).safetyMarginSqrt() with:
                            gas gas_remaining wei
                    mem[_1036 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (8 * ceil32(return_data.size)) + 928] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _1036 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (10 * ceil32(return_data.size)) + 928
                    require return_data.size >= 32
                    mem[_1032 + 64] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).getPrices() with:
                         gas gas_remaining wei
                    mem[_1036 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (10 * ceil32(return_data.size)) + 928 len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _1036 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (11 * ceil32(return_data.size)) + 928
                    require return_data.size >= 64
                    mem[_1032 + 128] = ext_call.return_data[32]
                    mem[_1032 + 96] = ext_call.return_data[0]
                    s = 0
                    while s < cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]:
                        require cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)] == address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                        if s >= mem[_1036]:
                            revert with 'NH{q', 50
                        _8874 = mem[(32 * s) + _1036 + 32]
                        require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                        call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).accountLiquidity(address arg1) with:
                             gas gas_remaining wei
                            args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8897 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if mem[_8897]:
                            mem[_8874 + 96] = mem[_8897]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                            staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8943 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_8874] = mem[_8943]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_779))
                            staticcall address(_779).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8981 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_8874 + 32] = mem[_8981]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_785))
                            staticcall address(_785).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9021 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_8874 + 64] = mem[_9021]
                        else:
                            if mem[_8897 + 32] >= 0 and 0 < mem[_8897 + 32] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                revert with 'NH{q', 17
                            if mem[_8897 + 32] < 0 and 0 > mem[_8897 + 32] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            mem[_8874 + 96] = -mem[_8897 + 32]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                            staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8979 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_8874] = mem[_8979]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_779))
                            staticcall address(_779).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9019 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_8874 + 32] = mem[_9019]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_785))
                            staticcall address(_785).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9055 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_8874 + 64] = mem[_9055]
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        continue 
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                mem[_1036 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 928] = 0
                mem[_1036 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 960] = 0
                mem[_1036 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 992] = 0
                mem[_1036 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 1024] = 0
                mem[var158002] = var158001
                if var158003 - 1:
                    if var162003 - 1:
                        # nil
                    else:
                        require ext_code.size(address(_779))
                        call address(_779).accrueInterest() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(address(_779))
                        staticcall address(_779).borrowIndex() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(_779))
                        staticcall address(_779).borrowRate() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(_785))
                        call address(_785).accrueInterest() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(address(_785))
                        staticcall address(_785).borrowIndex() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(_785))
                        staticcall address(_785).borrowRate() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                        staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).liquidationIncentive() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                        call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).exchangeRate() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                        staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).safetyMarginSqrt() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                        call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).getPrices() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        # nil
                else:
                    mem[_690 + 128] = _1036
                    require ext_code.size(address(_779))
                    call address(_779).accrueInterest() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(_779))
                    staticcall address(_779).borrowIndex() with:
                            gas gas_remaining wei
                    mem[_1036 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 1056] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_1030] = ext_call.return_data[0]
                    require ext_code.size(address(_779))
                    staticcall address(_779).borrowRate() with:
                            gas gas_remaining wei
                    mem[_1036 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + ceil32(return_data.size) + 1056] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_1030 + 32] = ext_call.return_data[0]
                    require ext_code.size(address(_785))
                    call address(_785).accrueInterest() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(_785))
                    staticcall address(_785).borrowIndex() with:
                            gas gas_remaining wei
                    mem[_1036 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 1056] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_1031] = ext_call.return_data[0]
                    require ext_code.size(address(_785))
                    staticcall address(_785).borrowRate() with:
                            gas gas_remaining wei
                    mem[_1036 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (4 * ceil32(return_data.size)) + 1056] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_1031 + 32] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).liquidationIncentive() with:
                            gas gas_remaining wei
                    mem[_1036 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (6 * ceil32(return_data.size)) + 1056] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_1032 + 32] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).exchangeRate() with:
                         gas gas_remaining wei
                    mem[_1036 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (7 * ceil32(return_data.size)) + 1056] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_1032] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).safetyMarginSqrt() with:
                            gas gas_remaining wei
                    mem[_1036 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (8 * ceil32(return_data.size)) + 1056] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _1036 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (10 * ceil32(return_data.size)) + 1056
                    require return_data.size >= 32
                    mem[_1032 + 64] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).getPrices() with:
                         gas gas_remaining wei
                    mem[_1036 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (10 * ceil32(return_data.size)) + 1056 len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _1036 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (11 * ceil32(return_data.size)) + 1056
                    require return_data.size >= 64
                    mem[_1032 + 128] = ext_call.return_data[32]
                    mem[_1032 + 96] = ext_call.return_data[0]
                    s = 0
                    while s < cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]:
                        require cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)] == address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                        if s >= mem[_1036]:
                            revert with 'NH{q', 50
                        _9826 = mem[(32 * s) + _1036 + 32]
                        require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                        call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).accountLiquidity(address arg1) with:
                             gas gas_remaining wei
                            args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9849 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if mem[_9849]:
                            mem[_9826 + 96] = mem[_9849]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                            staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9895 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_9826] = mem[_9895]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_779))
                            staticcall address(_779).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9933 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_9826 + 32] = mem[_9933]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_785))
                            staticcall address(_785).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9973 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_9826 + 64] = mem[_9973]
                        else:
                            if mem[_9849 + 32] >= 0 and 0 < mem[_9849 + 32] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                revert with 'NH{q', 17
                            if mem[_9849 + 32] < 0 and 0 > mem[_9849 + 32] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            mem[_9826 + 96] = -mem[_9849 + 32]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                            staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9931 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_9826] = mem[_9931]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_779))
                            staticcall address(_779).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9971 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_9826 + 32] = mem[_9971]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_785))
                            staticcall address(_785).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10007 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_9826 + 64] = mem[_10007]
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        continue 
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
        _689 = mem[64]
        mem[mem[64]] = uint32(block.number)
        mem[mem[64] + 32] = uint32(block.timestamp)
        mem[mem[64] + 64] = 96
        _694 = mem[96]
        mem[mem[64] + 96] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 128
        u = mem[64] + (32 * mem[96]) + 128
        while idx < _694:
            mem[t] = u + -_689 - 128
            _1434 = mem[s]
            _1439 = mem[mem[s]]
            mem[u] = mem[mem[mem[s]] + 28 len 4]
            _1441 = mem[_1439 + 32]
            mem[u + 32] = mem[mem[_1439 + 32]]
            mem[u + 64] = mem[_1441 + 32]
            mem[u + 96] = mem[_1441 + 92 len 4]
            mem[u + 128] = mem[_1441 + 124 len 4]
            mem[u + 160] = bool(mem[_1441 + 128])
            mem[u + 192] = bool(mem[_1441 + 160])
            mem[u + 224] = mem[_1439 + 64]
            mem[u + 256] = mem[_1439 + 96]
            _1450 = mem[_1439 + 128]
            mem[u + 288] = mem[mem[_1439 + 128]]
            mem[u + 320] = mem[_1450 + 32]
            mem[u + 352] = mem[_1450 + 92 len 4]
            mem[u + 384] = mem[_1439 + 160]
            _1457 = mem[_1434 + 32]
            mem[u + 416] = mem[mem[_1434 + 32]]
            mem[u + 448] = mem[_1457 + 32]
            mem[u + 480] = mem[_1457 + 64]
            mem[u + 512] = mem[_1457 + 96]
            mem[u + 544] = mem[_1457 + 128]
            _1463 = mem[_1434 + 64]
            mem[u + 576] = mem[mem[_1434 + 64]]
            mem[u + 608] = mem[_1463 + 32]
            _1466 = mem[_1434 + 96]
            mem[u + 640] = mem[mem[_1434 + 96]]
            mem[u + 672] = mem[_1466 + 32]
            _1469 = mem[_1434 + 128]
            mem[u + 704] = 736
            _1475 = mem[_1469]
            mem[u + 736] = mem[_1469]
            v = 0
            w = _1469 + 32
            x = u + 768
            while v < _1475:
                _2050 = mem[w]
                mem[x] = mem[mem[w]]
                mem[x + 32] = mem[_2050 + 32]
                mem[x + 64] = mem[_2050 + 64]
                mem[x + 96] = mem[_2050 + 96]
                v = v + 1
                w = w + 32
                x = x + 128
                continue 
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = u + (128 * _1475) + 768
            continue 
    else:
        mem[(32 * ('cd', 36).length) + 288] = 0
        mem[(32 * ('cd', 36).length) + 480] = 0
        mem[(32 * ('cd', 36).length) + 512] = 0
        mem[(32 * ('cd', 36).length) + 544] = 0
        mem[(32 * ('cd', 36).length) + 576] = 0
        mem[(32 * ('cd', 36).length) + 608] = 0
        mem[(32 * ('cd', 36).length) + 640] = 0
        mem[(32 * ('cd', 36).length) + 320] = (32 * ('cd', 36).length) + 480
        mem[(32 * ('cd', 36).length) + 352] = 0
        mem[(32 * ('cd', 36).length) + 384] = 0
        mem[(32 * ('cd', 36).length) + 672] = 0
        mem[(32 * ('cd', 36).length) + 704] = 0
        mem[(32 * ('cd', 36).length) + 736] = 0
        mem[var35002] = var35001
        mem[var35002 + 32] = 0
        mem[var35005] = var35003
        mem[(32 * ('cd', 36).length) + 768] = 0
        mem[(32 * ('cd', 36).length) + 800] = 0
        mem[(32 * ('cd', 36).length) + 832] = 0
        mem[(32 * ('cd', 36).length) + 864] = 0
        mem[(32 * ('cd', 36).length) + 896] = 0
        mem[var35005 + 32] = (32 * ('cd', 36).length) + 768
        mem[64] = (32 * ('cd', 36).length) + 992
        mem[(32 * ('cd', 36).length) + 928] = 0
        mem[(32 * ('cd', 36).length) + 960] = 0
        mem[var35005 + 64] = (32 * ('cd', 36).length) + 928
        mem[64] = (32 * ('cd', 36).length) + 1056
        mem[(32 * ('cd', 36).length) + 992] = 0
        mem[(32 * ('cd', 36).length) + 1024] = 0
        mem[var35005 + 96] = (32 * ('cd', 36).length) + 992
        mem[var35005 + 128] = 96
        mem[var35008] = var35006
        s = var35003
        s = var35005
        s = var35006
        s = var35008
        idx = var35009
        while idx - 1:
            _3306 = mem[64]
            mem[64] = mem[64] + 160
            _3307 = mem[64]
            mem[64] = mem[64] + 192
            mem[_3307] = 0
            _3308 = mem[64]
            mem[64] = mem[64] + 192
            mem[_3308] = 0
            mem[_3308 + 32] = 0
            mem[_3308 + 64] = 0
            mem[_3308 + 96] = 0
            mem[_3308 + 128] = 0
            mem[_3308 + 160] = 0
            mem[_3307 + 32] = _3308
            mem[_3307 + 64] = 0
            mem[_3307 + 96] = 0
            _3309 = mem[64]
            mem[64] = mem[64] + 96
            mem[_3309] = 0
            mem[_3309 + 32] = 0
            mem[_3309 + 64] = 0
            mem[_3307 + 128] = _3309
            mem[_3307 + 160] = 0
            mem[_3306] = _3307
            mem[64] = mem[64] + 160
            mem[(32 * ('cd', 36).length) + 768] = 0
            mem[(32 * ('cd', 36).length) + 800] = 0
            mem[(32 * ('cd', 36).length) + 832] = 0
            mem[(32 * ('cd', 36).length) + 864] = 0
            mem[(32 * ('cd', 36).length) + 896] = 0
            mem[_3306 + 32] = (32 * ('cd', 36).length) + 768
            mem[64] = mem[64] + 64
            mem[(32 * ('cd', 36).length) + 928] = 0
            mem[(32 * ('cd', 36).length) + 960] = 0
            mem[_3306 + 64] = (32 * ('cd', 36).length) + 928
            mem[64] = mem[64] + 64
            mem[(32 * ('cd', 36).length) + 992] = 0
            mem[(32 * ('cd', 36).length) + 1024] = 0
            mem[_3306 + 96] = (32 * ('cd', 36).length) + 992
            mem[_3306 + 128] = 96
            mem[s + 32] = _3306
            s = _3307
            s = _3306
            s = _3306
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < ('cd', 36).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _3939 = mem[(32 * idx) + 128]
            if idx >= ('cd', 36).length:
                revert with 'NH{q', 50
            require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 99
            require cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)] == address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)])
            if idx >= ('cd', 36).length:
                revert with 'NH{q', 50
            require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 99
            require cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] < calldata.size + -cd[(cd[36] + (32 * idx) + 36)] + -cd[36] - 67
            require cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)] <= test266151307()
            require cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68 <= calldata.size - (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)])
            require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
            staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).borrowable0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _4050 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _4057 = mem[_4050]
            require mem[_4050] == mem[_4050 + 12 len 20]
            require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
            staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).borrowable1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _4094 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _4099 = mem[_4094]
            require mem[_4094] == mem[_4094 + 12 len 20]
            if not address(cd[4]):
                _4110 = mem[_3939 + 64]
                _4111 = mem[_3939 + 96]
                _4112 = mem[_3939 + 32]
                if cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)] > test266151307():
                    revert with 'NH{q', 65
                _4115 = mem[64]
                if not cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]:
                    mem[_3939 + 128] = mem[64]
                    require ext_code.size(address(_4057))
                    call address(_4057).accrueInterest() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(_4057))
                    staticcall address(_4057).borrowIndex() with:
                            gas gas_remaining wei
                    mem[mem[64] + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 32] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_4110] = ext_call.return_data[0]
                    require ext_code.size(address(_4057))
                    staticcall address(_4057).borrowRate() with:
                            gas gas_remaining wei
                    mem[_4115 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_4110 + 32] = ext_call.return_data[0]
                    require ext_code.size(address(_4099))
                    call address(_4099).accrueInterest() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(_4099))
                    staticcall address(_4099).borrowIndex() with:
                            gas gas_remaining wei
                    mem[_4115 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 32] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_4111] = ext_call.return_data[0]
                    require ext_code.size(address(_4099))
                    staticcall address(_4099).borrowRate() with:
                            gas gas_remaining wei
                    mem[_4115 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (4 * ceil32(return_data.size)) + 32] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_4111 + 32] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).liquidationIncentive() with:
                            gas gas_remaining wei
                    mem[_4115 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (6 * ceil32(return_data.size)) + 32] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_4112 + 32] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).exchangeRate() with:
                         gas gas_remaining wei
                    mem[_4115 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (7 * ceil32(return_data.size)) + 32] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_4112] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).safetyMarginSqrt() with:
                            gas gas_remaining wei
                    mem[_4115 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (8 * ceil32(return_data.size)) + 32] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _4115 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (10 * ceil32(return_data.size)) + 32
                    require return_data.size >= 32
                    mem[_4112 + 64] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).getPrices() with:
                         gas gas_remaining wei
                    mem[_4115 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (10 * ceil32(return_data.size)) + 32 len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _4115 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (11 * ceil32(return_data.size)) + 32
                    require return_data.size >= 64
                    mem[_4112 + 128] = ext_call.return_data[32]
                    mem[_4112 + 96] = ext_call.return_data[0]
                    s = 0
                    while s < cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]:
                        require cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)] == address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                        if s >= mem[_4115]:
                            revert with 'NH{q', 50
                        _4585 = mem[(32 * s) + _4115 + 32]
                        require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                        call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).accountLiquidity(address arg1) with:
                             gas gas_remaining wei
                            args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4605 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if mem[_4605]:
                            mem[_4585 + 96] = mem[_4605]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                            staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4657 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_4585] = mem[_4657]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_4057))
                            staticcall address(_4057).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4695 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_4585 + 32] = mem[_4695]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_4099))
                            staticcall address(_4099).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4735 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_4585 + 64] = mem[_4735]
                        else:
                            if mem[_4605 + 32] >= 0 and 0 < mem[_4605 + 32] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                revert with 'NH{q', 17
                            if mem[_4605 + 32] < 0 and 0 > mem[_4605 + 32] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            mem[_4585 + 96] = -mem[_4605 + 32]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                            staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4687 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_4585] = mem[_4687]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_4057))
                            staticcall address(_4057).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4727 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_4585 + 32] = mem[_4727]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_4099))
                            staticcall address(_4099).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4763 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_4585 + 64] = mem[_4763]
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        continue 
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                mem[mem[64] + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 32] = 0
                mem[mem[64] + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 64] = 0
                mem[mem[64] + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 96] = 0
                mem[mem[64] + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 128] = 0
                mem[var83002] = var83001
                if not var83003 - 1:
                    mem[_3939 + 128] = _4115
                    require ext_code.size(address(_4057))
                    call address(_4057).accrueInterest() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(_4057))
                    staticcall address(_4057).borrowIndex() with:
                            gas gas_remaining wei
                    mem[_4115 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_4110] = ext_call.return_data[0]
                    require ext_code.size(address(_4057))
                    staticcall address(_4057).borrowRate() with:
                            gas gas_remaining wei
                    mem[_4115 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + ceil32(return_data.size) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_4110 + 32] = ext_call.return_data[0]
                    require ext_code.size(address(_4099))
                    call address(_4099).accrueInterest() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(_4099))
                    staticcall address(_4099).borrowIndex() with:
                            gas gas_remaining wei
                    mem[_4115 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_4111] = ext_call.return_data[0]
                    require ext_code.size(address(_4099))
                    staticcall address(_4099).borrowRate() with:
                            gas gas_remaining wei
                    mem[_4115 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (4 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_4111 + 32] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).liquidationIncentive() with:
                            gas gas_remaining wei
                    mem[_4115 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (6 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_4112 + 32] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).exchangeRate() with:
                         gas gas_remaining wei
                    mem[_4115 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (7 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_4112] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).safetyMarginSqrt() with:
                            gas gas_remaining wei
                    mem[_4115 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (8 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _4115 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (10 * ceil32(return_data.size)) + 160
                    require return_data.size >= 32
                    mem[_4112 + 64] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).getPrices() with:
                         gas gas_remaining wei
                    mem[_4115 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (10 * ceil32(return_data.size)) + 160 len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _4115 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (11 * ceil32(return_data.size)) + 160
                    require return_data.size >= 64
                    mem[_4112 + 128] = ext_call.return_data[32]
                    mem[_4112 + 96] = ext_call.return_data[0]
                    s = 0
                    while s < cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]:
                        require cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)] == address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                        if s >= mem[_4115]:
                            revert with 'NH{q', 50
                        _5543 = mem[(32 * s) + _4115 + 32]
                        require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                        call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).accountLiquidity(address arg1) with:
                             gas gas_remaining wei
                            args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5563 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if mem[_5563]:
                            mem[_5543 + 96] = mem[_5563]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                            staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5614 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_5543] = mem[_5614]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_4057))
                            staticcall address(_4057).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5652 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_5543 + 32] = mem[_5652]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_4099))
                            staticcall address(_4099).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5692 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_5543 + 64] = mem[_5692]
                        else:
                            if mem[_5563 + 32] >= 0 and 0 < mem[_5563 + 32] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                revert with 'NH{q', 17
                            if mem[_5563 + 32] < 0 and 0 > mem[_5563 + 32] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            mem[_5543 + 96] = -mem[_5563 + 32]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                            staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5645 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_5543] = mem[_5645]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_4057))
                            staticcall address(_4057).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5685 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_5543 + 32] = mem[_5685]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_4099))
                            staticcall address(_4099).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5721 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_5543 + 64] = mem[_5721]
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        continue 
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                mem[_4115 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 160] = 0
                mem[_4115 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 192] = 0
                mem[_4115 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 224] = 0
                mem[_4115 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 256] = 0
                mem[var87002] = var87001
                if not var87003 - 1:
                    mem[_3939 + 128] = _4115
                    require ext_code.size(address(_4057))
                    call address(_4057).accrueInterest() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(_4057))
                    staticcall address(_4057).borrowIndex() with:
                            gas gas_remaining wei
                    mem[_4115 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 288] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_4110] = ext_call.return_data[0]
                    require ext_code.size(address(_4057))
                    staticcall address(_4057).borrowRate() with:
                            gas gas_remaining wei
                    mem[_4115 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + ceil32(return_data.size) + 288] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_4110 + 32] = ext_call.return_data[0]
                    require ext_code.size(address(_4099))
                    call address(_4099).accrueInterest() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(_4099))
                    staticcall address(_4099).borrowIndex() with:
                            gas gas_remaining wei
                    mem[_4115 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_4111] = ext_call.return_data[0]
                    require ext_code.size(address(_4099))
                    staticcall address(_4099).borrowRate() with:
                            gas gas_remaining wei
                    mem[_4115 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (4 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_4111 + 32] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).liquidationIncentive() with:
                            gas gas_remaining wei
                    mem[_4115 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (6 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_4112 + 32] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).exchangeRate() with:
                         gas gas_remaining wei
                    mem[_4115 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (7 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_4112] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).safetyMarginSqrt() with:
                            gas gas_remaining wei
                    mem[_4115 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (8 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _4115 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (10 * ceil32(return_data.size)) + 288
                    require return_data.size >= 32
                    mem[_4112 + 64] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).getPrices() with:
                         gas gas_remaining wei
                    mem[_4115 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (10 * ceil32(return_data.size)) + 288 len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _4115 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (11 * ceil32(return_data.size)) + 288
                    require return_data.size >= 64
                    mem[_4112 + 128] = ext_call.return_data[32]
                    mem[_4112 + 96] = ext_call.return_data[0]
                    s = 0
                    while s < cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]:
                        require cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)] == address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                        if s >= mem[_4115]:
                            revert with 'NH{q', 50
                        _6495 = mem[(32 * s) + _4115 + 32]
                        require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                        call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).accountLiquidity(address arg1) with:
                             gas gas_remaining wei
                            args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6515 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if mem[_6515]:
                            mem[_6495 + 96] = mem[_6515]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                            staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6566 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_6495] = mem[_6566]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_4057))
                            staticcall address(_4057).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6604 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_6495 + 32] = mem[_6604]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_4099))
                            staticcall address(_4099).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6644 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_6495 + 64] = mem[_6644]
                        else:
                            if mem[_6515 + 32] >= 0 and 0 < mem[_6515 + 32] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                revert with 'NH{q', 17
                            if mem[_6515 + 32] < 0 and 0 > mem[_6515 + 32] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            mem[_6495 + 96] = -mem[_6515 + 32]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                            staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6597 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_6495] = mem[_6597]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_4057))
                            staticcall address(_4057).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6637 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_6495 + 32] = mem[_6637]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_4099))
                            staticcall address(_4099).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6673 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_6495 + 64] = mem[_6673]
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        continue 
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                mem[_4115 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 288] = 0
                mem[_4115 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 320] = 0
                mem[_4115 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 352] = 0
                mem[_4115 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 384] = 0
                mem[var91002] = var91001
                if not var91003 - 1:
                    mem[_3939 + 128] = _4115
                    require ext_code.size(address(_4057))
                    call address(_4057).accrueInterest() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(_4057))
                    staticcall address(_4057).borrowIndex() with:
                            gas gas_remaining wei
                    mem[_4115 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 416] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_4110] = ext_call.return_data[0]
                    require ext_code.size(address(_4057))
                    staticcall address(_4057).borrowRate() with:
                            gas gas_remaining wei
                    mem[_4115 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + ceil32(return_data.size) + 416] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_4110 + 32] = ext_call.return_data[0]
                    require ext_code.size(address(_4099))
                    call address(_4099).accrueInterest() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(_4099))
                    staticcall address(_4099).borrowIndex() with:
                            gas gas_remaining wei
                    mem[_4115 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 416] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_4111] = ext_call.return_data[0]
                    require ext_code.size(address(_4099))
                    staticcall address(_4099).borrowRate() with:
                            gas gas_remaining wei
                    mem[_4115 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (4 * ceil32(return_data.size)) + 416] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_4111 + 32] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).liquidationIncentive() with:
                            gas gas_remaining wei
                    mem[_4115 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (6 * ceil32(return_data.size)) + 416] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_4112 + 32] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).exchangeRate() with:
                         gas gas_remaining wei
                    mem[_4115 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (7 * ceil32(return_data.size)) + 416] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_4112] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).safetyMarginSqrt() with:
                            gas gas_remaining wei
                    mem[_4115 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (8 * ceil32(return_data.size)) + 416] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _4115 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (10 * ceil32(return_data.size)) + 416
                    require return_data.size >= 32
                    mem[_4112 + 64] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).getPrices() with:
                         gas gas_remaining wei
                    mem[_4115 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (10 * ceil32(return_data.size)) + 416 len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _4115 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (11 * ceil32(return_data.size)) + 416
                    require return_data.size >= 64
                    mem[_4112 + 128] = ext_call.return_data[32]
                    mem[_4112 + 96] = ext_call.return_data[0]
                    s = 0
                    while s < cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]:
                        require cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)] == address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                        if s >= mem[_4115]:
                            revert with 'NH{q', 50
                        _7447 = mem[(32 * s) + _4115 + 32]
                        require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                        call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).accountLiquidity(address arg1) with:
                             gas gas_remaining wei
                            args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7467 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if mem[_7467]:
                            mem[_7447 + 96] = mem[_7467]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                            staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7518 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_7447] = mem[_7518]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_4057))
                            staticcall address(_4057).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7556 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_7447 + 32] = mem[_7556]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_4099))
                            staticcall address(_4099).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7596 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_7447 + 64] = mem[_7596]
                        else:
                            if mem[_7467 + 32] >= 0 and 0 < mem[_7467 + 32] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                revert with 'NH{q', 17
                            if mem[_7467 + 32] < 0 and 0 > mem[_7467 + 32] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            mem[_7447 + 96] = -mem[_7467 + 32]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                            staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7549 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_7447] = mem[_7549]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_4057))
                            staticcall address(_4057).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7589 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_7447 + 32] = mem[_7589]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_4099))
                            staticcall address(_4099).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7625 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_7447 + 64] = mem[_7625]
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        continue 
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                mem[_4115 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 416] = 0
                mem[_4115 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 448] = 0
                mem[_4115 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 480] = 0
                mem[_4115 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 512] = 0
                mem[var95002] = var95001
                if not var95003 - 1:
                    mem[_3939 + 128] = _4115
                    require ext_code.size(address(_4057))
                    call address(_4057).accrueInterest() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(_4057))
                    staticcall address(_4057).borrowIndex() with:
                            gas gas_remaining wei
                    mem[_4115 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 544] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_4110] = ext_call.return_data[0]
                    require ext_code.size(address(_4057))
                    staticcall address(_4057).borrowRate() with:
                            gas gas_remaining wei
                    mem[_4115 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + ceil32(return_data.size) + 544] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_4110 + 32] = ext_call.return_data[0]
                    require ext_code.size(address(_4099))
                    call address(_4099).accrueInterest() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(_4099))
                    staticcall address(_4099).borrowIndex() with:
                            gas gas_remaining wei
                    mem[_4115 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 544] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_4111] = ext_call.return_data[0]
                    require ext_code.size(address(_4099))
                    staticcall address(_4099).borrowRate() with:
                            gas gas_remaining wei
                    mem[_4115 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (4 * ceil32(return_data.size)) + 544] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_4111 + 32] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).liquidationIncentive() with:
                            gas gas_remaining wei
                    mem[_4115 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (6 * ceil32(return_data.size)) + 544] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_4112 + 32] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).exchangeRate() with:
                         gas gas_remaining wei
                    mem[_4115 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (7 * ceil32(return_data.size)) + 544] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_4112] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).safetyMarginSqrt() with:
                            gas gas_remaining wei
                    mem[_4115 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (8 * ceil32(return_data.size)) + 544] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _4115 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (10 * ceil32(return_data.size)) + 544
                    require return_data.size >= 32
                    mem[_4112 + 64] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).getPrices() with:
                         gas gas_remaining wei
                    mem[_4115 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (10 * ceil32(return_data.size)) + 544 len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _4115 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (11 * ceil32(return_data.size)) + 544
                    require return_data.size >= 64
                    mem[_4112 + 128] = ext_call.return_data[32]
                    mem[_4112 + 96] = ext_call.return_data[0]
                    s = 0
                    while s < cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]:
                        require cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)] == address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                        if s >= mem[_4115]:
                            revert with 'NH{q', 50
                        _8399 = mem[(32 * s) + _4115 + 32]
                        require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                        call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).accountLiquidity(address arg1) with:
                             gas gas_remaining wei
                            args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8419 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if mem[_8419]:
                            mem[_8399 + 96] = mem[_8419]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                            staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8470 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_8399] = mem[_8470]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_4057))
                            staticcall address(_4057).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8508 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_8399 + 32] = mem[_8508]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_4099))
                            staticcall address(_4099).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8548 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_8399 + 64] = mem[_8548]
                        else:
                            if mem[_8419 + 32] >= 0 and 0 < mem[_8419 + 32] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                revert with 'NH{q', 17
                            if mem[_8419 + 32] < 0 and 0 > mem[_8419 + 32] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            mem[_8399 + 96] = -mem[_8419 + 32]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                            staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8501 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_8399] = mem[_8501]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_4057))
                            staticcall address(_4057).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8541 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_8399 + 32] = mem[_8541]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_4099))
                            staticcall address(_4099).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8577 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_8399 + 64] = mem[_8577]
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        continue 
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                mem[_4115 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 544] = 0
                mem[_4115 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 576] = 0
                mem[_4115 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 608] = 0
                mem[_4115 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 640] = 0
                mem[var99002] = var99001
                if not var99003 - 1:
                    mem[_3939 + 128] = _4115
                    require ext_code.size(address(_4057))
                    call address(_4057).accrueInterest() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(_4057))
                    staticcall address(_4057).borrowIndex() with:
                            gas gas_remaining wei
                    mem[_4115 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 672] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_4110] = ext_call.return_data[0]
                    require ext_code.size(address(_4057))
                    staticcall address(_4057).borrowRate() with:
                            gas gas_remaining wei
                    mem[_4115 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + ceil32(return_data.size) + 672] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_4110 + 32] = ext_call.return_data[0]
                    require ext_code.size(address(_4099))
                    call address(_4099).accrueInterest() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(_4099))
                    staticcall address(_4099).borrowIndex() with:
                            gas gas_remaining wei
                    mem[_4115 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 672] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_4111] = ext_call.return_data[0]
                    require ext_code.size(address(_4099))
                    staticcall address(_4099).borrowRate() with:
                            gas gas_remaining wei
                    mem[_4115 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (4 * ceil32(return_data.size)) + 672] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_4111 + 32] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).liquidationIncentive() with:
                            gas gas_remaining wei
                    mem[_4115 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (6 * ceil32(return_data.size)) + 672] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_4112 + 32] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).exchangeRate() with:
                         gas gas_remaining wei
                    mem[_4115 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (7 * ceil32(return_data.size)) + 672] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_4112] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).safetyMarginSqrt() with:
                            gas gas_remaining wei
                    mem[_4115 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (8 * ceil32(return_data.size)) + 672] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _4115 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (10 * ceil32(return_data.size)) + 672
                    require return_data.size >= 32
                    mem[_4112 + 64] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).getPrices() with:
                         gas gas_remaining wei
                    mem[_4115 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (10 * ceil32(return_data.size)) + 672 len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _4115 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (11 * ceil32(return_data.size)) + 672
                    require return_data.size >= 64
                    mem[_4112 + 128] = ext_call.return_data[32]
                    mem[_4112 + 96] = ext_call.return_data[0]
                    s = 0
                    while s < cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]:
                        require cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)] == address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                        if s >= mem[_4115]:
                            revert with 'NH{q', 50
                        _9351 = mem[(32 * s) + _4115 + 32]
                        require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                        call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).accountLiquidity(address arg1) with:
                             gas gas_remaining wei
                            args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9371 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if mem[_9371]:
                            mem[_9351 + 96] = mem[_9371]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                            staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9422 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_9351] = mem[_9422]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_4057))
                            staticcall address(_4057).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9460 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_9351 + 32] = mem[_9460]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_4099))
                            staticcall address(_4099).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9500 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_9351 + 64] = mem[_9500]
                        else:
                            if mem[_9371 + 32] >= 0 and 0 < mem[_9371 + 32] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                revert with 'NH{q', 17
                            if mem[_9371 + 32] < 0 and 0 > mem[_9371 + 32] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            mem[_9351 + 96] = -mem[_9371 + 32]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                            staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9453 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_9351] = mem[_9453]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_4057))
                            staticcall address(_4057).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9493 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_9351 + 32] = mem[_9493]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_4099))
                            staticcall address(_4099).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9529 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_9351 + 64] = mem[_9529]
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        continue 
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                mem[_4115 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 672] = 0
                mem[_4115 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 704] = 0
                mem[_4115 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 736] = 0
                mem[_4115 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 768] = 0
                mem[var103002] = var103001
                if var103003 - 1:
                    # nil
                else:
                    mem[_3939 + 128] = _4115
                    require ext_code.size(address(_4057))
                    call address(_4057).accrueInterest() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(_4057))
                    staticcall address(_4057).borrowIndex() with:
                            gas gas_remaining wei
                    mem[_4115 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 800] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_4110] = ext_call.return_data[0]
                    require ext_code.size(address(_4057))
                    staticcall address(_4057).borrowRate() with:
                            gas gas_remaining wei
                    mem[_4115 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + ceil32(return_data.size) + 800] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_4110 + 32] = ext_call.return_data[0]
                    require ext_code.size(address(_4099))
                    call address(_4099).accrueInterest() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(_4099))
                    staticcall address(_4099).borrowIndex() with:
                            gas gas_remaining wei
                    mem[_4115 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 800] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_4111] = ext_call.return_data[0]
                    require ext_code.size(address(_4099))
                    staticcall address(_4099).borrowRate() with:
                            gas gas_remaining wei
                    mem[_4115 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (4 * ceil32(return_data.size)) + 800] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_4111 + 32] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).liquidationIncentive() with:
                            gas gas_remaining wei
                    mem[_4115 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (6 * ceil32(return_data.size)) + 800] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_4112 + 32] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).exchangeRate() with:
                         gas gas_remaining wei
                    mem[_4115 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (7 * ceil32(return_data.size)) + 800] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_4112] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).safetyMarginSqrt() with:
                            gas gas_remaining wei
                    mem[_4115 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (8 * ceil32(return_data.size)) + 800] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _4115 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (10 * ceil32(return_data.size)) + 800
                    require return_data.size >= 32
                    mem[_4112 + 64] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).getPrices() with:
                         gas gas_remaining wei
                    mem[_4115 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (10 * ceil32(return_data.size)) + 800 len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _4115 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (11 * ceil32(return_data.size)) + 800
                    require return_data.size >= 64
                    mem[_4112 + 128] = ext_call.return_data[32]
                    mem[_4112 + 96] = ext_call.return_data[0]
                    s = 0
                    while s < cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]:
                        require cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)] == address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                        if s >= mem[_4115]:
                            revert with 'NH{q', 50
                        _10303 = mem[(32 * s) + _4115 + 32]
                        require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                        call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).accountLiquidity(address arg1) with:
                             gas gas_remaining wei
                            args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10323 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if mem[_10323]:
                            mem[_10303 + 96] = mem[_10323]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                            staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10374 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_10303] = mem[_10374]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_4057))
                            staticcall address(_4057).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10412 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_10303 + 32] = mem[_10412]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_4099))
                            staticcall address(_4099).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10452 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_10303 + 64] = mem[_10452]
                        else:
                            if mem[_10323 + 32] >= 0 and 0 < mem[_10323 + 32] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                revert with 'NH{q', 17
                            if mem[_10323 + 32] < 0 and 0 > mem[_10323 + 32] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            mem[_10303 + 96] = -mem[_10323 + 32]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                            staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10405 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_10303] = mem[_10405]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_4057))
                            staticcall address(_4057).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10445 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_10303 + 32] = mem[_10445]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_4099))
                            staticcall address(_4099).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10481 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_10303 + 64] = mem[_10481]
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        continue 
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
            else:
                require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).underlying() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4120 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _4128 = mem[_4120]
                require mem[_4120] == mem[_4120 + 12 len 20]
                _4141 = mem[_3939]
                require ext_code.size(address(cd[4]))
                staticcall address(cd[4]).MIN_T() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4147 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_4147] == mem[_4147 + 28 len 4]
                mem[_4141] = mem[_4147 + 28 len 4]
                _4159 = mem[_4141 + 32]
                require ext_code.size(address(cd[4]))
                staticcall address(cd[4]).getPair(address arg1) with:
                        gas gas_remaining wei
                       args address(_4128)
                mem[mem[64] len 192] = ext_call.return_data[0 len 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4172 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 192
                _4178 = mem[_4172]
                _4179 = mem[_4172 + 32]
                _4184 = mem[_4172 + 64]
                require mem[_4172 + 64] == mem[_4172 + 92 len 4]
                _4192 = mem[_4172 + 96]
                require mem[_4172 + 96] == mem[_4172 + 124 len 4]
                _4203 = mem[_4172 + 128]
                require mem[_4172 + 128] == bool(mem[_4172 + 128])
                require mem[_4172 + 160] == bool(mem[_4172 + 160])
                mem[_4159 + 160] = bool(mem[_4172 + 160])
                mem[_4159 + 128] = bool(_4203)
                mem[_4159 + 96] = uint32(_4192)
                mem[_4159 + 64] = uint32(_4184)
                mem[_4159 + 32] = _4179
                mem[_4159] = _4178
                _4228 = mem[_4141 + 128]
                require ext_code.size(address(_4128))
                staticcall address(_4128).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4239 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _4256 = mem[_4239]
                require mem[_4239] == mem[_4239 + 18 len 14]
                _4273 = mem[_4239 + 32]
                require mem[_4239 + 32] == mem[_4239 + 50 len 14]
                require mem[_4239 + 64] == mem[_4239 + 92 len 4]
                mem[_4228 + 64] = mem[_4239 + 92 len 4]
                mem[_4228 + 32] = Mask(112, 0, _4273)
                mem[_4228] = Mask(112, 0, _4256)
                require ext_code.size(address(_4128))
                staticcall address(_4128).totalSupply() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4291 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[_4141 + 160] = mem[_4291]
                require ext_code.size(address(_4128))
                staticcall address(_4128).price0CumulativeLast() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4295 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[_4141 + 64] = mem[_4295]
                require ext_code.size(address(_4128))
                staticcall address(_4128).price1CumulativeLast() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4305 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[_4141 + 96] = mem[_4305]
                _4313 = mem[_3939 + 64]
                _4314 = mem[_3939 + 96]
                _4315 = mem[_3939 + 32]
                if cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)] > test266151307():
                    revert with 'NH{q', 65
                _4317 = mem[64]
                if not cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]:
                    mem[_3939 + 128] = mem[64]
                    require ext_code.size(address(_4057))
                    call address(_4057).accrueInterest() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(_4057))
                    staticcall address(_4057).borrowIndex() with:
                            gas gas_remaining wei
                    mem[mem[64] + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 32] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_4313] = ext_call.return_data[0]
                    require ext_code.size(address(_4057))
                    staticcall address(_4057).borrowRate() with:
                            gas gas_remaining wei
                    mem[_4317 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + ceil32(return_data.size) + 32] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_4313 + 32] = ext_call.return_data[0]
                    require ext_code.size(address(_4099))
                    call address(_4099).accrueInterest() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(_4099))
                    staticcall address(_4099).borrowIndex() with:
                            gas gas_remaining wei
                    mem[_4317 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 32] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_4314] = ext_call.return_data[0]
                    require ext_code.size(address(_4099))
                    staticcall address(_4099).borrowRate() with:
                            gas gas_remaining wei
                    mem[_4317 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (4 * ceil32(return_data.size)) + 32] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_4314 + 32] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).liquidationIncentive() with:
                            gas gas_remaining wei
                    mem[_4317 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (6 * ceil32(return_data.size)) + 32] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_4315 + 32] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).exchangeRate() with:
                         gas gas_remaining wei
                    mem[_4317 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (7 * ceil32(return_data.size)) + 32] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_4315] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).safetyMarginSqrt() with:
                            gas gas_remaining wei
                    mem[_4317 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (8 * ceil32(return_data.size)) + 32] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _4317 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (10 * ceil32(return_data.size)) + 32
                    require return_data.size >= 32
                    mem[_4315 + 64] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).getPrices() with:
                         gas gas_remaining wei
                    mem[_4317 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (10 * ceil32(return_data.size)) + 32 len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _4317 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (11 * ceil32(return_data.size)) + 32
                    require return_data.size >= 64
                    mem[_4315 + 128] = ext_call.return_data[32]
                    mem[_4315 + 96] = ext_call.return_data[0]
                    s = 0
                    while s < cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]:
                        require cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)] == address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                        if s >= mem[_4317]:
                            revert with 'NH{q', 50
                        _4588 = mem[(32 * s) + _4317 + 32]
                        require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                        call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).accountLiquidity(address arg1) with:
                             gas gas_remaining wei
                            args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4607 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if mem[_4607]:
                            mem[_4588 + 96] = mem[_4607]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                            staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4658 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_4588] = mem[_4658]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_4057))
                            staticcall address(_4057).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4696 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_4588 + 32] = mem[_4696]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_4099))
                            staticcall address(_4099).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4736 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_4588 + 64] = mem[_4736]
                        else:
                            if mem[_4607 + 32] >= 0 and 0 < mem[_4607 + 32] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                revert with 'NH{q', 17
                            if mem[_4607 + 32] < 0 and 0 > mem[_4607 + 32] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            mem[_4588 + 96] = -mem[_4607 + 32]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                            staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4689 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_4588] = mem[_4689]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_4057))
                            staticcall address(_4057).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4729 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_4588 + 32] = mem[_4729]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_4099))
                            staticcall address(_4099).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4765 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_4588 + 64] = mem[_4765]
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        continue 
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                mem[mem[64] + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 32] = 0
                mem[mem[64] + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 64] = 0
                mem[mem[64] + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 96] = 0
                mem[mem[64] + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 128] = 0
                mem[var146002] = var146001
                if not var146003 - 1:
                    mem[_3939 + 128] = _4317
                    require ext_code.size(address(_4057))
                    call address(_4057).accrueInterest() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(_4057))
                    staticcall address(_4057).borrowIndex() with:
                            gas gas_remaining wei
                    mem[_4317 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_4313] = ext_call.return_data[0]
                    require ext_code.size(address(_4057))
                    staticcall address(_4057).borrowRate() with:
                            gas gas_remaining wei
                    mem[_4317 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + ceil32(return_data.size) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_4313 + 32] = ext_call.return_data[0]
                    require ext_code.size(address(_4099))
                    call address(_4099).accrueInterest() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(_4099))
                    staticcall address(_4099).borrowIndex() with:
                            gas gas_remaining wei
                    mem[_4317 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_4314] = ext_call.return_data[0]
                    require ext_code.size(address(_4099))
                    staticcall address(_4099).borrowRate() with:
                            gas gas_remaining wei
                    mem[_4317 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (4 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_4314 + 32] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).liquidationIncentive() with:
                            gas gas_remaining wei
                    mem[_4317 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (6 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_4315 + 32] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).exchangeRate() with:
                         gas gas_remaining wei
                    mem[_4317 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (7 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_4315] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).safetyMarginSqrt() with:
                            gas gas_remaining wei
                    mem[_4317 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (8 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _4317 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (10 * ceil32(return_data.size)) + 160
                    require return_data.size >= 32
                    mem[_4315 + 64] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).getPrices() with:
                         gas gas_remaining wei
                    mem[_4317 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (10 * ceil32(return_data.size)) + 160 len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _4317 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (11 * ceil32(return_data.size)) + 160
                    require return_data.size >= 64
                    mem[_4315 + 128] = ext_call.return_data[32]
                    mem[_4315 + 96] = ext_call.return_data[0]
                    s = 0
                    while s < cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]:
                        require cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)] == address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                        if s >= mem[_4317]:
                            revert with 'NH{q', 50
                        _5546 = mem[(32 * s) + _4317 + 32]
                        require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                        call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).accountLiquidity(address arg1) with:
                             gas gas_remaining wei
                            args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5565 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if mem[_5565]:
                            mem[_5546 + 96] = mem[_5565]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                            staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5615 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_5546] = mem[_5615]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_4057))
                            staticcall address(_4057).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5653 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_5546 + 32] = mem[_5653]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_4099))
                            staticcall address(_4099).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5693 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_5546 + 64] = mem[_5693]
                        else:
                            if mem[_5565 + 32] >= 0 and 0 < mem[_5565 + 32] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                revert with 'NH{q', 17
                            if mem[_5565 + 32] < 0 and 0 > mem[_5565 + 32] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            mem[_5546 + 96] = -mem[_5565 + 32]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                            staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5647 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_5546] = mem[_5647]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_4057))
                            staticcall address(_4057).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5687 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_5546 + 32] = mem[_5687]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_4099))
                            staticcall address(_4099).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5723 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_5546 + 64] = mem[_5723]
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        continue 
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                mem[_4317 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 160] = 0
                mem[_4317 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 192] = 0
                mem[_4317 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 224] = 0
                mem[_4317 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 256] = 0
                mem[var150002] = var150001
                if not var150003 - 1:
                    mem[_3939 + 128] = _4317
                    require ext_code.size(address(_4057))
                    call address(_4057).accrueInterest() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(_4057))
                    staticcall address(_4057).borrowIndex() with:
                            gas gas_remaining wei
                    mem[_4317 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 288] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_4313] = ext_call.return_data[0]
                    require ext_code.size(address(_4057))
                    staticcall address(_4057).borrowRate() with:
                            gas gas_remaining wei
                    mem[_4317 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + ceil32(return_data.size) + 288] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_4313 + 32] = ext_call.return_data[0]
                    require ext_code.size(address(_4099))
                    call address(_4099).accrueInterest() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(_4099))
                    staticcall address(_4099).borrowIndex() with:
                            gas gas_remaining wei
                    mem[_4317 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_4314] = ext_call.return_data[0]
                    require ext_code.size(address(_4099))
                    staticcall address(_4099).borrowRate() with:
                            gas gas_remaining wei
                    mem[_4317 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (4 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_4314 + 32] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).liquidationIncentive() with:
                            gas gas_remaining wei
                    mem[_4317 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (6 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_4315 + 32] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).exchangeRate() with:
                         gas gas_remaining wei
                    mem[_4317 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (7 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_4315] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).safetyMarginSqrt() with:
                            gas gas_remaining wei
                    mem[_4317 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (8 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _4317 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (10 * ceil32(return_data.size)) + 288
                    require return_data.size >= 32
                    mem[_4315 + 64] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).getPrices() with:
                         gas gas_remaining wei
                    mem[_4317 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (10 * ceil32(return_data.size)) + 288 len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _4317 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (11 * ceil32(return_data.size)) + 288
                    require return_data.size >= 64
                    mem[_4315 + 128] = ext_call.return_data[32]
                    mem[_4315 + 96] = ext_call.return_data[0]
                    s = 0
                    while s < cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]:
                        require cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)] == address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                        if s >= mem[_4317]:
                            revert with 'NH{q', 50
                        _6498 = mem[(32 * s) + _4317 + 32]
                        require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                        call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).accountLiquidity(address arg1) with:
                             gas gas_remaining wei
                            args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6517 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if mem[_6517]:
                            mem[_6498 + 96] = mem[_6517]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                            staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6567 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_6498] = mem[_6567]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_4057))
                            staticcall address(_4057).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6605 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_6498 + 32] = mem[_6605]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_4099))
                            staticcall address(_4099).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6645 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_6498 + 64] = mem[_6645]
                        else:
                            if mem[_6517 + 32] >= 0 and 0 < mem[_6517 + 32] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                revert with 'NH{q', 17
                            if mem[_6517 + 32] < 0 and 0 > mem[_6517 + 32] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            mem[_6498 + 96] = -mem[_6517 + 32]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                            staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6599 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_6498] = mem[_6599]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_4057))
                            staticcall address(_4057).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6639 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_6498 + 32] = mem[_6639]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_4099))
                            staticcall address(_4099).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _6675 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_6498 + 64] = mem[_6675]
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        continue 
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                mem[_4317 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 288] = 0
                mem[_4317 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 320] = 0
                mem[_4317 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 352] = 0
                mem[_4317 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 384] = 0
                mem[var154002] = var154001
                if not var154003 - 1:
                    mem[_3939 + 128] = _4317
                    require ext_code.size(address(_4057))
                    call address(_4057).accrueInterest() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(_4057))
                    staticcall address(_4057).borrowIndex() with:
                            gas gas_remaining wei
                    mem[_4317 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 416] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_4313] = ext_call.return_data[0]
                    require ext_code.size(address(_4057))
                    staticcall address(_4057).borrowRate() with:
                            gas gas_remaining wei
                    mem[_4317 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + ceil32(return_data.size) + 416] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_4313 + 32] = ext_call.return_data[0]
                    require ext_code.size(address(_4099))
                    call address(_4099).accrueInterest() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(_4099))
                    staticcall address(_4099).borrowIndex() with:
                            gas gas_remaining wei
                    mem[_4317 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 416] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_4314] = ext_call.return_data[0]
                    require ext_code.size(address(_4099))
                    staticcall address(_4099).borrowRate() with:
                            gas gas_remaining wei
                    mem[_4317 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (4 * ceil32(return_data.size)) + 416] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_4314 + 32] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).liquidationIncentive() with:
                            gas gas_remaining wei
                    mem[_4317 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (6 * ceil32(return_data.size)) + 416] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_4315 + 32] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).exchangeRate() with:
                         gas gas_remaining wei
                    mem[_4317 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (7 * ceil32(return_data.size)) + 416] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_4315] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).safetyMarginSqrt() with:
                            gas gas_remaining wei
                    mem[_4317 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (8 * ceil32(return_data.size)) + 416] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _4317 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (10 * ceil32(return_data.size)) + 416
                    require return_data.size >= 32
                    mem[_4315 + 64] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).getPrices() with:
                         gas gas_remaining wei
                    mem[_4317 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (10 * ceil32(return_data.size)) + 416 len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _4317 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (11 * ceil32(return_data.size)) + 416
                    require return_data.size >= 64
                    mem[_4315 + 128] = ext_call.return_data[32]
                    mem[_4315 + 96] = ext_call.return_data[0]
                    s = 0
                    while s < cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]:
                        require cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)] == address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                        if s >= mem[_4317]:
                            revert with 'NH{q', 50
                        _7450 = mem[(32 * s) + _4317 + 32]
                        require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                        call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).accountLiquidity(address arg1) with:
                             gas gas_remaining wei
                            args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7469 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if mem[_7469]:
                            mem[_7450 + 96] = mem[_7469]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                            staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7519 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_7450] = mem[_7519]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_4057))
                            staticcall address(_4057).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7557 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_7450 + 32] = mem[_7557]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_4099))
                            staticcall address(_4099).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7597 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_7450 + 64] = mem[_7597]
                        else:
                            if mem[_7469 + 32] >= 0 and 0 < mem[_7469 + 32] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                revert with 'NH{q', 17
                            if mem[_7469 + 32] < 0 and 0 > mem[_7469 + 32] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            mem[_7450 + 96] = -mem[_7469 + 32]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                            staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7551 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_7450] = mem[_7551]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_4057))
                            staticcall address(_4057).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7591 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_7450 + 32] = mem[_7591]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_4099))
                            staticcall address(_4099).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7627 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_7450 + 64] = mem[_7627]
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        continue 
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                mem[_4317 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 416] = 0
                mem[_4317 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 448] = 0
                mem[_4317 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 480] = 0
                mem[_4317 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 512] = 0
                mem[var158002] = var158001
                if not var158003 - 1:
                    mem[_3939 + 128] = _4317
                    require ext_code.size(address(_4057))
                    call address(_4057).accrueInterest() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(_4057))
                    staticcall address(_4057).borrowIndex() with:
                            gas gas_remaining wei
                    mem[_4317 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 544] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_4313] = ext_call.return_data[0]
                    require ext_code.size(address(_4057))
                    staticcall address(_4057).borrowRate() with:
                            gas gas_remaining wei
                    mem[_4317 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + ceil32(return_data.size) + 544] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_4313 + 32] = ext_call.return_data[0]
                    require ext_code.size(address(_4099))
                    call address(_4099).accrueInterest() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(_4099))
                    staticcall address(_4099).borrowIndex() with:
                            gas gas_remaining wei
                    mem[_4317 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 544] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_4314] = ext_call.return_data[0]
                    require ext_code.size(address(_4099))
                    staticcall address(_4099).borrowRate() with:
                            gas gas_remaining wei
                    mem[_4317 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (4 * ceil32(return_data.size)) + 544] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_4314 + 32] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).liquidationIncentive() with:
                            gas gas_remaining wei
                    mem[_4317 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (6 * ceil32(return_data.size)) + 544] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_4315 + 32] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).exchangeRate() with:
                         gas gas_remaining wei
                    mem[_4317 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (7 * ceil32(return_data.size)) + 544] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_4315] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).safetyMarginSqrt() with:
                            gas gas_remaining wei
                    mem[_4317 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (8 * ceil32(return_data.size)) + 544] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _4317 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (10 * ceil32(return_data.size)) + 544
                    require return_data.size >= 32
                    mem[_4315 + 64] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).getPrices() with:
                         gas gas_remaining wei
                    mem[_4317 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (10 * ceil32(return_data.size)) + 544 len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _4317 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (11 * ceil32(return_data.size)) + 544
                    require return_data.size >= 64
                    mem[_4315 + 128] = ext_call.return_data[32]
                    mem[_4315 + 96] = ext_call.return_data[0]
                    s = 0
                    while s < cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]:
                        require cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)] == address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                        if s >= mem[_4317]:
                            revert with 'NH{q', 50
                        _8402 = mem[(32 * s) + _4317 + 32]
                        require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                        call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).accountLiquidity(address arg1) with:
                             gas gas_remaining wei
                            args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8421 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if mem[_8421]:
                            mem[_8402 + 96] = mem[_8421]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                            staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8471 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_8402] = mem[_8471]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_4057))
                            staticcall address(_4057).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8509 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_8402 + 32] = mem[_8509]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_4099))
                            staticcall address(_4099).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8549 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_8402 + 64] = mem[_8549]
                        else:
                            if mem[_8421 + 32] >= 0 and 0 < mem[_8421 + 32] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                revert with 'NH{q', 17
                            if mem[_8421 + 32] < 0 and 0 > mem[_8421 + 32] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            mem[_8402 + 96] = -mem[_8421 + 32]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                            staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8503 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_8402] = mem[_8503]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_4057))
                            staticcall address(_4057).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8543 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_8402 + 32] = mem[_8543]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_4099))
                            staticcall address(_4099).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8579 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_8402 + 64] = mem[_8579]
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        continue 
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                mem[_4317 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 544] = 0
                mem[_4317 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 576] = 0
                mem[_4317 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 608] = 0
                mem[_4317 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 640] = 0
                mem[var162002] = var162001
                if not var162003 - 1:
                    mem[_3939 + 128] = _4317
                    require ext_code.size(address(_4057))
                    call address(_4057).accrueInterest() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(_4057))
                    staticcall address(_4057).borrowIndex() with:
                            gas gas_remaining wei
                    mem[_4317 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 672] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_4313] = ext_call.return_data[0]
                    require ext_code.size(address(_4057))
                    staticcall address(_4057).borrowRate() with:
                            gas gas_remaining wei
                    mem[_4317 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + ceil32(return_data.size) + 672] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_4313 + 32] = ext_call.return_data[0]
                    require ext_code.size(address(_4099))
                    call address(_4099).accrueInterest() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(_4099))
                    staticcall address(_4099).borrowIndex() with:
                            gas gas_remaining wei
                    mem[_4317 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 672] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_4314] = ext_call.return_data[0]
                    require ext_code.size(address(_4099))
                    staticcall address(_4099).borrowRate() with:
                            gas gas_remaining wei
                    mem[_4317 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (4 * ceil32(return_data.size)) + 672] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_4314 + 32] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).liquidationIncentive() with:
                            gas gas_remaining wei
                    mem[_4317 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (6 * ceil32(return_data.size)) + 672] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_4315 + 32] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).exchangeRate() with:
                         gas gas_remaining wei
                    mem[_4317 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (7 * ceil32(return_data.size)) + 672] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_4315] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).safetyMarginSqrt() with:
                            gas gas_remaining wei
                    mem[_4317 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (8 * ceil32(return_data.size)) + 672] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _4317 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (10 * ceil32(return_data.size)) + 672
                    require return_data.size >= 32
                    mem[_4315 + 64] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).getPrices() with:
                         gas gas_remaining wei
                    mem[_4317 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (10 * ceil32(return_data.size)) + 672 len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _4317 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (11 * ceil32(return_data.size)) + 672
                    require return_data.size >= 64
                    mem[_4315 + 128] = ext_call.return_data[32]
                    mem[_4315 + 96] = ext_call.return_data[0]
                    s = 0
                    while s < cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]:
                        require cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)] == address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                        if s >= mem[_4317]:
                            revert with 'NH{q', 50
                        _9354 = mem[(32 * s) + _4317 + 32]
                        require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                        call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).accountLiquidity(address arg1) with:
                             gas gas_remaining wei
                            args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9373 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if mem[_9373]:
                            mem[_9354 + 96] = mem[_9373]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                            staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9423 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_9354] = mem[_9423]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_4057))
                            staticcall address(_4057).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9461 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_9354 + 32] = mem[_9461]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_4099))
                            staticcall address(_4099).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9501 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_9354 + 64] = mem[_9501]
                        else:
                            if mem[_9373 + 32] >= 0 and 0 < mem[_9373 + 32] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                revert with 'NH{q', 17
                            if mem[_9373 + 32] < 0 and 0 > mem[_9373 + 32] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            mem[_9354 + 96] = -mem[_9373 + 32]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                            staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9455 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_9354] = mem[_9455]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_4057))
                            staticcall address(_4057).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9495 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_9354 + 32] = mem[_9495]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_4099))
                            staticcall address(_4099).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _9531 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_9354 + 64] = mem[_9531]
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        continue 
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                mem[_4317 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 672] = 0
                mem[_4317 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 704] = 0
                mem[_4317 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 736] = 0
                mem[_4317 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 768] = 0
                mem[var166002] = var166001
                if var166003 - 1:
                    # nil
                else:
                    mem[_3939 + 128] = _4317
                    require ext_code.size(address(_4057))
                    call address(_4057).accrueInterest() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(_4057))
                    staticcall address(_4057).borrowIndex() with:
                            gas gas_remaining wei
                    mem[_4317 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + 800] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_4313] = ext_call.return_data[0]
                    require ext_code.size(address(_4057))
                    staticcall address(_4057).borrowRate() with:
                            gas gas_remaining wei
                    mem[_4317 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + ceil32(return_data.size) + 800] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_4313 + 32] = ext_call.return_data[0]
                    require ext_code.size(address(_4099))
                    call address(_4099).accrueInterest() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(_4099))
                    staticcall address(_4099).borrowIndex() with:
                            gas gas_remaining wei
                    mem[_4317 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 800] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_4314] = ext_call.return_data[0]
                    require ext_code.size(address(_4099))
                    staticcall address(_4099).borrowRate() with:
                            gas gas_remaining wei
                    mem[_4317 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (4 * ceil32(return_data.size)) + 800] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_4314 + 32] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).liquidationIncentive() with:
                            gas gas_remaining wei
                    mem[_4317 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (6 * ceil32(return_data.size)) + 800] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_4315 + 32] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).exchangeRate() with:
                         gas gas_remaining wei
                    mem[_4317 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (7 * ceil32(return_data.size)) + 800] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_4315] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).safetyMarginSqrt() with:
                            gas gas_remaining wei
                    mem[_4317 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (8 * ceil32(return_data.size)) + 800] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _4317 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (10 * ceil32(return_data.size)) + 800
                    require return_data.size >= 32
                    mem[_4315 + 64] = ext_call.return_data[0]
                    require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                    call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).getPrices() with:
                         gas gas_remaining wei
                    mem[_4317 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (10 * ceil32(return_data.size)) + 800 len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _4317 + (32 * cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]) + (11 * ceil32(return_data.size)) + 800
                    require return_data.size >= 64
                    mem[_4315 + 128] = ext_call.return_data[32]
                    mem[_4315 + 96] = ext_call.return_data[0]
                    s = 0
                    while s < cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 36)]:
                        require cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)] == address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                        if s >= mem[_4317]:
                            revert with 'NH{q', 50
                        _10306 = mem[(32 * s) + _4317 + 32]
                        require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                        call address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).accountLiquidity(address arg1) with:
                             gas gas_remaining wei
                            args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10325 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        if mem[_10325]:
                            mem[_10306 + 96] = mem[_10325]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                            staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10375 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_10306] = mem[_10375]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_4057))
                            staticcall address(_4057).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10413 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_10306 + 32] = mem[_10413]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_4099))
                            staticcall address(_4099).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10453 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_10306 + 64] = mem[_10453]
                        else:
                            if mem[_10325 + 32] >= 0 and 0 < mem[_10325 + 32] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                revert with 'NH{q', 17
                            if mem[_10325 + 32] < 0 and 0 > mem[_10325 + 32] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            mem[_10306 + 96] = -mem[_10325 + 32]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]))
                            staticcall address(cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 36)]).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10407 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_10306] = mem[_10407]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_4057))
                            staticcall address(_4057).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10447 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_10306 + 32] = mem[_10447]
                            mem[mem[64] + 4] = address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            require ext_code.size(address(_4099))
                            staticcall address(_4099).borrowBalance(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * s) + cd[(cd[36] + (32 * idx) + 36)] + cd[36] + cd[(cd[(cd[36] + (32 * idx) + 36)] + cd[36] + 68)] + 68)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _10483 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[_10306 + 64] = mem[_10483]
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        continue 
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
        _3938 = mem[64]
        mem[mem[64]] = uint32(block.number)
        mem[mem[64] + 32] = uint32(block.timestamp)
        mem[mem[64] + 64] = 96
        _3944 = mem[96]
        mem[mem[64] + 96] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 128
        u = mem[64] + (32 * mem[96]) + 128
        while idx < _3944:
            mem[t] = u + -_3938 - 128
            _4508 = mem[s]
            _4514 = mem[mem[s]]
            mem[u] = mem[mem[mem[s]] + 28 len 4]
            _4516 = mem[_4514 + 32]
            mem[u + 32] = mem[mem[_4514 + 32]]
            mem[u + 64] = mem[_4516 + 32]
            mem[u + 96] = mem[_4516 + 92 len 4]
            mem[u + 128] = mem[_4516 + 124 len 4]
            mem[u + 160] = bool(mem[_4516 + 128])
            mem[u + 192] = bool(mem[_4516 + 160])
            mem[u + 224] = mem[_4514 + 64]
            mem[u + 256] = mem[_4514 + 96]
            _4525 = mem[_4514 + 128]
            mem[u + 288] = mem[mem[_4514 + 128]]
            mem[u + 320] = mem[_4525 + 32]
            mem[u + 352] = mem[_4525 + 92 len 4]
            mem[u + 384] = mem[_4514 + 160]
            _4532 = mem[_4508 + 32]
            mem[u + 416] = mem[mem[_4508 + 32]]
            mem[u + 448] = mem[_4532 + 32]
            mem[u + 480] = mem[_4532 + 64]
            mem[u + 512] = mem[_4532 + 96]
            mem[u + 544] = mem[_4532 + 128]
            _4538 = mem[_4508 + 64]
            mem[u + 576] = mem[mem[_4508 + 64]]
            mem[u + 608] = mem[_4538 + 32]
            _4541 = mem[_4508 + 96]
            mem[u + 640] = mem[mem[_4508 + 96]]
            mem[u + 672] = mem[_4541 + 32]
            _4544 = mem[_4508 + 128]
            mem[u + 704] = 736
            _4557 = mem[_4544]
            mem[u + 736] = mem[_4544]
            v = 0
            w = _4544 + 32
            x = u + 768
            while v < _4557:
                _5019 = mem[w]
                mem[x] = mem[mem[w]]
                mem[x + 32] = mem[_5019 + 32]
                mem[x + 64] = mem[_5019 + 64]
                mem[x + 96] = mem[_5019 + 96]
                v = v + 1
                w = w + 32
                x = x + 128
                continue 
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = u + (128 * _4557) + 768
            continue 
    return memory
      from mem[64]
       len u - mem[64]
}



}
