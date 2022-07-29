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
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_b2e3915e(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    if ('cd', 36).length == 1:
        if ('cd', 36).length > -2:
            revert with 'NH{q', 17
        if ('cd', 68).length != ('cd', 36).length + 1:
            revert with 0, 'Length mismatch'
        if 0 >= ('cd', 36).length:
            revert with 'NH{q', 50
        require ('cd', 36)[0] == address(('cd', 36)[0])
        if address(('cd', 36)[0]) == address(cd[4]):
            revert with 0, 'Bad tokens chain'
        if ('cd', 36).length < 1:
            revert with 'NH{q', 17
        if ('cd', 36).length - 1 >= ('cd', 36).length:
            revert with 'NH{q', 50
        require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
        if address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]) == address(cd[4]):
            revert with 0, 'Bad tokens chain'
        if ('cd', 68).length > test266151307():
            revert with 'NH{q', 65
        mem[96] = ('cd', 68).length
        if not ('cd', 68).length:
            if ('cd', 68).length > test266151307():
                revert with 'NH{q', 65
            mem[(32 * ('cd', 68).length) + 128] = ('cd', 68).length
            mem[64] = (64 * ('cd', 68).length) + 160
            if not ('cd', 68).length:
                idx = 0
                while idx < ('cd', 68).length:
                    if not idx:
                        if ('cd', 68).length < 1:
                            revert with 'NH{q', 17
                        if idx == ('cd', 68).length - 1:
                            if idx >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                            staticcall address(cd[((32 * idx) + cd[68] + 36)]).factory() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1097 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1097] == mem[_1097 + 12 len 20]
                            revert with 0, 'JoeLibrary: IDENTICAL_ADDRESSES'
                        if idx >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        if idx >= ('cd', 68).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                        staticcall address(cd[((32 * idx) + cd[68] + 36)]).factory() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1145 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1165 = mem[_1145]
                        require mem[_1145] == mem[_1145 + 12 len 20]
                        if not address(cd[4]) - address(cd[((32 * idx) + cd[36] + 36)]):
                            revert with 0, 'JoeLibrary: IDENTICAL_ADDRESSES'
                        if address(cd[4]) < address(cd[((32 * idx) + cd[36] + 36)]):
                            if not address(cd[4]):
                                revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                            mem[mem[64] + 4] = address(cd[4])
                            mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
                            staticcall address(_1165).getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args address(cd[4]), address(cd[((32 * idx) + cd[36] + 36)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1437 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1437] == mem[_1437 + 12 len 20]
                            if not mem[_1437 + 12 len 20]:
                                revert with 0, 'Nonexisted pair'
                            staticcall mem[_1437 + 12 len 20].getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1633 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _1647 = mem[_1633]
                            require mem[_1633] == mem[_1633 + 18 len 14]
                            _1808 = mem[_1633 + 32]
                            require mem[_1633 + 32] == mem[_1633 + 50 len 14]
                            require mem[_1633 + 64] == mem[_1633 + 92 len 4]
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            if idx >= mem[(32 * ('cd', 68).length) + 128]:
                                revert with 'NH{q', 50
                            if address(cd[4]) == address(cd[4]):
                                mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = mem[_1633 + 50 len 14]
                                mem[(32 * idx) + 128] = Mask(112, 0, _1647)
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                if Mask(112, 0, _1647) <= 0:
                                    revert with 0, 'No liquidity'
                            else:
                                mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = mem[_1633 + 18 len 14]
                                mem[(32 * idx) + 128] = Mask(112, 0, _1808)
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                if Mask(112, 0, _1808) <= 0:
                                    revert with 0, 'No liquidity'
                        else:
                            if not address(cd[((32 * idx) + cd[36] + 36)]):
                                revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                            mem[mem[64] + 4] = address(cd[4])
                            mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
                            staticcall address(_1165).getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args address(cd[4]), address(cd[((32 * idx) + cd[36] + 36)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1438 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1438] == mem[_1438 + 12 len 20]
                            if not mem[_1438 + 12 len 20]:
                                revert with 0, 'Nonexisted pair'
                            staticcall mem[_1438 + 12 len 20].getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1634 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _1648 = mem[_1634]
                            require mem[_1634] == mem[_1634 + 18 len 14]
                            _1809 = mem[_1634 + 32]
                            require mem[_1634 + 32] == mem[_1634 + 50 len 14]
                            require mem[_1634 + 64] == mem[_1634 + 92 len 4]
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            if idx >= mem[(32 * ('cd', 68).length) + 128]:
                                revert with 'NH{q', 50
                            if address(cd[4]) == address(cd[((32 * idx) + cd[36] + 36)]):
                                mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = mem[_1634 + 50 len 14]
                                mem[(32 * idx) + 128] = Mask(112, 0, _1648)
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                if Mask(112, 0, _1648) <= 0:
                                    revert with 0, 'No liquidity'
                            else:
                                mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = mem[_1634 + 18 len 14]
                                mem[(32 * idx) + 128] = Mask(112, 0, _1809)
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                if Mask(112, 0, _1809) <= 0:
                                    revert with 0, 'No liquidity'
                    else:
                        if idx < 1:
                            revert with 'NH{q', 17
                        if idx - 1 >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx - 1) + cd[36] + 36)] == address(cd[((32 * idx - 1) + cd[36] + 36)])
                        if ('cd', 68).length < 1:
                            revert with 'NH{q', 17
                        if idx == ('cd', 68).length - 1:
                            if idx >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                            staticcall address(cd[((32 * idx) + cd[68] + 36)]).factory() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1187 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1213 = mem[_1187]
                            require mem[_1187] == mem[_1187 + 12 len 20]
                            if not address(cd[((32 * idx - 1) + cd[36] + 36)]) - address(cd[4]):
                                revert with 0, 'JoeLibrary: IDENTICAL_ADDRESSES'
                            if address(cd[((32 * idx - 1) + cd[36] + 36)]) < address(cd[4]):
                                if not address(cd[((32 * idx - 1) + cd[36] + 36)]):
                                    revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                                mem[mem[64] + 4] = address(cd[((32 * idx - 1) + cd[36] + 36)])
                                mem[mem[64] + 36] = address(cd[4])
                                staticcall address(_1213).getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(cd[((32 * idx - 1) + cd[36] + 36)]), address(cd[4])
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1528 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1528] == mem[_1528 + 12 len 20]
                                if not mem[_1528 + 12 len 20]:
                                    revert with 0, 'Nonexisted pair'
                                staticcall mem[_1528 + 12 len 20].getReserves() with:
                                        gas gas_remaining wei
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1749 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                _1810 = mem[_1749]
                                require mem[_1749] == mem[_1749 + 18 len 14]
                                _1852 = mem[_1749 + 32]
                                require mem[_1749 + 32] == mem[_1749 + 50 len 14]
                                require mem[_1749 + 64] == mem[_1749 + 92 len 4]
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                if idx >= mem[(32 * ('cd', 68).length) + 128]:
                                    revert with 'NH{q', 50
                                if address(cd[((32 * idx - 1) + cd[36] + 36)]) == address(cd[((32 * idx - 1) + cd[36] + 36)]):
                                    mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = mem[_1749 + 50 len 14]
                                    mem[(32 * idx) + 128] = Mask(112, 0, _1810)
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    if Mask(112, 0, _1810) <= 0:
                                        revert with 0, 'No liquidity'
                                else:
                                    mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = mem[_1749 + 18 len 14]
                                    mem[(32 * idx) + 128] = Mask(112, 0, _1852)
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    if Mask(112, 0, _1852) <= 0:
                                        revert with 0, 'No liquidity'
                            else:
                                if not address(cd[4]):
                                    revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                                mem[mem[64] + 4] = address(cd[((32 * idx - 1) + cd[36] + 36)])
                                mem[mem[64] + 36] = address(cd[4])
                                staticcall address(_1213).getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(cd[((32 * idx - 1) + cd[36] + 36)]), address(cd[4])
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1529 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1529] == mem[_1529 + 12 len 20]
                                if not mem[_1529 + 12 len 20]:
                                    revert with 0, 'Nonexisted pair'
                                staticcall mem[_1529 + 12 len 20].getReserves() with:
                                        gas gas_remaining wei
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1750 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                _1811 = mem[_1750]
                                require mem[_1750] == mem[_1750 + 18 len 14]
                                _1853 = mem[_1750 + 32]
                                require mem[_1750 + 32] == mem[_1750 + 50 len 14]
                                require mem[_1750 + 64] == mem[_1750 + 92 len 4]
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                if idx >= mem[(32 * ('cd', 68).length) + 128]:
                                    revert with 'NH{q', 50
                                if address(cd[((32 * idx - 1) + cd[36] + 36)]) == address(cd[4]):
                                    mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = mem[_1750 + 50 len 14]
                                    mem[(32 * idx) + 128] = Mask(112, 0, _1811)
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    if Mask(112, 0, _1811) <= 0:
                                        revert with 0, 'No liquidity'
                                else:
                                    mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = mem[_1750 + 18 len 14]
                                    mem[(32 * idx) + 128] = Mask(112, 0, _1853)
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    if Mask(112, 0, _1853) <= 0:
                                        revert with 0, 'No liquidity'
                        else:
                            if idx >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                            if idx >= ('cd', 68).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                            staticcall address(cd[((32 * idx) + cd[68] + 36)]).factory() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1316 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1331 = mem[_1316]
                            require mem[_1316] == mem[_1316 + 12 len 20]
                            if not address(cd[((32 * idx - 1) + cd[36] + 36)]) - address(cd[((32 * idx) + cd[36] + 36)]):
                                revert with 0, 'JoeLibrary: IDENTICAL_ADDRESSES'
                            if address(cd[((32 * idx - 1) + cd[36] + 36)]) < address(cd[((32 * idx) + cd[36] + 36)]):
                                if not address(cd[((32 * idx - 1) + cd[36] + 36)]):
                                    revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                                mem[mem[64] + 4] = address(cd[((32 * idx - 1) + cd[36] + 36)])
                                mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
                                staticcall address(_1331).getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(cd[((32 * idx - 1) + cd[36] + 36)]), address(cd[((32 * idx) + cd[36] + 36)])
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1683 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1683] == mem[_1683 + 12 len 20]
                                if not mem[_1683 + 12 len 20]:
                                    revert with 0, 'Nonexisted pair'
                                staticcall mem[_1683 + 12 len 20].getReserves() with:
                                        gas gas_remaining wei
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1921 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                _1941 = mem[_1921]
                                require mem[_1921] == mem[_1921 + 18 len 14]
                                _2080 = mem[_1921 + 32]
                                require mem[_1921 + 32] == mem[_1921 + 50 len 14]
                                require mem[_1921 + 64] == mem[_1921 + 92 len 4]
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                if idx >= mem[(32 * ('cd', 68).length) + 128]:
                                    revert with 'NH{q', 50
                                if address(cd[((32 * idx - 1) + cd[36] + 36)]) == address(cd[((32 * idx - 1) + cd[36] + 36)]):
                                    mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = mem[_1921 + 50 len 14]
                                    mem[(32 * idx) + 128] = Mask(112, 0, _1941)
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    if Mask(112, 0, _1941) <= 0:
                                        revert with 0, 'No liquidity'
                                else:
                                    mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = mem[_1921 + 18 len 14]
                                    mem[(32 * idx) + 128] = Mask(112, 0, _2080)
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    if Mask(112, 0, _2080) <= 0:
                                        revert with 0, 'No liquidity'
                            else:
                                if not address(cd[((32 * idx) + cd[36] + 36)]):
                                    revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                                mem[mem[64] + 4] = address(cd[((32 * idx - 1) + cd[36] + 36)])
                                mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
                                staticcall address(_1331).getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(cd[((32 * idx - 1) + cd[36] + 36)]), address(cd[((32 * idx) + cd[36] + 36)])
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1684 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1684] == mem[_1684 + 12 len 20]
                                if not mem[_1684 + 12 len 20]:
                                    revert with 0, 'Nonexisted pair'
                                staticcall mem[_1684 + 12 len 20].getReserves() with:
                                        gas gas_remaining wei
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1922 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                _1942 = mem[_1922]
                                require mem[_1922] == mem[_1922 + 18 len 14]
                                _2081 = mem[_1922 + 32]
                                require mem[_1922 + 32] == mem[_1922 + 50 len 14]
                                require mem[_1922 + 64] == mem[_1922 + 92 len 4]
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                if idx >= mem[(32 * ('cd', 68).length) + 128]:
                                    revert with 'NH{q', 50
                                if address(cd[((32 * idx - 1) + cd[36] + 36)]) == address(cd[((32 * idx) + cd[36] + 36)]):
                                    mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = mem[_1922 + 50 len 14]
                                    mem[(32 * idx) + 128] = Mask(112, 0, _1942)
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    if Mask(112, 0, _1942) <= 0:
                                        revert with 0, 'No liquidity'
                                else:
                                    mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = mem[_1922 + 18 len 14]
                                    mem[(32 * idx) + 128] = Mask(112, 0, _2081)
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    if Mask(112, 0, _2081) <= 0:
                                        revert with 0, 'No liquidity'
                    if idx >= mem[(32 * ('cd', 68).length) + 128]:
                        revert with 'NH{q', 50
                    if mem[(32 * idx) + (32 * ('cd', 68).length) + 160] <= 0:
                        revert with 0, 'No liquidity'
                    idx = idx + 1
                    continue 
                if not ('cd', 36).length - 1:
                    if 1 >= mem[(32 * ('cd', 68).length) + 128]:
                        revert with 'NH{q', 50
                    if 0 >= mem[(32 * ('cd', 68).length) + 128]:
                        revert with 'NH{q', 50
                    if mem[(32 * ('cd', 68).length) + 160] and mem[(32 * ('cd', 68).length) + 192] > -1 / mem[(32 * ('cd', 68).length) + 160]:
                        revert with 'NH{q', 17
                    if 1 >= mem[96]:
                        revert with 'NH{q', 50
                    if 0 >= mem[96]:
                        revert with 'NH{q', 50
                    if mem[128] and mem[160] > -1 / mem[128]:
                        revert with 'NH{q', 17
                    if mem[128] * mem[160] and 10^6 > -1 / mem[128] * mem[160]:
                        revert with 'NH{q', 17
                    if 1 >= mem[96]:
                        revert with 'NH{q', 50
                    if mem[160] and 1000 > -1 / mem[160]:
                        revert with 'NH{q', 17
                    if 0 >= mem[(32 * ('cd', 68).length) + 128]:
                        revert with 'NH{q', 50
                    if mem[(32 * ('cd', 68).length) + 160] > -(1000 * mem[160] / 997) - 1:
                        revert with 'NH{q', 17
                    mem[mem[64]] = 160
                    mem[mem[64] + 160] = mem[96]
                    mem[mem[64] + 192 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                    mem[mem[64] + 32] = (32 * mem[96]) + 192
                    _2976 = mem[(32 * ('cd', 68).length) + 128]
                    mem[mem[64] + (32 * mem[96]) + 192] = mem[(32 * ('cd', 68).length) + 128]
                    mem[mem[64] + (32 * mem[96]) + 224 len 32 * _2976] = mem[(32 * ('cd', 68).length) + 160 len 32 * _2976]
                    mem[mem[64] + 64] = 0
                    mem[mem[64] + 96] = 0
                    return 160, (32 * mem[96]) + 192, 0, 0, 0, mem[96], mem[mem[64] + 192 len (32 * mem[96]) + (32 * _2976) + 32]
                if ('cd', 36).length - 2:
                    mem[mem[64]] = 160
                    mem[mem[64] + 160] = mem[96]
                    mem[mem[64] + 192 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                    mem[mem[64] + 32] = (32 * mem[96]) + 192
                    _2974 = mem[(32 * ('cd', 68).length) + 128]
                    mem[mem[64] + (32 * mem[96]) + 192] = mem[(32 * ('cd', 68).length) + 128]
                    mem[mem[64] + (32 * mem[96]) + 224 len 32 * _2974] = mem[(32 * ('cd', 68).length) + 160 len 32 * _2974]
                    mem[mem[64] + 64] = 0
                    mem[mem[64] + 96] = 0
                    return 160, (32 * mem[96]) + 192, 0, 0, 0, mem[96], mem[mem[64] + 192 len (32 * mem[96]) + (32 * _2974) + 32]
                if 2 >= mem[(32 * ('cd', 68).length) + 128]:
                    revert with 'NH{q', 50
                if 1 >= mem[(32 * ('cd', 68).length) + 128]:
                    revert with 'NH{q', 50
                if 0 >= mem[(32 * ('cd', 68).length) + 128]:
                    revert with 'NH{q', 50
                if mem[(32 * ('cd', 68).length) + 160] and mem[(32 * ('cd', 68).length) + 192] > -1 / mem[(32 * ('cd', 68).length) + 160]:
                    revert with 'NH{q', 17
                if mem[(32 * ('cd', 68).length) + 160] * mem[(32 * ('cd', 68).length) + 192] and mem[(32 * ('cd', 68).length) + 224] > -1 / mem[(32 * ('cd', 68).length) + 160] * mem[(32 * ('cd', 68).length) + 192]:
                    revert with 'NH{q', 17
                if 2 >= mem[96]:
                    revert with 'NH{q', 50
                if 1 >= mem[96]:
                    revert with 'NH{q', 50
                if 0 >= mem[96]:
                    revert with 'NH{q', 50
                if mem[128] and mem[160] > -1 / mem[128]:
                    revert with 'NH{q', 17
                if mem[128] * mem[160] and mem[192] > -1 / mem[128] * mem[160]:
                    revert with 'NH{q', 17
                if mem[128] * mem[160] * mem[192] and 10^9 > -1 / mem[128] * mem[160] * mem[192]:
                    revert with 'NH{q', 17
                if 2 >= mem[96]:
                    revert with 'NH{q', 50
                if 1 >= mem[96]:
                    revert with 'NH{q', 50
                if mem[160] and mem[192] > -1 / mem[160]:
                    revert with 'NH{q', 17
                if mem[160] * mem[192] and 10^6 > -1 / mem[160] * mem[192]:
                    revert with 'NH{q', 17
                if 2 >= mem[96]:
                    revert with 'NH{q', 50
                if 0 >= mem[(32 * ('cd', 68).length) + 128]:
                    revert with 'NH{q', 50
                if mem[(32 * ('cd', 68).length) + 160] and mem[192] > -1 / mem[(32 * ('cd', 68).length) + 160]:
                    revert with 'NH{q', 17
                if mem[(32 * ('cd', 68).length) + 160] * mem[192] and 1000 > -1 / mem[(32 * ('cd', 68).length) + 160] * mem[192]:
                    revert with 'NH{q', 17
                if 1 >= mem[(32 * ('cd', 68).length) + 128]:
                    revert with 'NH{q', 50
                if 0 >= mem[(32 * ('cd', 68).length) + 128]:
                    revert with 'NH{q', 50
                if mem[(32 * ('cd', 68).length) + 160] and mem[(32 * ('cd', 68).length) + 192] > -1 / mem[(32 * ('cd', 68).length) + 160]:
                    revert with 'NH{q', 17
                if mem[(32 * ('cd', 68).length) + 160] * mem[(32 * ('cd', 68).length) + 192] > -(1000 * mem[(32 * ('cd', 68).length) + 160] * mem[192] / 997) - 1:
                    revert with 'NH{q', 17
                if (mem[(32 * ('cd', 68).length) + 160] * mem[(32 * ('cd', 68).length) + 192]) + (1000 * mem[(32 * ('cd', 68).length) + 160] * mem[192] / 997) > -(10^6 * mem[160] * mem[192] / 994009) - 1:
                    revert with 'NH{q', 17
                mem[mem[64]] = 160
                mem[mem[64] + 160] = mem[96]
                mem[mem[64] + 192 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                mem[mem[64] + 32] = (32 * mem[96]) + 192
                _2975 = mem[(32 * ('cd', 68).length) + 128]
                mem[mem[64] + (32 * mem[96]) + 192] = mem[(32 * ('cd', 68).length) + 128]
                mem[mem[64] + (32 * mem[96]) + 224 len 32 * _2975] = mem[(32 * ('cd', 68).length) + 160 len 32 * _2975]
                mem[mem[64] + 64] = 0
                mem[mem[64] + 96] = 0
                return 160, (32 * mem[96]) + 192, 0, 0, 0, mem[96], mem[mem[64] + 192 len (32 * mem[96]) + (32 * _2975) + 32]
            mem[(32 * ('cd', 68).length) + 160 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
            idx = 0
            while idx < ('cd', 68).length:
                if not idx:
                    if ('cd', 68).length < 1:
                        revert with 'NH{q', 17
                    if idx == ('cd', 68).length - 1:
                        if idx >= ('cd', 68).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                        staticcall address(cd[((32 * idx) + cd[68] + 36)]).factory() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1100 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1100] == mem[_1100 + 12 len 20]
                        revert with 0, 'JoeLibrary: IDENTICAL_ADDRESSES'
                    if idx >= ('cd', 36).length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                    if idx >= ('cd', 68).length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                    staticcall address(cd[((32 * idx) + cd[68] + 36)]).factory() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1147 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1166 = mem[_1147]
                    require mem[_1147] == mem[_1147 + 12 len 20]
                    if not address(cd[4]) - address(cd[((32 * idx) + cd[36] + 36)]):
                        revert with 0, 'JoeLibrary: IDENTICAL_ADDRESSES'
                    if address(cd[4]) < address(cd[((32 * idx) + cd[36] + 36)]):
                        if not address(cd[4]):
                            revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                        mem[mem[64] + 4] = address(cd[4])
                        mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
                        staticcall address(_1166).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(cd[4]), address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1440 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1440] == mem[_1440 + 12 len 20]
                        if not mem[_1440 + 12 len 20]:
                            revert with 0, 'Nonexisted pair'
                        staticcall mem[_1440 + 12 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1635 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _1649 = mem[_1635]
                        require mem[_1635] == mem[_1635 + 18 len 14]
                        _1812 = mem[_1635 + 32]
                        require mem[_1635 + 32] == mem[_1635 + 50 len 14]
                        require mem[_1635 + 64] == mem[_1635 + 92 len 4]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if idx >= mem[(32 * ('cd', 68).length) + 128]:
                            revert with 'NH{q', 50
                        if address(cd[4]) == address(cd[4]):
                            mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = mem[_1635 + 50 len 14]
                            mem[(32 * idx) + 128] = Mask(112, 0, _1649)
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            if Mask(112, 0, _1649) <= 0:
                                revert with 0, 'No liquidity'
                        else:
                            mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = mem[_1635 + 18 len 14]
                            mem[(32 * idx) + 128] = Mask(112, 0, _1812)
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            if Mask(112, 0, _1812) <= 0:
                                revert with 0, 'No liquidity'
                    else:
                        if not address(cd[((32 * idx) + cd[36] + 36)]):
                            revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                        mem[mem[64] + 4] = address(cd[4])
                        mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
                        staticcall address(_1166).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(cd[4]), address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1441 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1441] == mem[_1441 + 12 len 20]
                        if not mem[_1441 + 12 len 20]:
                            revert with 0, 'Nonexisted pair'
                        staticcall mem[_1441 + 12 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1636 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _1650 = mem[_1636]
                        require mem[_1636] == mem[_1636 + 18 len 14]
                        _1813 = mem[_1636 + 32]
                        require mem[_1636 + 32] == mem[_1636 + 50 len 14]
                        require mem[_1636 + 64] == mem[_1636 + 92 len 4]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if idx >= mem[(32 * ('cd', 68).length) + 128]:
                            revert with 'NH{q', 50
                        if address(cd[4]) == address(cd[((32 * idx) + cd[36] + 36)]):
                            mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = mem[_1636 + 50 len 14]
                            mem[(32 * idx) + 128] = Mask(112, 0, _1650)
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            if Mask(112, 0, _1650) <= 0:
                                revert with 0, 'No liquidity'
                        else:
                            mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = mem[_1636 + 18 len 14]
                            mem[(32 * idx) + 128] = Mask(112, 0, _1813)
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            if Mask(112, 0, _1813) <= 0:
                                revert with 0, 'No liquidity'
                else:
                    if idx < 1:
                        revert with 'NH{q', 17
                    if idx - 1 >= ('cd', 36).length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx - 1) + cd[36] + 36)] == address(cd[((32 * idx - 1) + cd[36] + 36)])
                    if ('cd', 68).length < 1:
                        revert with 'NH{q', 17
                    if idx == ('cd', 68).length - 1:
                        if idx >= ('cd', 68).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                        staticcall address(cd[((32 * idx) + cd[68] + 36)]).factory() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1188 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1218 = mem[_1188]
                        require mem[_1188] == mem[_1188 + 12 len 20]
                        if not address(cd[((32 * idx - 1) + cd[36] + 36)]) - address(cd[4]):
                            revert with 0, 'JoeLibrary: IDENTICAL_ADDRESSES'
                        if address(cd[((32 * idx - 1) + cd[36] + 36)]) < address(cd[4]):
                            if not address(cd[((32 * idx - 1) + cd[36] + 36)]):
                                revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                            mem[mem[64] + 4] = address(cd[((32 * idx - 1) + cd[36] + 36)])
                            mem[mem[64] + 36] = address(cd[4])
                            staticcall address(_1218).getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * idx - 1) + cd[36] + 36)]), address(cd[4])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1530 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1530] == mem[_1530 + 12 len 20]
                            if not mem[_1530 + 12 len 20]:
                                revert with 0, 'Nonexisted pair'
                            staticcall mem[_1530 + 12 len 20].getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1755 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _1814 = mem[_1755]
                            require mem[_1755] == mem[_1755 + 18 len 14]
                            _1856 = mem[_1755 + 32]
                            require mem[_1755 + 32] == mem[_1755 + 50 len 14]
                            require mem[_1755 + 64] == mem[_1755 + 92 len 4]
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            if idx >= mem[(32 * ('cd', 68).length) + 128]:
                                revert with 'NH{q', 50
                            if address(cd[((32 * idx - 1) + cd[36] + 36)]) == address(cd[((32 * idx - 1) + cd[36] + 36)]):
                                mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = mem[_1755 + 50 len 14]
                                mem[(32 * idx) + 128] = Mask(112, 0, _1814)
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                if Mask(112, 0, _1814) <= 0:
                                    revert with 0, 'No liquidity'
                            else:
                                mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = mem[_1755 + 18 len 14]
                                mem[(32 * idx) + 128] = Mask(112, 0, _1856)
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                if Mask(112, 0, _1856) <= 0:
                                    revert with 0, 'No liquidity'
                        else:
                            if not address(cd[4]):
                                revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                            mem[mem[64] + 4] = address(cd[((32 * idx - 1) + cd[36] + 36)])
                            mem[mem[64] + 36] = address(cd[4])
                            staticcall address(_1218).getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * idx - 1) + cd[36] + 36)]), address(cd[4])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1531 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1531] == mem[_1531 + 12 len 20]
                            if not mem[_1531 + 12 len 20]:
                                revert with 0, 'Nonexisted pair'
                            staticcall mem[_1531 + 12 len 20].getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1756 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _1815 = mem[_1756]
                            require mem[_1756] == mem[_1756 + 18 len 14]
                            _1857 = mem[_1756 + 32]
                            require mem[_1756 + 32] == mem[_1756 + 50 len 14]
                            require mem[_1756 + 64] == mem[_1756 + 92 len 4]
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            if idx >= mem[(32 * ('cd', 68).length) + 128]:
                                revert with 'NH{q', 50
                            if address(cd[((32 * idx - 1) + cd[36] + 36)]) == address(cd[4]):
                                mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = mem[_1756 + 50 len 14]
                                mem[(32 * idx) + 128] = Mask(112, 0, _1815)
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                if Mask(112, 0, _1815) <= 0:
                                    revert with 0, 'No liquidity'
                            else:
                                mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = mem[_1756 + 18 len 14]
                                mem[(32 * idx) + 128] = Mask(112, 0, _1857)
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                if Mask(112, 0, _1857) <= 0:
                                    revert with 0, 'No liquidity'
                    else:
                        if idx >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        if idx >= ('cd', 68).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                        staticcall address(cd[((32 * idx) + cd[68] + 36)]).factory() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1317 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1333 = mem[_1317]
                        require mem[_1317] == mem[_1317 + 12 len 20]
                        if not address(cd[((32 * idx - 1) + cd[36] + 36)]) - address(cd[((32 * idx) + cd[36] + 36)]):
                            revert with 0, 'JoeLibrary: IDENTICAL_ADDRESSES'
                        if address(cd[((32 * idx - 1) + cd[36] + 36)]) < address(cd[((32 * idx) + cd[36] + 36)]):
                            if not address(cd[((32 * idx - 1) + cd[36] + 36)]):
                                revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                            mem[mem[64] + 4] = address(cd[((32 * idx - 1) + cd[36] + 36)])
                            mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
                            staticcall address(_1333).getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * idx - 1) + cd[36] + 36)]), address(cd[((32 * idx) + cd[36] + 36)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1693 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1693] == mem[_1693 + 12 len 20]
                            if not mem[_1693 + 12 len 20]:
                                revert with 0, 'Nonexisted pair'
                            staticcall mem[_1693 + 12 len 20].getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1924 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _1943 = mem[_1924]
                            require mem[_1924] == mem[_1924 + 18 len 14]
                            _2088 = mem[_1924 + 32]
                            require mem[_1924 + 32] == mem[_1924 + 50 len 14]
                            require mem[_1924 + 64] == mem[_1924 + 92 len 4]
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            if idx >= mem[(32 * ('cd', 68).length) + 128]:
                                revert with 'NH{q', 50
                            if address(cd[((32 * idx - 1) + cd[36] + 36)]) == address(cd[((32 * idx - 1) + cd[36] + 36)]):
                                mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = mem[_1924 + 50 len 14]
                                mem[(32 * idx) + 128] = Mask(112, 0, _1943)
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                if Mask(112, 0, _1943) <= 0:
                                    revert with 0, 'No liquidity'
                            else:
                                mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = mem[_1924 + 18 len 14]
                                mem[(32 * idx) + 128] = Mask(112, 0, _2088)
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                if Mask(112, 0, _2088) <= 0:
                                    revert with 0, 'No liquidity'
                        else:
                            if not address(cd[((32 * idx) + cd[36] + 36)]):
                                revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                            mem[mem[64] + 4] = address(cd[((32 * idx - 1) + cd[36] + 36)])
                            mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
                            staticcall address(_1333).getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * idx - 1) + cd[36] + 36)]), address(cd[((32 * idx) + cd[36] + 36)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1694 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1694] == mem[_1694 + 12 len 20]
                            if not mem[_1694 + 12 len 20]:
                                revert with 0, 'Nonexisted pair'
                            staticcall mem[_1694 + 12 len 20].getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1925 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _1944 = mem[_1925]
                            require mem[_1925] == mem[_1925 + 18 len 14]
                            _2089 = mem[_1925 + 32]
                            require mem[_1925 + 32] == mem[_1925 + 50 len 14]
                            require mem[_1925 + 64] == mem[_1925 + 92 len 4]
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            if idx >= mem[(32 * ('cd', 68).length) + 128]:
                                revert with 'NH{q', 50
                            if address(cd[((32 * idx - 1) + cd[36] + 36)]) == address(cd[((32 * idx) + cd[36] + 36)]):
                                mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = mem[_1925 + 50 len 14]
                                mem[(32 * idx) + 128] = Mask(112, 0, _1944)
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                if Mask(112, 0, _1944) <= 0:
                                    revert with 0, 'No liquidity'
                            else:
                                mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = mem[_1925 + 18 len 14]
                                mem[(32 * idx) + 128] = Mask(112, 0, _2089)
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                if Mask(112, 0, _2089) <= 0:
                                    revert with 0, 'No liquidity'
                if idx >= mem[(32 * ('cd', 68).length) + 128]:
                    revert with 'NH{q', 50
                if mem[(32 * idx) + (32 * ('cd', 68).length) + 160] <= 0:
                    revert with 0, 'No liquidity'
                idx = idx + 1
                continue 
            if not ('cd', 36).length - 1:
                if 1 >= mem[(32 * ('cd', 68).length) + 128]:
                    revert with 'NH{q', 50
                if 0 >= mem[(32 * ('cd', 68).length) + 128]:
                    revert with 'NH{q', 50
                if mem[(32 * ('cd', 68).length) + 160] and mem[(32 * ('cd', 68).length) + 192] > -1 / mem[(32 * ('cd', 68).length) + 160]:
                    revert with 'NH{q', 17
                if 1 >= mem[96]:
                    revert with 'NH{q', 50
                if 0 >= mem[96]:
                    revert with 'NH{q', 50
                if mem[128] and mem[160] > -1 / mem[128]:
                    revert with 'NH{q', 17
                if mem[128] * mem[160] and 10^6 > -1 / mem[128] * mem[160]:
                    revert with 'NH{q', 17
                if 1 >= mem[96]:
                    revert with 'NH{q', 50
                if mem[160] and 1000 > -1 / mem[160]:
                    revert with 'NH{q', 17
                if 0 >= mem[(32 * ('cd', 68).length) + 128]:
                    revert with 'NH{q', 50
                if mem[(32 * ('cd', 68).length) + 160] > -(1000 * mem[160] / 997) - 1:
                    revert with 'NH{q', 17
                mem[mem[64]] = 160
                mem[mem[64] + 160] = mem[96]
                mem[mem[64] + 192 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                mem[mem[64] + 32] = (32 * mem[96]) + 192
                _2979 = mem[(32 * ('cd', 68).length) + 128]
                mem[mem[64] + (32 * mem[96]) + 192] = mem[(32 * ('cd', 68).length) + 128]
                mem[mem[64] + (32 * mem[96]) + 224 len 32 * _2979] = mem[(32 * ('cd', 68).length) + 160 len 32 * _2979]
                mem[mem[64] + 64] = 0
                mem[mem[64] + 96] = 0
                return 160, (32 * mem[96]) + 192, 0, 0, 0, mem[96], mem[mem[64] + 192 len (32 * mem[96]) + (32 * _2979) + 32]
            if ('cd', 36).length - 2:
                mem[mem[64]] = 160
                mem[mem[64] + 160] = mem[96]
                mem[mem[64] + 192 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                mem[mem[64] + 32] = (32 * mem[96]) + 192
                _2977 = mem[(32 * ('cd', 68).length) + 128]
                mem[mem[64] + (32 * mem[96]) + 192] = mem[(32 * ('cd', 68).length) + 128]
                mem[mem[64] + (32 * mem[96]) + 224 len 32 * _2977] = mem[(32 * ('cd', 68).length) + 160 len 32 * _2977]
                mem[mem[64] + 64] = 0
                mem[mem[64] + 96] = 0
                return 160, (32 * mem[96]) + 192, 0, 0, 0, mem[96], mem[mem[64] + 192 len (32 * mem[96]) + (32 * _2977) + 32]
            if 2 >= mem[(32 * ('cd', 68).length) + 128]:
                revert with 'NH{q', 50
            if 1 >= mem[(32 * ('cd', 68).length) + 128]:
                revert with 'NH{q', 50
            if 0 >= mem[(32 * ('cd', 68).length) + 128]:
                revert with 'NH{q', 50
            if mem[(32 * ('cd', 68).length) + 160] and mem[(32 * ('cd', 68).length) + 192] > -1 / mem[(32 * ('cd', 68).length) + 160]:
                revert with 'NH{q', 17
            if mem[(32 * ('cd', 68).length) + 160] * mem[(32 * ('cd', 68).length) + 192] and mem[(32 * ('cd', 68).length) + 224] > -1 / mem[(32 * ('cd', 68).length) + 160] * mem[(32 * ('cd', 68).length) + 192]:
                revert with 'NH{q', 17
            if 2 >= mem[96]:
                revert with 'NH{q', 50
            if 1 >= mem[96]:
                revert with 'NH{q', 50
            if 0 >= mem[96]:
                revert with 'NH{q', 50
            if mem[128] and mem[160] > -1 / mem[128]:
                revert with 'NH{q', 17
            if mem[128] * mem[160] and mem[192] > -1 / mem[128] * mem[160]:
                revert with 'NH{q', 17
            if mem[128] * mem[160] * mem[192] and 10^9 > -1 / mem[128] * mem[160] * mem[192]:
                revert with 'NH{q', 17
            if 2 >= mem[96]:
                revert with 'NH{q', 50
            if 1 >= mem[96]:
                revert with 'NH{q', 50
            if mem[160] and mem[192] > -1 / mem[160]:
                revert with 'NH{q', 17
            if mem[160] * mem[192] and 10^6 > -1 / mem[160] * mem[192]:
                revert with 'NH{q', 17
            if 2 >= mem[96]:
                revert with 'NH{q', 50
            if 0 >= mem[(32 * ('cd', 68).length) + 128]:
                revert with 'NH{q', 50
            if mem[(32 * ('cd', 68).length) + 160] and mem[192] > -1 / mem[(32 * ('cd', 68).length) + 160]:
                revert with 'NH{q', 17
            if mem[(32 * ('cd', 68).length) + 160] * mem[192] and 1000 > -1 / mem[(32 * ('cd', 68).length) + 160] * mem[192]:
                revert with 'NH{q', 17
            if 1 >= mem[(32 * ('cd', 68).length) + 128]:
                revert with 'NH{q', 50
            if 0 >= mem[(32 * ('cd', 68).length) + 128]:
                revert with 'NH{q', 50
            if mem[(32 * ('cd', 68).length) + 160] and mem[(32 * ('cd', 68).length) + 192] > -1 / mem[(32 * ('cd', 68).length) + 160]:
                revert with 'NH{q', 17
            if mem[(32 * ('cd', 68).length) + 160] * mem[(32 * ('cd', 68).length) + 192] > -(1000 * mem[(32 * ('cd', 68).length) + 160] * mem[192] / 997) - 1:
                revert with 'NH{q', 17
            if (mem[(32 * ('cd', 68).length) + 160] * mem[(32 * ('cd', 68).length) + 192]) + (1000 * mem[(32 * ('cd', 68).length) + 160] * mem[192] / 997) > -(10^6 * mem[160] * mem[192] / 994009) - 1:
                revert with 'NH{q', 17
            mem[mem[64]] = 160
            mem[mem[64] + 160] = mem[96]
            mem[mem[64] + 192 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
            mem[mem[64] + 32] = (32 * mem[96]) + 192
            _2978 = mem[(32 * ('cd', 68).length) + 128]
            mem[mem[64] + (32 * mem[96]) + 192] = mem[(32 * ('cd', 68).length) + 128]
            mem[mem[64] + (32 * mem[96]) + 224 len 32 * _2978] = mem[(32 * ('cd', 68).length) + 160 len 32 * _2978]
            mem[mem[64] + 64] = 0
            mem[mem[64] + 96] = 0
            return 160, (32 * mem[96]) + 192, 0, 0, 0, mem[96], mem[mem[64] + 192 len (32 * mem[96]) + (32 * _2978) + 32]
        mem[128 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
        if ('cd', 68).length > test266151307():
            revert with 'NH{q', 65
        mem[(32 * ('cd', 68).length) + 128] = ('cd', 68).length
        mem[64] = (64 * ('cd', 68).length) + 160
        if not ('cd', 68).length:
            idx = 0
            while idx < ('cd', 68).length:
                if not idx:
                    if ('cd', 68).length < 1:
                        revert with 'NH{q', 17
                    if idx == ('cd', 68).length - 1:
                        if idx >= ('cd', 68).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                        staticcall address(cd[((32 * idx) + cd[68] + 36)]).factory() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1103 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1103] == mem[_1103 + 12 len 20]
                        revert with 0, 'JoeLibrary: IDENTICAL_ADDRESSES'
                    if idx >= ('cd', 36).length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                    if idx >= ('cd', 68).length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                    staticcall address(cd[((32 * idx) + cd[68] + 36)]).factory() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1149 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1167 = mem[_1149]
                    require mem[_1149] == mem[_1149 + 12 len 20]
                    if not address(cd[4]) - address(cd[((32 * idx) + cd[36] + 36)]):
                        revert with 0, 'JoeLibrary: IDENTICAL_ADDRESSES'
                    if address(cd[4]) < address(cd[((32 * idx) + cd[36] + 36)]):
                        if not address(cd[4]):
                            revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                        mem[mem[64] + 4] = address(cd[4])
                        mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
                        staticcall address(_1167).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(cd[4]), address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1443 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1443] == mem[_1443 + 12 len 20]
                        if not mem[_1443 + 12 len 20]:
                            revert with 0, 'Nonexisted pair'
                        staticcall mem[_1443 + 12 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1637 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _1651 = mem[_1637]
                        require mem[_1637] == mem[_1637 + 18 len 14]
                        _1816 = mem[_1637 + 32]
                        require mem[_1637 + 32] == mem[_1637 + 50 len 14]
                        require mem[_1637 + 64] == mem[_1637 + 92 len 4]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if idx >= mem[(32 * ('cd', 68).length) + 128]:
                            revert with 'NH{q', 50
                        if address(cd[4]) == address(cd[4]):
                            mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = mem[_1637 + 50 len 14]
                            mem[(32 * idx) + 128] = Mask(112, 0, _1651)
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            if Mask(112, 0, _1651) <= 0:
                                revert with 0, 'No liquidity'
                        else:
                            mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = mem[_1637 + 18 len 14]
                            mem[(32 * idx) + 128] = Mask(112, 0, _1816)
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            if Mask(112, 0, _1816) <= 0:
                                revert with 0, 'No liquidity'
                    else:
                        if not address(cd[((32 * idx) + cd[36] + 36)]):
                            revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                        mem[mem[64] + 4] = address(cd[4])
                        mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
                        staticcall address(_1167).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(cd[4]), address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1444 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1444] == mem[_1444 + 12 len 20]
                        if not mem[_1444 + 12 len 20]:
                            revert with 0, 'Nonexisted pair'
                        staticcall mem[_1444 + 12 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1638 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _1652 = mem[_1638]
                        require mem[_1638] == mem[_1638 + 18 len 14]
                        _1817 = mem[_1638 + 32]
                        require mem[_1638 + 32] == mem[_1638 + 50 len 14]
                        require mem[_1638 + 64] == mem[_1638 + 92 len 4]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if idx >= mem[(32 * ('cd', 68).length) + 128]:
                            revert with 'NH{q', 50
                        if address(cd[4]) == address(cd[((32 * idx) + cd[36] + 36)]):
                            mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = mem[_1638 + 50 len 14]
                            mem[(32 * idx) + 128] = Mask(112, 0, _1652)
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            if Mask(112, 0, _1652) <= 0:
                                revert with 0, 'No liquidity'
                        else:
                            mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = mem[_1638 + 18 len 14]
                            mem[(32 * idx) + 128] = Mask(112, 0, _1817)
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            if Mask(112, 0, _1817) <= 0:
                                revert with 0, 'No liquidity'
                else:
                    if idx < 1:
                        revert with 'NH{q', 17
                    if idx - 1 >= ('cd', 36).length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx - 1) + cd[36] + 36)] == address(cd[((32 * idx - 1) + cd[36] + 36)])
                    if ('cd', 68).length < 1:
                        revert with 'NH{q', 17
                    if idx == ('cd', 68).length - 1:
                        if idx >= ('cd', 68).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                        staticcall address(cd[((32 * idx) + cd[68] + 36)]).factory() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1189 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1223 = mem[_1189]
                        require mem[_1189] == mem[_1189 + 12 len 20]
                        if not address(cd[((32 * idx - 1) + cd[36] + 36)]) - address(cd[4]):
                            revert with 0, 'JoeLibrary: IDENTICAL_ADDRESSES'
                        if address(cd[((32 * idx - 1) + cd[36] + 36)]) < address(cd[4]):
                            if not address(cd[((32 * idx - 1) + cd[36] + 36)]):
                                revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                            mem[mem[64] + 4] = address(cd[((32 * idx - 1) + cd[36] + 36)])
                            mem[mem[64] + 36] = address(cd[4])
                            staticcall address(_1223).getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * idx - 1) + cd[36] + 36)]), address(cd[4])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1532 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1532] == mem[_1532 + 12 len 20]
                            if not mem[_1532 + 12 len 20]:
                                revert with 0, 'Nonexisted pair'
                            staticcall mem[_1532 + 12 len 20].getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1761 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _1818 = mem[_1761]
                            require mem[_1761] == mem[_1761 + 18 len 14]
                            _1860 = mem[_1761 + 32]
                            require mem[_1761 + 32] == mem[_1761 + 50 len 14]
                            require mem[_1761 + 64] == mem[_1761 + 92 len 4]
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            if idx >= mem[(32 * ('cd', 68).length) + 128]:
                                revert with 'NH{q', 50
                            if address(cd[((32 * idx - 1) + cd[36] + 36)]) == address(cd[((32 * idx - 1) + cd[36] + 36)]):
                                mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = mem[_1761 + 50 len 14]
                                mem[(32 * idx) + 128] = Mask(112, 0, _1818)
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                if Mask(112, 0, _1818) <= 0:
                                    revert with 0, 'No liquidity'
                            else:
                                mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = mem[_1761 + 18 len 14]
                                mem[(32 * idx) + 128] = Mask(112, 0, _1860)
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                if Mask(112, 0, _1860) <= 0:
                                    revert with 0, 'No liquidity'
                        else:
                            if not address(cd[4]):
                                revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                            mem[mem[64] + 4] = address(cd[((32 * idx - 1) + cd[36] + 36)])
                            mem[mem[64] + 36] = address(cd[4])
                            staticcall address(_1223).getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * idx - 1) + cd[36] + 36)]), address(cd[4])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1533 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1533] == mem[_1533 + 12 len 20]
                            if not mem[_1533 + 12 len 20]:
                                revert with 0, 'Nonexisted pair'
                            staticcall mem[_1533 + 12 len 20].getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1762 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _1819 = mem[_1762]
                            require mem[_1762] == mem[_1762 + 18 len 14]
                            _1861 = mem[_1762 + 32]
                            require mem[_1762 + 32] == mem[_1762 + 50 len 14]
                            require mem[_1762 + 64] == mem[_1762 + 92 len 4]
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            if idx >= mem[(32 * ('cd', 68).length) + 128]:
                                revert with 'NH{q', 50
                            if address(cd[((32 * idx - 1) + cd[36] + 36)]) == address(cd[4]):
                                mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = mem[_1762 + 50 len 14]
                                mem[(32 * idx) + 128] = Mask(112, 0, _1819)
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                if Mask(112, 0, _1819) <= 0:
                                    revert with 0, 'No liquidity'
                            else:
                                mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = mem[_1762 + 18 len 14]
                                mem[(32 * idx) + 128] = Mask(112, 0, _1861)
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                if Mask(112, 0, _1861) <= 0:
                                    revert with 0, 'No liquidity'
                    else:
                        if idx >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        if idx >= ('cd', 68).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                        staticcall address(cd[((32 * idx) + cd[68] + 36)]).factory() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1318 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1335 = mem[_1318]
                        require mem[_1318] == mem[_1318 + 12 len 20]
                        if not address(cd[((32 * idx - 1) + cd[36] + 36)]) - address(cd[((32 * idx) + cd[36] + 36)]):
                            revert with 0, 'JoeLibrary: IDENTICAL_ADDRESSES'
                        if address(cd[((32 * idx - 1) + cd[36] + 36)]) < address(cd[((32 * idx) + cd[36] + 36)]):
                            if not address(cd[((32 * idx - 1) + cd[36] + 36)]):
                                revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                            mem[mem[64] + 4] = address(cd[((32 * idx - 1) + cd[36] + 36)])
                            mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
                            staticcall address(_1335).getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * idx - 1) + cd[36] + 36)]), address(cd[((32 * idx) + cd[36] + 36)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1703 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1703] == mem[_1703 + 12 len 20]
                            if not mem[_1703 + 12 len 20]:
                                revert with 0, 'Nonexisted pair'
                            staticcall mem[_1703 + 12 len 20].getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1927 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _1945 = mem[_1927]
                            require mem[_1927] == mem[_1927 + 18 len 14]
                            _2096 = mem[_1927 + 32]
                            require mem[_1927 + 32] == mem[_1927 + 50 len 14]
                            require mem[_1927 + 64] == mem[_1927 + 92 len 4]
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            if idx >= mem[(32 * ('cd', 68).length) + 128]:
                                revert with 'NH{q', 50
                            if address(cd[((32 * idx - 1) + cd[36] + 36)]) == address(cd[((32 * idx - 1) + cd[36] + 36)]):
                                mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = mem[_1927 + 50 len 14]
                                mem[(32 * idx) + 128] = Mask(112, 0, _1945)
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                if Mask(112, 0, _1945) <= 0:
                                    revert with 0, 'No liquidity'
                            else:
                                mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = mem[_1927 + 18 len 14]
                                mem[(32 * idx) + 128] = Mask(112, 0, _2096)
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                if Mask(112, 0, _2096) <= 0:
                                    revert with 0, 'No liquidity'
                        else:
                            if not address(cd[((32 * idx) + cd[36] + 36)]):
                                revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                            mem[mem[64] + 4] = address(cd[((32 * idx - 1) + cd[36] + 36)])
                            mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
                            staticcall address(_1335).getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * idx - 1) + cd[36] + 36)]), address(cd[((32 * idx) + cd[36] + 36)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1704 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1704] == mem[_1704 + 12 len 20]
                            if not mem[_1704 + 12 len 20]:
                                revert with 0, 'Nonexisted pair'
                            staticcall mem[_1704 + 12 len 20].getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1928 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _1946 = mem[_1928]
                            require mem[_1928] == mem[_1928 + 18 len 14]
                            _2097 = mem[_1928 + 32]
                            require mem[_1928 + 32] == mem[_1928 + 50 len 14]
                            require mem[_1928 + 64] == mem[_1928 + 92 len 4]
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            if idx >= mem[(32 * ('cd', 68).length) + 128]:
                                revert with 'NH{q', 50
                            if address(cd[((32 * idx - 1) + cd[36] + 36)]) == address(cd[((32 * idx) + cd[36] + 36)]):
                                mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = mem[_1928 + 50 len 14]
                                mem[(32 * idx) + 128] = Mask(112, 0, _1946)
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                if Mask(112, 0, _1946) <= 0:
                                    revert with 0, 'No liquidity'
                            else:
                                mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = mem[_1928 + 18 len 14]
                                mem[(32 * idx) + 128] = Mask(112, 0, _2097)
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                if Mask(112, 0, _2097) <= 0:
                                    revert with 0, 'No liquidity'
                if idx >= mem[(32 * ('cd', 68).length) + 128]:
                    revert with 'NH{q', 50
                if mem[(32 * idx) + (32 * ('cd', 68).length) + 160] <= 0:
                    revert with 0, 'No liquidity'
                idx = idx + 1
                continue 
            if not ('cd', 36).length - 1:
                if 1 >= mem[(32 * ('cd', 68).length) + 128]:
                    revert with 'NH{q', 50
                if 0 >= mem[(32 * ('cd', 68).length) + 128]:
                    revert with 'NH{q', 50
                if mem[(32 * ('cd', 68).length) + 160] and mem[(32 * ('cd', 68).length) + 192] > -1 / mem[(32 * ('cd', 68).length) + 160]:
                    revert with 'NH{q', 17
                if 1 >= mem[96]:
                    revert with 'NH{q', 50
                if 0 >= mem[96]:
                    revert with 'NH{q', 50
                if mem[128] and mem[160] > -1 / mem[128]:
                    revert with 'NH{q', 17
                if mem[128] * mem[160] and 10^6 > -1 / mem[128] * mem[160]:
                    revert with 'NH{q', 17
                if 1 >= mem[96]:
                    revert with 'NH{q', 50
                if mem[160] and 1000 > -1 / mem[160]:
                    revert with 'NH{q', 17
                if 0 >= mem[(32 * ('cd', 68).length) + 128]:
                    revert with 'NH{q', 50
                if mem[(32 * ('cd', 68).length) + 160] > -(1000 * mem[160] / 997) - 1:
                    revert with 'NH{q', 17
                mem[mem[64]] = 160
                mem[mem[64] + 160] = mem[96]
                mem[mem[64] + 192 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                mem[mem[64] + 32] = (32 * mem[96]) + 192
                _2982 = mem[(32 * ('cd', 68).length) + 128]
                mem[mem[64] + (32 * mem[96]) + 192] = mem[(32 * ('cd', 68).length) + 128]
                mem[mem[64] + (32 * mem[96]) + 224 len 32 * _2982] = mem[(32 * ('cd', 68).length) + 160 len 32 * _2982]
                mem[mem[64] + 64] = 0
                mem[mem[64] + 96] = 0
                return 160, (32 * mem[96]) + 192, 0, 0, 0, mem[96], mem[mem[64] + 192 len (32 * mem[96]) + (32 * _2982) + 32]
            if ('cd', 36).length - 2:
                mem[mem[64]] = 160
                mem[mem[64] + 160] = mem[96]
                mem[mem[64] + 192 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                mem[mem[64] + 32] = (32 * mem[96]) + 192
                _2980 = mem[(32 * ('cd', 68).length) + 128]
                mem[mem[64] + (32 * mem[96]) + 192] = mem[(32 * ('cd', 68).length) + 128]
                mem[mem[64] + (32 * mem[96]) + 224 len 32 * _2980] = mem[(32 * ('cd', 68).length) + 160 len 32 * _2980]
                mem[mem[64] + 64] = 0
                mem[mem[64] + 96] = 0
                return 160, (32 * mem[96]) + 192, 0, 0, 0, mem[96], mem[mem[64] + 192 len (32 * mem[96]) + (32 * _2980) + 32]
            if 2 >= mem[(32 * ('cd', 68).length) + 128]:
                revert with 'NH{q', 50
            if 1 >= mem[(32 * ('cd', 68).length) + 128]:
                revert with 'NH{q', 50
            if 0 >= mem[(32 * ('cd', 68).length) + 128]:
                revert with 'NH{q', 50
            if mem[(32 * ('cd', 68).length) + 160] and mem[(32 * ('cd', 68).length) + 192] > -1 / mem[(32 * ('cd', 68).length) + 160]:
                revert with 'NH{q', 17
            if mem[(32 * ('cd', 68).length) + 160] * mem[(32 * ('cd', 68).length) + 192] and mem[(32 * ('cd', 68).length) + 224] > -1 / mem[(32 * ('cd', 68).length) + 160] * mem[(32 * ('cd', 68).length) + 192]:
                revert with 'NH{q', 17
            if 2 >= mem[96]:
                revert with 'NH{q', 50
            if 1 >= mem[96]:
                revert with 'NH{q', 50
            if 0 >= mem[96]:
                revert with 'NH{q', 50
            if mem[128] and mem[160] > -1 / mem[128]:
                revert with 'NH{q', 17
            if mem[128] * mem[160] and mem[192] > -1 / mem[128] * mem[160]:
                revert with 'NH{q', 17
            if mem[128] * mem[160] * mem[192] and 10^9 > -1 / mem[128] * mem[160] * mem[192]:
                revert with 'NH{q', 17
            if 2 >= mem[96]:
                revert with 'NH{q', 50
            if 1 >= mem[96]:
                revert with 'NH{q', 50
            if mem[160] and mem[192] > -1 / mem[160]:
                revert with 'NH{q', 17
            if mem[160] * mem[192] and 10^6 > -1 / mem[160] * mem[192]:
                revert with 'NH{q', 17
            if 2 >= mem[96]:
                revert with 'NH{q', 50
            if 0 >= mem[(32 * ('cd', 68).length) + 128]:
                revert with 'NH{q', 50
            if mem[(32 * ('cd', 68).length) + 160] and mem[192] > -1 / mem[(32 * ('cd', 68).length) + 160]:
                revert with 'NH{q', 17
            if mem[(32 * ('cd', 68).length) + 160] * mem[192] and 1000 > -1 / mem[(32 * ('cd', 68).length) + 160] * mem[192]:
                revert with 'NH{q', 17
            if 1 >= mem[(32 * ('cd', 68).length) + 128]:
                revert with 'NH{q', 50
            if 0 >= mem[(32 * ('cd', 68).length) + 128]:
                revert with 'NH{q', 50
            if mem[(32 * ('cd', 68).length) + 160] and mem[(32 * ('cd', 68).length) + 192] > -1 / mem[(32 * ('cd', 68).length) + 160]:
                revert with 'NH{q', 17
            if mem[(32 * ('cd', 68).length) + 160] * mem[(32 * ('cd', 68).length) + 192] > -(1000 * mem[(32 * ('cd', 68).length) + 160] * mem[192] / 997) - 1:
                revert with 'NH{q', 17
            if (mem[(32 * ('cd', 68).length) + 160] * mem[(32 * ('cd', 68).length) + 192]) + (1000 * mem[(32 * ('cd', 68).length) + 160] * mem[192] / 997) > -(10^6 * mem[160] * mem[192] / 994009) - 1:
                revert with 'NH{q', 17
            mem[mem[64]] = 160
            mem[mem[64] + 160] = mem[96]
            mem[mem[64] + 192 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
            mem[mem[64] + 32] = (32 * mem[96]) + 192
            _2981 = mem[(32 * ('cd', 68).length) + 128]
            mem[mem[64] + (32 * mem[96]) + 192] = mem[(32 * ('cd', 68).length) + 128]
            mem[mem[64] + (32 * mem[96]) + 224 len 32 * _2981] = mem[(32 * ('cd', 68).length) + 160 len 32 * _2981]
            mem[mem[64] + 64] = 0
            mem[mem[64] + 96] = 0
            return 160, (32 * mem[96]) + 192, 0, 0, 0, mem[96], mem[mem[64] + 192 len (32 * mem[96]) + (32 * _2981) + 32]
        mem[(32 * ('cd', 68).length) + 160 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
        idx = 0
        while idx < ('cd', 68).length:
            if not idx:
                if ('cd', 68).length < 1:
                    revert with 'NH{q', 17
                if idx == ('cd', 68).length - 1:
                    if idx >= ('cd', 68).length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                    staticcall address(cd[((32 * idx) + cd[68] + 36)]).factory() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1106 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1106] == mem[_1106 + 12 len 20]
                    revert with 0, 'JoeLibrary: IDENTICAL_ADDRESSES'
                if idx >= ('cd', 36).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                if idx >= ('cd', 68).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                staticcall address(cd[((32 * idx) + cd[68] + 36)]).factory() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1151 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1168 = mem[_1151]
                require mem[_1151] == mem[_1151 + 12 len 20]
                if not address(cd[4]) - address(cd[((32 * idx) + cd[36] + 36)]):
                    revert with 0, 'JoeLibrary: IDENTICAL_ADDRESSES'
                if address(cd[4]) < address(cd[((32 * idx) + cd[36] + 36)]):
                    if not address(cd[4]):
                        revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                    mem[mem[64] + 4] = address(cd[4])
                    mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
                    staticcall address(_1168).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(cd[4]), address(cd[((32 * idx) + cd[36] + 36)])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1446 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1446] == mem[_1446 + 12 len 20]
                    if not mem[_1446 + 12 len 20]:
                        revert with 0, 'Nonexisted pair'
                    staticcall mem[_1446 + 12 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1639 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _1653 = mem[_1639]
                    require mem[_1639] == mem[_1639 + 18 len 14]
                    _1820 = mem[_1639 + 32]
                    require mem[_1639 + 32] == mem[_1639 + 50 len 14]
                    require mem[_1639 + 64] == mem[_1639 + 92 len 4]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if idx >= mem[(32 * ('cd', 68).length) + 128]:
                        revert with 'NH{q', 50
                    if address(cd[4]) == address(cd[4]):
                        mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = mem[_1639 + 50 len 14]
                        mem[(32 * idx) + 128] = Mask(112, 0, _1653)
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if Mask(112, 0, _1653) <= 0:
                            revert with 0, 'No liquidity'
                    else:
                        mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = mem[_1639 + 18 len 14]
                        mem[(32 * idx) + 128] = Mask(112, 0, _1820)
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if Mask(112, 0, _1820) <= 0:
                            revert with 0, 'No liquidity'
                else:
                    if not address(cd[((32 * idx) + cd[36] + 36)]):
                        revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                    mem[mem[64] + 4] = address(cd[4])
                    mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
                    staticcall address(_1168).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(cd[4]), address(cd[((32 * idx) + cd[36] + 36)])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1447 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1447] == mem[_1447 + 12 len 20]
                    if not mem[_1447 + 12 len 20]:
                        revert with 0, 'Nonexisted pair'
                    staticcall mem[_1447 + 12 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1640 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _1654 = mem[_1640]
                    require mem[_1640] == mem[_1640 + 18 len 14]
                    _1821 = mem[_1640 + 32]
                    require mem[_1640 + 32] == mem[_1640 + 50 len 14]
                    require mem[_1640 + 64] == mem[_1640 + 92 len 4]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if idx >= mem[(32 * ('cd', 68).length) + 128]:
                        revert with 'NH{q', 50
                    if address(cd[4]) == address(cd[((32 * idx) + cd[36] + 36)]):
                        mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = mem[_1640 + 50 len 14]
                        mem[(32 * idx) + 128] = Mask(112, 0, _1654)
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if Mask(112, 0, _1654) <= 0:
                            revert with 0, 'No liquidity'
                    else:
                        mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = mem[_1640 + 18 len 14]
                        mem[(32 * idx) + 128] = Mask(112, 0, _1821)
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if Mask(112, 0, _1821) <= 0:
                            revert with 0, 'No liquidity'
            else:
                if idx < 1:
                    revert with 'NH{q', 17
                if idx - 1 >= ('cd', 36).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx - 1) + cd[36] + 36)] == address(cd[((32 * idx - 1) + cd[36] + 36)])
                if ('cd', 68).length < 1:
                    revert with 'NH{q', 17
                if idx == ('cd', 68).length - 1:
                    if idx >= ('cd', 68).length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                    staticcall address(cd[((32 * idx) + cd[68] + 36)]).factory() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1190 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1228 = mem[_1190]
                    require mem[_1190] == mem[_1190 + 12 len 20]
                    if not address(cd[((32 * idx - 1) + cd[36] + 36)]) - address(cd[4]):
                        revert with 0, 'JoeLibrary: IDENTICAL_ADDRESSES'
                    if address(cd[((32 * idx - 1) + cd[36] + 36)]) < address(cd[4]):
                        if not address(cd[((32 * idx - 1) + cd[36] + 36)]):
                            revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                        mem[mem[64] + 4] = address(cd[((32 * idx - 1) + cd[36] + 36)])
                        mem[mem[64] + 36] = address(cd[4])
                        staticcall address(_1228).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx - 1) + cd[36] + 36)]), address(cd[4])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1534 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1534] == mem[_1534 + 12 len 20]
                        if not mem[_1534 + 12 len 20]:
                            revert with 0, 'Nonexisted pair'
                        staticcall mem[_1534 + 12 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1767 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _1822 = mem[_1767]
                        require mem[_1767] == mem[_1767 + 18 len 14]
                        _1864 = mem[_1767 + 32]
                        require mem[_1767 + 32] == mem[_1767 + 50 len 14]
                        require mem[_1767 + 64] == mem[_1767 + 92 len 4]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if idx >= mem[(32 * ('cd', 68).length) + 128]:
                            revert with 'NH{q', 50
                        if address(cd[((32 * idx - 1) + cd[36] + 36)]) == address(cd[((32 * idx - 1) + cd[36] + 36)]):
                            mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = mem[_1767 + 50 len 14]
                            mem[(32 * idx) + 128] = Mask(112, 0, _1822)
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            if Mask(112, 0, _1822) <= 0:
                                revert with 0, 'No liquidity'
                        else:
                            mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = mem[_1767 + 18 len 14]
                            mem[(32 * idx) + 128] = Mask(112, 0, _1864)
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            if Mask(112, 0, _1864) <= 0:
                                revert with 0, 'No liquidity'
                    else:
                        if not address(cd[4]):
                            revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                        mem[mem[64] + 4] = address(cd[((32 * idx - 1) + cd[36] + 36)])
                        mem[mem[64] + 36] = address(cd[4])
                        staticcall address(_1228).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx - 1) + cd[36] + 36)]), address(cd[4])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1535 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1535] == mem[_1535 + 12 len 20]
                        if not mem[_1535 + 12 len 20]:
                            revert with 0, 'Nonexisted pair'
                        staticcall mem[_1535 + 12 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1768 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _1823 = mem[_1768]
                        require mem[_1768] == mem[_1768 + 18 len 14]
                        _1865 = mem[_1768 + 32]
                        require mem[_1768 + 32] == mem[_1768 + 50 len 14]
                        require mem[_1768 + 64] == mem[_1768 + 92 len 4]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if idx >= mem[(32 * ('cd', 68).length) + 128]:
                            revert with 'NH{q', 50
                        if address(cd[((32 * idx - 1) + cd[36] + 36)]) == address(cd[4]):
                            mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = mem[_1768 + 50 len 14]
                            mem[(32 * idx) + 128] = Mask(112, 0, _1823)
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            if Mask(112, 0, _1823) <= 0:
                                revert with 0, 'No liquidity'
                        else:
                            mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = mem[_1768 + 18 len 14]
                            mem[(32 * idx) + 128] = Mask(112, 0, _1865)
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            if Mask(112, 0, _1865) <= 0:
                                revert with 0, 'No liquidity'
                else:
                    if idx >= ('cd', 36).length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                    if idx >= ('cd', 68).length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                    staticcall address(cd[((32 * idx) + cd[68] + 36)]).factory() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1319 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1337 = mem[_1319]
                    require mem[_1319] == mem[_1319 + 12 len 20]
                    if not address(cd[((32 * idx - 1) + cd[36] + 36)]) - address(cd[((32 * idx) + cd[36] + 36)]):
                        revert with 0, 'JoeLibrary: IDENTICAL_ADDRESSES'
                    if address(cd[((32 * idx - 1) + cd[36] + 36)]) < address(cd[((32 * idx) + cd[36] + 36)]):
                        if not address(cd[((32 * idx - 1) + cd[36] + 36)]):
                            revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                        mem[mem[64] + 4] = address(cd[((32 * idx - 1) + cd[36] + 36)])
                        mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
                        staticcall address(_1337).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx - 1) + cd[36] + 36)]), address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1713 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1713] == mem[_1713 + 12 len 20]
                        if not mem[_1713 + 12 len 20]:
                            revert with 0, 'Nonexisted pair'
                        staticcall mem[_1713 + 12 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1930 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _1947 = mem[_1930]
                        require mem[_1930] == mem[_1930 + 18 len 14]
                        _2104 = mem[_1930 + 32]
                        require mem[_1930 + 32] == mem[_1930 + 50 len 14]
                        require mem[_1930 + 64] == mem[_1930 + 92 len 4]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if idx >= mem[(32 * ('cd', 68).length) + 128]:
                            revert with 'NH{q', 50
                        if address(cd[((32 * idx - 1) + cd[36] + 36)]) == address(cd[((32 * idx - 1) + cd[36] + 36)]):
                            mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = mem[_1930 + 50 len 14]
                            mem[(32 * idx) + 128] = Mask(112, 0, _1947)
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            if Mask(112, 0, _1947) <= 0:
                                revert with 0, 'No liquidity'
                        else:
                            mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = mem[_1930 + 18 len 14]
                            mem[(32 * idx) + 128] = Mask(112, 0, _2104)
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            if Mask(112, 0, _2104) <= 0:
                                revert with 0, 'No liquidity'
                    else:
                        if not address(cd[((32 * idx) + cd[36] + 36)]):
                            revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                        mem[mem[64] + 4] = address(cd[((32 * idx - 1) + cd[36] + 36)])
                        mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
                        staticcall address(_1337).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx - 1) + cd[36] + 36)]), address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1714 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1714] == mem[_1714 + 12 len 20]
                        if not mem[_1714 + 12 len 20]:
                            revert with 0, 'Nonexisted pair'
                        staticcall mem[_1714 + 12 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1931 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _1948 = mem[_1931]
                        require mem[_1931] == mem[_1931 + 18 len 14]
                        _2105 = mem[_1931 + 32]
                        require mem[_1931 + 32] == mem[_1931 + 50 len 14]
                        require mem[_1931 + 64] == mem[_1931 + 92 len 4]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if idx >= mem[(32 * ('cd', 68).length) + 128]:
                            revert with 'NH{q', 50
                        if address(cd[((32 * idx - 1) + cd[36] + 36)]) == address(cd[((32 * idx) + cd[36] + 36)]):
                            mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = mem[_1931 + 50 len 14]
                            mem[(32 * idx) + 128] = Mask(112, 0, _1948)
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            if Mask(112, 0, _1948) <= 0:
                                revert with 0, 'No liquidity'
                        else:
                            mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = mem[_1931 + 18 len 14]
                            mem[(32 * idx) + 128] = Mask(112, 0, _2105)
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            if Mask(112, 0, _2105) <= 0:
                                revert with 0, 'No liquidity'
            if idx >= mem[(32 * ('cd', 68).length) + 128]:
                revert with 'NH{q', 50
            if mem[(32 * idx) + (32 * ('cd', 68).length) + 160] <= 0:
                revert with 0, 'No liquidity'
            idx = idx + 1
            continue 
        if not ('cd', 36).length - 1:
            if 1 >= mem[(32 * ('cd', 68).length) + 128]:
                revert with 'NH{q', 50
            if 0 >= mem[(32 * ('cd', 68).length) + 128]:
                revert with 'NH{q', 50
            if mem[(32 * ('cd', 68).length) + 160] and mem[(32 * ('cd', 68).length) + 192] > -1 / mem[(32 * ('cd', 68).length) + 160]:
                revert with 'NH{q', 17
            if 1 >= mem[96]:
                revert with 'NH{q', 50
            if 0 >= mem[96]:
                revert with 'NH{q', 50
            if mem[128] and mem[160] > -1 / mem[128]:
                revert with 'NH{q', 17
            if mem[128] * mem[160] and 10^6 > -1 / mem[128] * mem[160]:
                revert with 'NH{q', 17
            if 1 >= mem[96]:
                revert with 'NH{q', 50
            if mem[160] and 1000 > -1 / mem[160]:
                revert with 'NH{q', 17
            if 0 >= mem[(32 * ('cd', 68).length) + 128]:
                revert with 'NH{q', 50
            if mem[(32 * ('cd', 68).length) + 160] > -(1000 * mem[160] / 997) - 1:
                revert with 'NH{q', 17
            mem[mem[64]] = 160
            mem[mem[64] + 160] = mem[96]
            mem[mem[64] + 192 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
            mem[mem[64] + 32] = (32 * mem[96]) + 192
            _2985 = mem[(32 * ('cd', 68).length) + 128]
            mem[mem[64] + (32 * mem[96]) + 192] = mem[(32 * ('cd', 68).length) + 128]
            mem[mem[64] + (32 * mem[96]) + 224 len 32 * _2985] = mem[(32 * ('cd', 68).length) + 160 len 32 * _2985]
            mem[mem[64] + 64] = 0
            mem[mem[64] + 96] = 0
            return 160, (32 * mem[96]) + 192, 0, 0, 0, mem[96], mem[mem[64] + 192 len (32 * mem[96]) + (32 * _2985) + 32]
        if ('cd', 36).length - 2:
            mem[mem[64]] = 160
            mem[mem[64] + 160] = mem[96]
            mem[mem[64] + 192 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
            mem[mem[64] + 32] = (32 * mem[96]) + 192
            _2983 = mem[(32 * ('cd', 68).length) + 128]
            mem[mem[64] + (32 * mem[96]) + 192] = mem[(32 * ('cd', 68).length) + 128]
            mem[mem[64] + (32 * mem[96]) + 224 len 32 * _2983] = mem[(32 * ('cd', 68).length) + 160 len 32 * _2983]
            mem[mem[64] + 64] = 0
            mem[mem[64] + 96] = 0
            return 160, (32 * mem[96]) + 192, 0, 0, 0, mem[96], mem[mem[64] + 192 len (32 * mem[96]) + (32 * _2983) + 32]
        if 2 >= mem[(32 * ('cd', 68).length) + 128]:
            revert with 'NH{q', 50
        if 1 >= mem[(32 * ('cd', 68).length) + 128]:
            revert with 'NH{q', 50
        if 0 >= mem[(32 * ('cd', 68).length) + 128]:
            revert with 'NH{q', 50
        if mem[(32 * ('cd', 68).length) + 160] and mem[(32 * ('cd', 68).length) + 192] > -1 / mem[(32 * ('cd', 68).length) + 160]:
            revert with 'NH{q', 17
        if mem[(32 * ('cd', 68).length) + 160] * mem[(32 * ('cd', 68).length) + 192] and mem[(32 * ('cd', 68).length) + 224] > -1 / mem[(32 * ('cd', 68).length) + 160] * mem[(32 * ('cd', 68).length) + 192]:
            revert with 'NH{q', 17
        if 2 >= mem[96]:
            revert with 'NH{q', 50
        if 1 >= mem[96]:
            revert with 'NH{q', 50
        if 0 >= mem[96]:
            revert with 'NH{q', 50
        if mem[128] and mem[160] > -1 / mem[128]:
            revert with 'NH{q', 17
        if mem[128] * mem[160] and mem[192] > -1 / mem[128] * mem[160]:
            revert with 'NH{q', 17
        if mem[128] * mem[160] * mem[192] and 10^9 > -1 / mem[128] * mem[160] * mem[192]:
            revert with 'NH{q', 17
        if 2 >= mem[96]:
            revert with 'NH{q', 50
        if 1 >= mem[96]:
            revert with 'NH{q', 50
        if mem[160] and mem[192] > -1 / mem[160]:
            revert with 'NH{q', 17
        if mem[160] * mem[192] and 10^6 > -1 / mem[160] * mem[192]:
            revert with 'NH{q', 17
        if 2 >= mem[96]:
            revert with 'NH{q', 50
        if 0 >= mem[(32 * ('cd', 68).length) + 128]:
            revert with 'NH{q', 50
        if mem[(32 * ('cd', 68).length) + 160] and mem[192] > -1 / mem[(32 * ('cd', 68).length) + 160]:
            revert with 'NH{q', 17
        if mem[(32 * ('cd', 68).length) + 160] * mem[192] and 1000 > -1 / mem[(32 * ('cd', 68).length) + 160] * mem[192]:
            revert with 'NH{q', 17
        if 1 >= mem[(32 * ('cd', 68).length) + 128]:
            revert with 'NH{q', 50
        if 0 >= mem[(32 * ('cd', 68).length) + 128]:
            revert with 'NH{q', 50
        if mem[(32 * ('cd', 68).length) + 160] and mem[(32 * ('cd', 68).length) + 192] > -1 / mem[(32 * ('cd', 68).length) + 160]:
            revert with 'NH{q', 17
        if mem[(32 * ('cd', 68).length) + 160] * mem[(32 * ('cd', 68).length) + 192] > -(1000 * mem[(32 * ('cd', 68).length) + 160] * mem[192] / 997) - 1:
            revert with 'NH{q', 17
        if (mem[(32 * ('cd', 68).length) + 160] * mem[(32 * ('cd', 68).length) + 192]) + (1000 * mem[(32 * ('cd', 68).length) + 160] * mem[192] / 997) > -(10^6 * mem[160] * mem[192] / 994009) - 1:
            revert with 'NH{q', 17
        mem[mem[64]] = 160
        mem[mem[64] + 160] = mem[96]
        mem[mem[64] + 192 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
        mem[mem[64] + 32] = (32 * mem[96]) + 192
        _2984 = mem[(32 * ('cd', 68).length) + 128]
        mem[mem[64] + (32 * mem[96]) + 192] = mem[(32 * ('cd', 68).length) + 128]
        mem[mem[64] + (32 * mem[96]) + 224 len 32 * _2984] = mem[(32 * ('cd', 68).length) + 160 len 32 * _2984]
        mem[mem[64] + 64] = 0
        mem[mem[64] + 96] = 0
        return 160, (32 * mem[96]) + 192, 0, 0, 0, mem[96], mem[mem[64] + 192 len (32 * mem[96]) + (32 * _2984) + 32]
    if ('cd', 36).length != 2:
        revert with 0, 'Bad length'
    if ('cd', 36).length > -2:
        revert with 'NH{q', 17
    if ('cd', 68).length != ('cd', 36).length + 1:
        revert with 0, 'Length mismatch'
    if 0 >= ('cd', 36).length:
        revert with 'NH{q', 50
    require ('cd', 36)[0] == address(('cd', 36)[0])
    if address(('cd', 36)[0]) == address(cd[4]):
        revert with 0, 'Bad tokens chain'
    if ('cd', 36).length < 1:
        revert with 'NH{q', 17
    if ('cd', 36).length - 1 >= ('cd', 36).length:
        revert with 'NH{q', 50
    require cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)] == address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)])
    if address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]) == address(cd[4]):
        revert with 0, 'Bad tokens chain'
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    mem[96] = ('cd', 68).length
    if not ('cd', 68).length:
        if ('cd', 68).length > test266151307():
            revert with 'NH{q', 65
        mem[(32 * ('cd', 68).length) + 128] = ('cd', 68).length
        mem[64] = (64 * ('cd', 68).length) + 160
        if not ('cd', 68).length:
            idx = 0
            while idx < ('cd', 68).length:
                if not idx:
                    if ('cd', 68).length < 1:
                        revert with 'NH{q', 17
                    if idx == ('cd', 68).length - 1:
                        if idx >= ('cd', 68).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                        staticcall address(cd[((32 * idx) + cd[68] + 36)]).factory() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1109 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1109] == mem[_1109 + 12 len 20]
                        revert with 0, 'JoeLibrary: IDENTICAL_ADDRESSES'
                    if idx >= ('cd', 36).length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                    if idx >= ('cd', 68).length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                    staticcall address(cd[((32 * idx) + cd[68] + 36)]).factory() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1153 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1169 = mem[_1153]
                    require mem[_1153] == mem[_1153 + 12 len 20]
                    if not address(cd[4]) - address(cd[((32 * idx) + cd[36] + 36)]):
                        revert with 0, 'JoeLibrary: IDENTICAL_ADDRESSES'
                    if address(cd[4]) < address(cd[((32 * idx) + cd[36] + 36)]):
                        if not address(cd[4]):
                            revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                        mem[mem[64] + 4] = address(cd[4])
                        mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
                        staticcall address(_1169).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(cd[4]), address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1449 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1449] == mem[_1449 + 12 len 20]
                        if not mem[_1449 + 12 len 20]:
                            revert with 0, 'Nonexisted pair'
                        staticcall mem[_1449 + 12 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1641 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _1655 = mem[_1641]
                        require mem[_1641] == mem[_1641 + 18 len 14]
                        _1824 = mem[_1641 + 32]
                        require mem[_1641 + 32] == mem[_1641 + 50 len 14]
                        require mem[_1641 + 64] == mem[_1641 + 92 len 4]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if idx >= mem[(32 * ('cd', 68).length) + 128]:
                            revert with 'NH{q', 50
                        if address(cd[4]) == address(cd[4]):
                            mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = mem[_1641 + 50 len 14]
                            mem[(32 * idx) + 128] = Mask(112, 0, _1655)
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            if Mask(112, 0, _1655) <= 0:
                                revert with 0, 'No liquidity'
                        else:
                            mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = mem[_1641 + 18 len 14]
                            mem[(32 * idx) + 128] = Mask(112, 0, _1824)
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            if Mask(112, 0, _1824) <= 0:
                                revert with 0, 'No liquidity'
                    else:
                        if not address(cd[((32 * idx) + cd[36] + 36)]):
                            revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                        mem[mem[64] + 4] = address(cd[4])
                        mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
                        staticcall address(_1169).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(cd[4]), address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1450 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1450] == mem[_1450 + 12 len 20]
                        if not mem[_1450 + 12 len 20]:
                            revert with 0, 'Nonexisted pair'
                        staticcall mem[_1450 + 12 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1642 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _1656 = mem[_1642]
                        require mem[_1642] == mem[_1642 + 18 len 14]
                        _1825 = mem[_1642 + 32]
                        require mem[_1642 + 32] == mem[_1642 + 50 len 14]
                        require mem[_1642 + 64] == mem[_1642 + 92 len 4]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if idx >= mem[(32 * ('cd', 68).length) + 128]:
                            revert with 'NH{q', 50
                        if address(cd[4]) == address(cd[((32 * idx) + cd[36] + 36)]):
                            mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = mem[_1642 + 50 len 14]
                            mem[(32 * idx) + 128] = Mask(112, 0, _1656)
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            if Mask(112, 0, _1656) <= 0:
                                revert with 0, 'No liquidity'
                        else:
                            mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = mem[_1642 + 18 len 14]
                            mem[(32 * idx) + 128] = Mask(112, 0, _1825)
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            if Mask(112, 0, _1825) <= 0:
                                revert with 0, 'No liquidity'
                else:
                    if idx < 1:
                        revert with 'NH{q', 17
                    if idx - 1 >= ('cd', 36).length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx - 1) + cd[36] + 36)] == address(cd[((32 * idx - 1) + cd[36] + 36)])
                    if ('cd', 68).length < 1:
                        revert with 'NH{q', 17
                    if idx == ('cd', 68).length - 1:
                        if idx >= ('cd', 68).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                        staticcall address(cd[((32 * idx) + cd[68] + 36)]).factory() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1191 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1233 = mem[_1191]
                        require mem[_1191] == mem[_1191 + 12 len 20]
                        if not address(cd[((32 * idx - 1) + cd[36] + 36)]) - address(cd[4]):
                            revert with 0, 'JoeLibrary: IDENTICAL_ADDRESSES'
                        if address(cd[((32 * idx - 1) + cd[36] + 36)]) < address(cd[4]):
                            if not address(cd[((32 * idx - 1) + cd[36] + 36)]):
                                revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                            mem[mem[64] + 4] = address(cd[((32 * idx - 1) + cd[36] + 36)])
                            mem[mem[64] + 36] = address(cd[4])
                            staticcall address(_1233).getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * idx - 1) + cd[36] + 36)]), address(cd[4])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1536 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1536] == mem[_1536 + 12 len 20]
                            if not mem[_1536 + 12 len 20]:
                                revert with 0, 'Nonexisted pair'
                            staticcall mem[_1536 + 12 len 20].getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1773 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _1826 = mem[_1773]
                            require mem[_1773] == mem[_1773 + 18 len 14]
                            _1868 = mem[_1773 + 32]
                            require mem[_1773 + 32] == mem[_1773 + 50 len 14]
                            require mem[_1773 + 64] == mem[_1773 + 92 len 4]
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            if idx >= mem[(32 * ('cd', 68).length) + 128]:
                                revert with 'NH{q', 50
                            if address(cd[((32 * idx - 1) + cd[36] + 36)]) == address(cd[((32 * idx - 1) + cd[36] + 36)]):
                                mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = mem[_1773 + 50 len 14]
                                mem[(32 * idx) + 128] = Mask(112, 0, _1826)
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                if Mask(112, 0, _1826) <= 0:
                                    revert with 0, 'No liquidity'
                            else:
                                mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = mem[_1773 + 18 len 14]
                                mem[(32 * idx) + 128] = Mask(112, 0, _1868)
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                if Mask(112, 0, _1868) <= 0:
                                    revert with 0, 'No liquidity'
                        else:
                            if not address(cd[4]):
                                revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                            mem[mem[64] + 4] = address(cd[((32 * idx - 1) + cd[36] + 36)])
                            mem[mem[64] + 36] = address(cd[4])
                            staticcall address(_1233).getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * idx - 1) + cd[36] + 36)]), address(cd[4])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1537 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1537] == mem[_1537 + 12 len 20]
                            if not mem[_1537 + 12 len 20]:
                                revert with 0, 'Nonexisted pair'
                            staticcall mem[_1537 + 12 len 20].getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1774 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _1827 = mem[_1774]
                            require mem[_1774] == mem[_1774 + 18 len 14]
                            _1869 = mem[_1774 + 32]
                            require mem[_1774 + 32] == mem[_1774 + 50 len 14]
                            require mem[_1774 + 64] == mem[_1774 + 92 len 4]
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            if idx >= mem[(32 * ('cd', 68).length) + 128]:
                                revert with 'NH{q', 50
                            if address(cd[((32 * idx - 1) + cd[36] + 36)]) == address(cd[4]):
                                mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = mem[_1774 + 50 len 14]
                                mem[(32 * idx) + 128] = Mask(112, 0, _1827)
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                if Mask(112, 0, _1827) <= 0:
                                    revert with 0, 'No liquidity'
                            else:
                                mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = mem[_1774 + 18 len 14]
                                mem[(32 * idx) + 128] = Mask(112, 0, _1869)
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                if Mask(112, 0, _1869) <= 0:
                                    revert with 0, 'No liquidity'
                    else:
                        if idx >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        if idx >= ('cd', 68).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                        staticcall address(cd[((32 * idx) + cd[68] + 36)]).factory() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1320 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1339 = mem[_1320]
                        require mem[_1320] == mem[_1320 + 12 len 20]
                        if not address(cd[((32 * idx - 1) + cd[36] + 36)]) - address(cd[((32 * idx) + cd[36] + 36)]):
                            revert with 0, 'JoeLibrary: IDENTICAL_ADDRESSES'
                        if address(cd[((32 * idx - 1) + cd[36] + 36)]) < address(cd[((32 * idx) + cd[36] + 36)]):
                            if not address(cd[((32 * idx - 1) + cd[36] + 36)]):
                                revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                            mem[mem[64] + 4] = address(cd[((32 * idx - 1) + cd[36] + 36)])
                            mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
                            staticcall address(_1339).getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * idx - 1) + cd[36] + 36)]), address(cd[((32 * idx) + cd[36] + 36)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1723 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1723] == mem[_1723 + 12 len 20]
                            if not mem[_1723 + 12 len 20]:
                                revert with 0, 'Nonexisted pair'
                            staticcall mem[_1723 + 12 len 20].getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1933 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _1949 = mem[_1933]
                            require mem[_1933] == mem[_1933 + 18 len 14]
                            _2112 = mem[_1933 + 32]
                            require mem[_1933 + 32] == mem[_1933 + 50 len 14]
                            require mem[_1933 + 64] == mem[_1933 + 92 len 4]
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            if idx >= mem[(32 * ('cd', 68).length) + 128]:
                                revert with 'NH{q', 50
                            if address(cd[((32 * idx - 1) + cd[36] + 36)]) == address(cd[((32 * idx - 1) + cd[36] + 36)]):
                                mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = mem[_1933 + 50 len 14]
                                mem[(32 * idx) + 128] = Mask(112, 0, _1949)
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                if Mask(112, 0, _1949) <= 0:
                                    revert with 0, 'No liquidity'
                            else:
                                mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = mem[_1933 + 18 len 14]
                                mem[(32 * idx) + 128] = Mask(112, 0, _2112)
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                if Mask(112, 0, _2112) <= 0:
                                    revert with 0, 'No liquidity'
                        else:
                            if not address(cd[((32 * idx) + cd[36] + 36)]):
                                revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                            mem[mem[64] + 4] = address(cd[((32 * idx - 1) + cd[36] + 36)])
                            mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
                            staticcall address(_1339).getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * idx - 1) + cd[36] + 36)]), address(cd[((32 * idx) + cd[36] + 36)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1724 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1724] == mem[_1724 + 12 len 20]
                            if not mem[_1724 + 12 len 20]:
                                revert with 0, 'Nonexisted pair'
                            staticcall mem[_1724 + 12 len 20].getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1934 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _1950 = mem[_1934]
                            require mem[_1934] == mem[_1934 + 18 len 14]
                            _2113 = mem[_1934 + 32]
                            require mem[_1934 + 32] == mem[_1934 + 50 len 14]
                            require mem[_1934 + 64] == mem[_1934 + 92 len 4]
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            if idx >= mem[(32 * ('cd', 68).length) + 128]:
                                revert with 'NH{q', 50
                            if address(cd[((32 * idx - 1) + cd[36] + 36)]) == address(cd[((32 * idx) + cd[36] + 36)]):
                                mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = mem[_1934 + 50 len 14]
                                mem[(32 * idx) + 128] = Mask(112, 0, _1950)
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                if Mask(112, 0, _1950) <= 0:
                                    revert with 0, 'No liquidity'
                            else:
                                mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = mem[_1934 + 18 len 14]
                                mem[(32 * idx) + 128] = Mask(112, 0, _2113)
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                if Mask(112, 0, _2113) <= 0:
                                    revert with 0, 'No liquidity'
                if idx >= mem[(32 * ('cd', 68).length) + 128]:
                    revert with 'NH{q', 50
                if mem[(32 * idx) + (32 * ('cd', 68).length) + 160] <= 0:
                    revert with 0, 'No liquidity'
                idx = idx + 1
                continue 
            if not ('cd', 36).length - 1:
                if 1 >= mem[(32 * ('cd', 68).length) + 128]:
                    revert with 'NH{q', 50
                if 0 >= mem[(32 * ('cd', 68).length) + 128]:
                    revert with 'NH{q', 50
                if mem[(32 * ('cd', 68).length) + 160] and mem[(32 * ('cd', 68).length) + 192] > -1 / mem[(32 * ('cd', 68).length) + 160]:
                    revert with 'NH{q', 17
                if 1 >= mem[96]:
                    revert with 'NH{q', 50
                if 0 >= mem[96]:
                    revert with 'NH{q', 50
                if mem[128] and mem[160] > -1 / mem[128]:
                    revert with 'NH{q', 17
                if mem[128] * mem[160] and 10^6 > -1 / mem[128] * mem[160]:
                    revert with 'NH{q', 17
                if 1 >= mem[96]:
                    revert with 'NH{q', 50
                if mem[160] and 1000 > -1 / mem[160]:
                    revert with 'NH{q', 17
                if 0 >= mem[(32 * ('cd', 68).length) + 128]:
                    revert with 'NH{q', 50
                if mem[(32 * ('cd', 68).length) + 160] > -(1000 * mem[160] / 997) - 1:
                    revert with 'NH{q', 17
                mem[mem[64]] = 160
                mem[mem[64] + 160] = mem[96]
                mem[mem[64] + 192 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                mem[mem[64] + 32] = (32 * mem[96]) + 192
                _2988 = mem[(32 * ('cd', 68).length) + 128]
                mem[mem[64] + (32 * mem[96]) + 192] = mem[(32 * ('cd', 68).length) + 128]
                mem[mem[64] + (32 * mem[96]) + 224 len 32 * _2988] = mem[(32 * ('cd', 68).length) + 160 len 32 * _2988]
                mem[mem[64] + 64] = 0
                mem[mem[64] + 96] = 0
                return 160, (32 * mem[96]) + 192, 0, 0, 0, mem[96], mem[mem[64] + 192 len (32 * mem[96]) + (32 * _2988) + 32]
            if ('cd', 36).length - 2:
                mem[mem[64]] = 160
                mem[mem[64] + 160] = mem[96]
                mem[mem[64] + 192 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                mem[mem[64] + 32] = (32 * mem[96]) + 192
                _2986 = mem[(32 * ('cd', 68).length) + 128]
                mem[mem[64] + (32 * mem[96]) + 192] = mem[(32 * ('cd', 68).length) + 128]
                mem[mem[64] + (32 * mem[96]) + 224 len 32 * _2986] = mem[(32 * ('cd', 68).length) + 160 len 32 * _2986]
                mem[mem[64] + 64] = 0
                mem[mem[64] + 96] = 0
                return 160, (32 * mem[96]) + 192, 0, 0, 0, mem[96], mem[mem[64] + 192 len (32 * mem[96]) + (32 * _2986) + 32]
            if 2 >= mem[(32 * ('cd', 68).length) + 128]:
                revert with 'NH{q', 50
            if 1 >= mem[(32 * ('cd', 68).length) + 128]:
                revert with 'NH{q', 50
            if 0 >= mem[(32 * ('cd', 68).length) + 128]:
                revert with 'NH{q', 50
            if mem[(32 * ('cd', 68).length) + 160] and mem[(32 * ('cd', 68).length) + 192] > -1 / mem[(32 * ('cd', 68).length) + 160]:
                revert with 'NH{q', 17
            if mem[(32 * ('cd', 68).length) + 160] * mem[(32 * ('cd', 68).length) + 192] and mem[(32 * ('cd', 68).length) + 224] > -1 / mem[(32 * ('cd', 68).length) + 160] * mem[(32 * ('cd', 68).length) + 192]:
                revert with 'NH{q', 17
            if 2 >= mem[96]:
                revert with 'NH{q', 50
            if 1 >= mem[96]:
                revert with 'NH{q', 50
            if 0 >= mem[96]:
                revert with 'NH{q', 50
            if mem[128] and mem[160] > -1 / mem[128]:
                revert with 'NH{q', 17
            if mem[128] * mem[160] and mem[192] > -1 / mem[128] * mem[160]:
                revert with 'NH{q', 17
            if mem[128] * mem[160] * mem[192] and 10^9 > -1 / mem[128] * mem[160] * mem[192]:
                revert with 'NH{q', 17
            if 2 >= mem[96]:
                revert with 'NH{q', 50
            if 1 >= mem[96]:
                revert with 'NH{q', 50
            if mem[160] and mem[192] > -1 / mem[160]:
                revert with 'NH{q', 17
            if mem[160] * mem[192] and 10^6 > -1 / mem[160] * mem[192]:
                revert with 'NH{q', 17
            if 2 >= mem[96]:
                revert with 'NH{q', 50
            if 0 >= mem[(32 * ('cd', 68).length) + 128]:
                revert with 'NH{q', 50
            if mem[(32 * ('cd', 68).length) + 160] and mem[192] > -1 / mem[(32 * ('cd', 68).length) + 160]:
                revert with 'NH{q', 17
            if mem[(32 * ('cd', 68).length) + 160] * mem[192] and 1000 > -1 / mem[(32 * ('cd', 68).length) + 160] * mem[192]:
                revert with 'NH{q', 17
            if 1 >= mem[(32 * ('cd', 68).length) + 128]:
                revert with 'NH{q', 50
            if 0 >= mem[(32 * ('cd', 68).length) + 128]:
                revert with 'NH{q', 50
            if mem[(32 * ('cd', 68).length) + 160] and mem[(32 * ('cd', 68).length) + 192] > -1 / mem[(32 * ('cd', 68).length) + 160]:
                revert with 'NH{q', 17
            if mem[(32 * ('cd', 68).length) + 160] * mem[(32 * ('cd', 68).length) + 192] > -(1000 * mem[(32 * ('cd', 68).length) + 160] * mem[192] / 997) - 1:
                revert with 'NH{q', 17
            if (mem[(32 * ('cd', 68).length) + 160] * mem[(32 * ('cd', 68).length) + 192]) + (1000 * mem[(32 * ('cd', 68).length) + 160] * mem[192] / 997) > -(10^6 * mem[160] * mem[192] / 994009) - 1:
                revert with 'NH{q', 17
            mem[mem[64]] = 160
            mem[mem[64] + 160] = mem[96]
            mem[mem[64] + 192 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
            mem[mem[64] + 32] = (32 * mem[96]) + 192
            _2987 = mem[(32 * ('cd', 68).length) + 128]
            mem[mem[64] + (32 * mem[96]) + 192] = mem[(32 * ('cd', 68).length) + 128]
            mem[mem[64] + (32 * mem[96]) + 224 len 32 * _2987] = mem[(32 * ('cd', 68).length) + 160 len 32 * _2987]
            mem[mem[64] + 64] = 0
            mem[mem[64] + 96] = 0
            return 160, (32 * mem[96]) + 192, 0, 0, 0, mem[96], mem[mem[64] + 192 len (32 * mem[96]) + (32 * _2987) + 32]
        mem[(32 * ('cd', 68).length) + 160 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
        idx = 0
        while idx < ('cd', 68).length:
            if not idx:
                if ('cd', 68).length < 1:
                    revert with 'NH{q', 17
                if idx == ('cd', 68).length - 1:
                    if idx >= ('cd', 68).length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                    staticcall address(cd[((32 * idx) + cd[68] + 36)]).factory() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1112 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1112] == mem[_1112 + 12 len 20]
                    revert with 0, 'JoeLibrary: IDENTICAL_ADDRESSES'
                if idx >= ('cd', 36).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                if idx >= ('cd', 68).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                staticcall address(cd[((32 * idx) + cd[68] + 36)]).factory() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1155 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1170 = mem[_1155]
                require mem[_1155] == mem[_1155 + 12 len 20]
                if not address(cd[4]) - address(cd[((32 * idx) + cd[36] + 36)]):
                    revert with 0, 'JoeLibrary: IDENTICAL_ADDRESSES'
                if address(cd[4]) < address(cd[((32 * idx) + cd[36] + 36)]):
                    if not address(cd[4]):
                        revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                    mem[mem[64] + 4] = address(cd[4])
                    mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
                    staticcall address(_1170).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(cd[4]), address(cd[((32 * idx) + cd[36] + 36)])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1452 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1452] == mem[_1452 + 12 len 20]
                    if not mem[_1452 + 12 len 20]:
                        revert with 0, 'Nonexisted pair'
                    staticcall mem[_1452 + 12 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1643 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _1657 = mem[_1643]
                    require mem[_1643] == mem[_1643 + 18 len 14]
                    _1828 = mem[_1643 + 32]
                    require mem[_1643 + 32] == mem[_1643 + 50 len 14]
                    require mem[_1643 + 64] == mem[_1643 + 92 len 4]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if idx >= mem[(32 * ('cd', 68).length) + 128]:
                        revert with 'NH{q', 50
                    if address(cd[4]) == address(cd[4]):
                        mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = mem[_1643 + 50 len 14]
                        mem[(32 * idx) + 128] = Mask(112, 0, _1657)
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if Mask(112, 0, _1657) <= 0:
                            revert with 0, 'No liquidity'
                    else:
                        mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = mem[_1643 + 18 len 14]
                        mem[(32 * idx) + 128] = Mask(112, 0, _1828)
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if Mask(112, 0, _1828) <= 0:
                            revert with 0, 'No liquidity'
                else:
                    if not address(cd[((32 * idx) + cd[36] + 36)]):
                        revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                    mem[mem[64] + 4] = address(cd[4])
                    mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
                    staticcall address(_1170).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(cd[4]), address(cd[((32 * idx) + cd[36] + 36)])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1453 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1453] == mem[_1453 + 12 len 20]
                    if not mem[_1453 + 12 len 20]:
                        revert with 0, 'Nonexisted pair'
                    staticcall mem[_1453 + 12 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1644 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _1658 = mem[_1644]
                    require mem[_1644] == mem[_1644 + 18 len 14]
                    _1829 = mem[_1644 + 32]
                    require mem[_1644 + 32] == mem[_1644 + 50 len 14]
                    require mem[_1644 + 64] == mem[_1644 + 92 len 4]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if idx >= mem[(32 * ('cd', 68).length) + 128]:
                        revert with 'NH{q', 50
                    if address(cd[4]) == address(cd[((32 * idx) + cd[36] + 36)]):
                        mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = mem[_1644 + 50 len 14]
                        mem[(32 * idx) + 128] = Mask(112, 0, _1658)
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if Mask(112, 0, _1658) <= 0:
                            revert with 0, 'No liquidity'
                    else:
                        mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = mem[_1644 + 18 len 14]
                        mem[(32 * idx) + 128] = Mask(112, 0, _1829)
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if Mask(112, 0, _1829) <= 0:
                            revert with 0, 'No liquidity'
            else:
                if idx < 1:
                    revert with 'NH{q', 17
                if idx - 1 >= ('cd', 36).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx - 1) + cd[36] + 36)] == address(cd[((32 * idx - 1) + cd[36] + 36)])
                if ('cd', 68).length < 1:
                    revert with 'NH{q', 17
                if idx == ('cd', 68).length - 1:
                    if idx >= ('cd', 68).length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                    staticcall address(cd[((32 * idx) + cd[68] + 36)]).factory() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1192 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1238 = mem[_1192]
                    require mem[_1192] == mem[_1192 + 12 len 20]
                    if not address(cd[((32 * idx - 1) + cd[36] + 36)]) - address(cd[4]):
                        revert with 0, 'JoeLibrary: IDENTICAL_ADDRESSES'
                    if address(cd[((32 * idx - 1) + cd[36] + 36)]) < address(cd[4]):
                        if not address(cd[((32 * idx - 1) + cd[36] + 36)]):
                            revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                        mem[mem[64] + 4] = address(cd[((32 * idx - 1) + cd[36] + 36)])
                        mem[mem[64] + 36] = address(cd[4])
                        staticcall address(_1238).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx - 1) + cd[36] + 36)]), address(cd[4])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1538 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1538] == mem[_1538 + 12 len 20]
                        if not mem[_1538 + 12 len 20]:
                            revert with 0, 'Nonexisted pair'
                        staticcall mem[_1538 + 12 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1779 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _1830 = mem[_1779]
                        require mem[_1779] == mem[_1779 + 18 len 14]
                        _1872 = mem[_1779 + 32]
                        require mem[_1779 + 32] == mem[_1779 + 50 len 14]
                        require mem[_1779 + 64] == mem[_1779 + 92 len 4]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if idx >= mem[(32 * ('cd', 68).length) + 128]:
                            revert with 'NH{q', 50
                        if address(cd[((32 * idx - 1) + cd[36] + 36)]) == address(cd[((32 * idx - 1) + cd[36] + 36)]):
                            mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = mem[_1779 + 50 len 14]
                            mem[(32 * idx) + 128] = Mask(112, 0, _1830)
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            if Mask(112, 0, _1830) <= 0:
                                revert with 0, 'No liquidity'
                        else:
                            mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = mem[_1779 + 18 len 14]
                            mem[(32 * idx) + 128] = Mask(112, 0, _1872)
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            if Mask(112, 0, _1872) <= 0:
                                revert with 0, 'No liquidity'
                    else:
                        if not address(cd[4]):
                            revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                        mem[mem[64] + 4] = address(cd[((32 * idx - 1) + cd[36] + 36)])
                        mem[mem[64] + 36] = address(cd[4])
                        staticcall address(_1238).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx - 1) + cd[36] + 36)]), address(cd[4])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1539 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1539] == mem[_1539 + 12 len 20]
                        if not mem[_1539 + 12 len 20]:
                            revert with 0, 'Nonexisted pair'
                        staticcall mem[_1539 + 12 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1780 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _1831 = mem[_1780]
                        require mem[_1780] == mem[_1780 + 18 len 14]
                        _1873 = mem[_1780 + 32]
                        require mem[_1780 + 32] == mem[_1780 + 50 len 14]
                        require mem[_1780 + 64] == mem[_1780 + 92 len 4]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if idx >= mem[(32 * ('cd', 68).length) + 128]:
                            revert with 'NH{q', 50
                        if address(cd[((32 * idx - 1) + cd[36] + 36)]) == address(cd[4]):
                            mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = mem[_1780 + 50 len 14]
                            mem[(32 * idx) + 128] = Mask(112, 0, _1831)
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            if Mask(112, 0, _1831) <= 0:
                                revert with 0, 'No liquidity'
                        else:
                            mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = mem[_1780 + 18 len 14]
                            mem[(32 * idx) + 128] = Mask(112, 0, _1873)
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            if Mask(112, 0, _1873) <= 0:
                                revert with 0, 'No liquidity'
                else:
                    if idx >= ('cd', 36).length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                    if idx >= ('cd', 68).length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                    staticcall address(cd[((32 * idx) + cd[68] + 36)]).factory() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1321 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1341 = mem[_1321]
                    require mem[_1321] == mem[_1321 + 12 len 20]
                    if not address(cd[((32 * idx - 1) + cd[36] + 36)]) - address(cd[((32 * idx) + cd[36] + 36)]):
                        revert with 0, 'JoeLibrary: IDENTICAL_ADDRESSES'
                    if address(cd[((32 * idx - 1) + cd[36] + 36)]) < address(cd[((32 * idx) + cd[36] + 36)]):
                        if not address(cd[((32 * idx - 1) + cd[36] + 36)]):
                            revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                        mem[mem[64] + 4] = address(cd[((32 * idx - 1) + cd[36] + 36)])
                        mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
                        staticcall address(_1341).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx - 1) + cd[36] + 36)]), address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1733 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1733] == mem[_1733 + 12 len 20]
                        if not mem[_1733 + 12 len 20]:
                            revert with 0, 'Nonexisted pair'
                        staticcall mem[_1733 + 12 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1936 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _1951 = mem[_1936]
                        require mem[_1936] == mem[_1936 + 18 len 14]
                        _2120 = mem[_1936 + 32]
                        require mem[_1936 + 32] == mem[_1936 + 50 len 14]
                        require mem[_1936 + 64] == mem[_1936 + 92 len 4]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if idx >= mem[(32 * ('cd', 68).length) + 128]:
                            revert with 'NH{q', 50
                        if address(cd[((32 * idx - 1) + cd[36] + 36)]) == address(cd[((32 * idx - 1) + cd[36] + 36)]):
                            mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = mem[_1936 + 50 len 14]
                            mem[(32 * idx) + 128] = Mask(112, 0, _1951)
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            if Mask(112, 0, _1951) <= 0:
                                revert with 0, 'No liquidity'
                        else:
                            mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = mem[_1936 + 18 len 14]
                            mem[(32 * idx) + 128] = Mask(112, 0, _2120)
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            if Mask(112, 0, _2120) <= 0:
                                revert with 0, 'No liquidity'
                    else:
                        if not address(cd[((32 * idx) + cd[36] + 36)]):
                            revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                        mem[mem[64] + 4] = address(cd[((32 * idx - 1) + cd[36] + 36)])
                        mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
                        staticcall address(_1341).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx - 1) + cd[36] + 36)]), address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1734 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1734] == mem[_1734 + 12 len 20]
                        if not mem[_1734 + 12 len 20]:
                            revert with 0, 'Nonexisted pair'
                        staticcall mem[_1734 + 12 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1937 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _1952 = mem[_1937]
                        require mem[_1937] == mem[_1937 + 18 len 14]
                        _2121 = mem[_1937 + 32]
                        require mem[_1937 + 32] == mem[_1937 + 50 len 14]
                        require mem[_1937 + 64] == mem[_1937 + 92 len 4]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if idx >= mem[(32 * ('cd', 68).length) + 128]:
                            revert with 'NH{q', 50
                        if address(cd[((32 * idx - 1) + cd[36] + 36)]) == address(cd[((32 * idx) + cd[36] + 36)]):
                            mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = mem[_1937 + 50 len 14]
                            mem[(32 * idx) + 128] = Mask(112, 0, _1952)
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            if Mask(112, 0, _1952) <= 0:
                                revert with 0, 'No liquidity'
                        else:
                            mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = mem[_1937 + 18 len 14]
                            mem[(32 * idx) + 128] = Mask(112, 0, _2121)
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            if Mask(112, 0, _2121) <= 0:
                                revert with 0, 'No liquidity'
            if idx >= mem[(32 * ('cd', 68).length) + 128]:
                revert with 'NH{q', 50
            if mem[(32 * idx) + (32 * ('cd', 68).length) + 160] <= 0:
                revert with 0, 'No liquidity'
            idx = idx + 1
            continue 
        if not ('cd', 36).length - 1:
            if 1 >= mem[(32 * ('cd', 68).length) + 128]:
                revert with 'NH{q', 50
            if 0 >= mem[(32 * ('cd', 68).length) + 128]:
                revert with 'NH{q', 50
            if mem[(32 * ('cd', 68).length) + 160] and mem[(32 * ('cd', 68).length) + 192] > -1 / mem[(32 * ('cd', 68).length) + 160]:
                revert with 'NH{q', 17
            if 1 >= mem[96]:
                revert with 'NH{q', 50
            if 0 >= mem[96]:
                revert with 'NH{q', 50
            if mem[128] and mem[160] > -1 / mem[128]:
                revert with 'NH{q', 17
            if mem[128] * mem[160] and 10^6 > -1 / mem[128] * mem[160]:
                revert with 'NH{q', 17
            if 1 >= mem[96]:
                revert with 'NH{q', 50
            if mem[160] and 1000 > -1 / mem[160]:
                revert with 'NH{q', 17
            if 0 >= mem[(32 * ('cd', 68).length) + 128]:
                revert with 'NH{q', 50
            if mem[(32 * ('cd', 68).length) + 160] > -(1000 * mem[160] / 997) - 1:
                revert with 'NH{q', 17
            mem[mem[64]] = 160
            mem[mem[64] + 160] = mem[96]
            mem[mem[64] + 192 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
            mem[mem[64] + 32] = (32 * mem[96]) + 192
            _2991 = mem[(32 * ('cd', 68).length) + 128]
            mem[mem[64] + (32 * mem[96]) + 192] = mem[(32 * ('cd', 68).length) + 128]
            mem[mem[64] + (32 * mem[96]) + 224 len 32 * _2991] = mem[(32 * ('cd', 68).length) + 160 len 32 * _2991]
            mem[mem[64] + 64] = 0
            mem[mem[64] + 96] = 0
            return 160, (32 * mem[96]) + 192, 0, 0, 0, mem[96], mem[mem[64] + 192 len (32 * mem[96]) + (32 * _2991) + 32]
        if ('cd', 36).length - 2:
            mem[mem[64]] = 160
            mem[mem[64] + 160] = mem[96]
            mem[mem[64] + 192 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
            mem[mem[64] + 32] = (32 * mem[96]) + 192
            _2989 = mem[(32 * ('cd', 68).length) + 128]
            mem[mem[64] + (32 * mem[96]) + 192] = mem[(32 * ('cd', 68).length) + 128]
            mem[mem[64] + (32 * mem[96]) + 224 len 32 * _2989] = mem[(32 * ('cd', 68).length) + 160 len 32 * _2989]
            mem[mem[64] + 64] = 0
            mem[mem[64] + 96] = 0
            return 160, (32 * mem[96]) + 192, 0, 0, 0, mem[96], mem[mem[64] + 192 len (32 * mem[96]) + (32 * _2989) + 32]
        if 2 >= mem[(32 * ('cd', 68).length) + 128]:
            revert with 'NH{q', 50
        if 1 >= mem[(32 * ('cd', 68).length) + 128]:
            revert with 'NH{q', 50
        if 0 >= mem[(32 * ('cd', 68).length) + 128]:
            revert with 'NH{q', 50
        if mem[(32 * ('cd', 68).length) + 160] and mem[(32 * ('cd', 68).length) + 192] > -1 / mem[(32 * ('cd', 68).length) + 160]:
            revert with 'NH{q', 17
        if mem[(32 * ('cd', 68).length) + 160] * mem[(32 * ('cd', 68).length) + 192] and mem[(32 * ('cd', 68).length) + 224] > -1 / mem[(32 * ('cd', 68).length) + 160] * mem[(32 * ('cd', 68).length) + 192]:
            revert with 'NH{q', 17
        if 2 >= mem[96]:
            revert with 'NH{q', 50
        if 1 >= mem[96]:
            revert with 'NH{q', 50
        if 0 >= mem[96]:
            revert with 'NH{q', 50
        if mem[128] and mem[160] > -1 / mem[128]:
            revert with 'NH{q', 17
        if mem[128] * mem[160] and mem[192] > -1 / mem[128] * mem[160]:
            revert with 'NH{q', 17
        if mem[128] * mem[160] * mem[192] and 10^9 > -1 / mem[128] * mem[160] * mem[192]:
            revert with 'NH{q', 17
        if 2 >= mem[96]:
            revert with 'NH{q', 50
        if 1 >= mem[96]:
            revert with 'NH{q', 50
        if mem[160] and mem[192] > -1 / mem[160]:
            revert with 'NH{q', 17
        if mem[160] * mem[192] and 10^6 > -1 / mem[160] * mem[192]:
            revert with 'NH{q', 17
        if 2 >= mem[96]:
            revert with 'NH{q', 50
        if 0 >= mem[(32 * ('cd', 68).length) + 128]:
            revert with 'NH{q', 50
        if mem[(32 * ('cd', 68).length) + 160] and mem[192] > -1 / mem[(32 * ('cd', 68).length) + 160]:
            revert with 'NH{q', 17
        if mem[(32 * ('cd', 68).length) + 160] * mem[192] and 1000 > -1 / mem[(32 * ('cd', 68).length) + 160] * mem[192]:
            revert with 'NH{q', 17
        if 1 >= mem[(32 * ('cd', 68).length) + 128]:
            revert with 'NH{q', 50
        if 0 >= mem[(32 * ('cd', 68).length) + 128]:
            revert with 'NH{q', 50
        if mem[(32 * ('cd', 68).length) + 160] and mem[(32 * ('cd', 68).length) + 192] > -1 / mem[(32 * ('cd', 68).length) + 160]:
            revert with 'NH{q', 17
        if mem[(32 * ('cd', 68).length) + 160] * mem[(32 * ('cd', 68).length) + 192] > -(1000 * mem[(32 * ('cd', 68).length) + 160] * mem[192] / 997) - 1:
            revert with 'NH{q', 17
        if (mem[(32 * ('cd', 68).length) + 160] * mem[(32 * ('cd', 68).length) + 192]) + (1000 * mem[(32 * ('cd', 68).length) + 160] * mem[192] / 997) > -(10^6 * mem[160] * mem[192] / 994009) - 1:
            revert with 'NH{q', 17
        mem[mem[64]] = 160
        mem[mem[64] + 160] = mem[96]
        mem[mem[64] + 192 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
        mem[mem[64] + 32] = (32 * mem[96]) + 192
        _2990 = mem[(32 * ('cd', 68).length) + 128]
        mem[mem[64] + (32 * mem[96]) + 192] = mem[(32 * ('cd', 68).length) + 128]
        mem[mem[64] + (32 * mem[96]) + 224 len 32 * _2990] = mem[(32 * ('cd', 68).length) + 160 len 32 * _2990]
        mem[mem[64] + 64] = 0
        mem[mem[64] + 96] = 0
        return 160, (32 * mem[96]) + 192, 0, 0, 0, mem[96], mem[mem[64] + 192 len (32 * mem[96]) + (32 * _2990) + 32]
    mem[128 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    mem[(32 * ('cd', 68).length) + 128] = ('cd', 68).length
    mem[64] = (64 * ('cd', 68).length) + 160
    if not ('cd', 68).length:
        idx = 0
        while idx < ('cd', 68).length:
            if not idx:
                if ('cd', 68).length < 1:
                    revert with 'NH{q', 17
                if idx == ('cd', 68).length - 1:
                    if idx >= ('cd', 68).length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                    staticcall address(cd[((32 * idx) + cd[68] + 36)]).factory() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1115 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1115] == mem[_1115 + 12 len 20]
                    revert with 0, 'JoeLibrary: IDENTICAL_ADDRESSES'
                if idx >= ('cd', 36).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                if idx >= ('cd', 68).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                staticcall address(cd[((32 * idx) + cd[68] + 36)]).factory() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1157 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1171 = mem[_1157]
                require mem[_1157] == mem[_1157 + 12 len 20]
                if not address(cd[4]) - address(cd[((32 * idx) + cd[36] + 36)]):
                    revert with 0, 'JoeLibrary: IDENTICAL_ADDRESSES'
                if address(cd[4]) < address(cd[((32 * idx) + cd[36] + 36)]):
                    if not address(cd[4]):
                        revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                    mem[mem[64] + 4] = address(cd[4])
                    mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
                    staticcall address(_1171).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(cd[4]), address(cd[((32 * idx) + cd[36] + 36)])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1455 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1455] == mem[_1455 + 12 len 20]
                    if not mem[_1455 + 12 len 20]:
                        revert with 0, 'Nonexisted pair'
                    staticcall mem[_1455 + 12 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1645 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _1659 = mem[_1645]
                    require mem[_1645] == mem[_1645 + 18 len 14]
                    _1832 = mem[_1645 + 32]
                    require mem[_1645 + 32] == mem[_1645 + 50 len 14]
                    require mem[_1645 + 64] == mem[_1645 + 92 len 4]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if idx >= mem[(32 * ('cd', 68).length) + 128]:
                        revert with 'NH{q', 50
                    if address(cd[4]) == address(cd[4]):
                        mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = mem[_1645 + 50 len 14]
                        mem[(32 * idx) + 128] = Mask(112, 0, _1659)
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if Mask(112, 0, _1659) <= 0:
                            revert with 0, 'No liquidity'
                    else:
                        mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = mem[_1645 + 18 len 14]
                        mem[(32 * idx) + 128] = Mask(112, 0, _1832)
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if Mask(112, 0, _1832) <= 0:
                            revert with 0, 'No liquidity'
                else:
                    if not address(cd[((32 * idx) + cd[36] + 36)]):
                        revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                    mem[mem[64] + 4] = address(cd[4])
                    mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
                    staticcall address(_1171).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(cd[4]), address(cd[((32 * idx) + cd[36] + 36)])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1456 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1456] == mem[_1456 + 12 len 20]
                    if not mem[_1456 + 12 len 20]:
                        revert with 0, 'Nonexisted pair'
                    staticcall mem[_1456 + 12 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1646 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _1660 = mem[_1646]
                    require mem[_1646] == mem[_1646 + 18 len 14]
                    _1833 = mem[_1646 + 32]
                    require mem[_1646 + 32] == mem[_1646 + 50 len 14]
                    require mem[_1646 + 64] == mem[_1646 + 92 len 4]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if idx >= mem[(32 * ('cd', 68).length) + 128]:
                        revert with 'NH{q', 50
                    if address(cd[4]) == address(cd[((32 * idx) + cd[36] + 36)]):
                        mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = mem[_1646 + 50 len 14]
                        mem[(32 * idx) + 128] = Mask(112, 0, _1660)
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if Mask(112, 0, _1660) <= 0:
                            revert with 0, 'No liquidity'
                    else:
                        mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = mem[_1646 + 18 len 14]
                        mem[(32 * idx) + 128] = Mask(112, 0, _1833)
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if Mask(112, 0, _1833) <= 0:
                            revert with 0, 'No liquidity'
            else:
                if idx < 1:
                    revert with 'NH{q', 17
                if idx - 1 >= ('cd', 36).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx - 1) + cd[36] + 36)] == address(cd[((32 * idx - 1) + cd[36] + 36)])
                if ('cd', 68).length < 1:
                    revert with 'NH{q', 17
                if idx == ('cd', 68).length - 1:
                    if idx >= ('cd', 68).length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                    staticcall address(cd[((32 * idx) + cd[68] + 36)]).factory() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1193 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1243 = mem[_1193]
                    require mem[_1193] == mem[_1193 + 12 len 20]
                    if not address(cd[((32 * idx - 1) + cd[36] + 36)]) - address(cd[4]):
                        revert with 0, 'JoeLibrary: IDENTICAL_ADDRESSES'
                    if address(cd[((32 * idx - 1) + cd[36] + 36)]) < address(cd[4]):
                        if not address(cd[((32 * idx - 1) + cd[36] + 36)]):
                            revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                        mem[mem[64] + 4] = address(cd[((32 * idx - 1) + cd[36] + 36)])
                        mem[mem[64] + 36] = address(cd[4])
                        staticcall address(_1243).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx - 1) + cd[36] + 36)]), address(cd[4])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1540 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1540] == mem[_1540 + 12 len 20]
                        if not mem[_1540 + 12 len 20]:
                            revert with 0, 'Nonexisted pair'
                        staticcall mem[_1540 + 12 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1785 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _1834 = mem[_1785]
                        require mem[_1785] == mem[_1785 + 18 len 14]
                        _1876 = mem[_1785 + 32]
                        require mem[_1785 + 32] == mem[_1785 + 50 len 14]
                        require mem[_1785 + 64] == mem[_1785 + 92 len 4]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if idx >= mem[(32 * ('cd', 68).length) + 128]:
                            revert with 'NH{q', 50
                        if address(cd[((32 * idx - 1) + cd[36] + 36)]) == address(cd[((32 * idx - 1) + cd[36] + 36)]):
                            mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = mem[_1785 + 50 len 14]
                            mem[(32 * idx) + 128] = Mask(112, 0, _1834)
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            if Mask(112, 0, _1834) <= 0:
                                revert with 0, 'No liquidity'
                        else:
                            mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = mem[_1785 + 18 len 14]
                            mem[(32 * idx) + 128] = Mask(112, 0, _1876)
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            if Mask(112, 0, _1876) <= 0:
                                revert with 0, 'No liquidity'
                    else:
                        if not address(cd[4]):
                            revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                        mem[mem[64] + 4] = address(cd[((32 * idx - 1) + cd[36] + 36)])
                        mem[mem[64] + 36] = address(cd[4])
                        staticcall address(_1243).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx - 1) + cd[36] + 36)]), address(cd[4])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1541 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1541] == mem[_1541 + 12 len 20]
                        if not mem[_1541 + 12 len 20]:
                            revert with 0, 'Nonexisted pair'
                        staticcall mem[_1541 + 12 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1786 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _1835 = mem[_1786]
                        require mem[_1786] == mem[_1786 + 18 len 14]
                        _1877 = mem[_1786 + 32]
                        require mem[_1786 + 32] == mem[_1786 + 50 len 14]
                        require mem[_1786 + 64] == mem[_1786 + 92 len 4]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if idx >= mem[(32 * ('cd', 68).length) + 128]:
                            revert with 'NH{q', 50
                        if address(cd[((32 * idx - 1) + cd[36] + 36)]) == address(cd[4]):
                            mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = mem[_1786 + 50 len 14]
                            mem[(32 * idx) + 128] = Mask(112, 0, _1835)
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            if Mask(112, 0, _1835) <= 0:
                                revert with 0, 'No liquidity'
                        else:
                            mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = mem[_1786 + 18 len 14]
                            mem[(32 * idx) + 128] = Mask(112, 0, _1877)
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            if Mask(112, 0, _1877) <= 0:
                                revert with 0, 'No liquidity'
                else:
                    if idx >= ('cd', 36).length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                    if idx >= ('cd', 68).length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                    staticcall address(cd[((32 * idx) + cd[68] + 36)]).factory() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1322 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1343 = mem[_1322]
                    require mem[_1322] == mem[_1322 + 12 len 20]
                    if not address(cd[((32 * idx - 1) + cd[36] + 36)]) - address(cd[((32 * idx) + cd[36] + 36)]):
                        revert with 0, 'JoeLibrary: IDENTICAL_ADDRESSES'
                    if address(cd[((32 * idx - 1) + cd[36] + 36)]) < address(cd[((32 * idx) + cd[36] + 36)]):
                        if not address(cd[((32 * idx - 1) + cd[36] + 36)]):
                            revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                        mem[mem[64] + 4] = address(cd[((32 * idx - 1) + cd[36] + 36)])
                        mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
                        staticcall address(_1343).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx - 1) + cd[36] + 36)]), address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1743 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1743] == mem[_1743 + 12 len 20]
                        if not mem[_1743 + 12 len 20]:
                            revert with 0, 'Nonexisted pair'
                        staticcall mem[_1743 + 12 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1939 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _1953 = mem[_1939]
                        require mem[_1939] == mem[_1939 + 18 len 14]
                        _2128 = mem[_1939 + 32]
                        require mem[_1939 + 32] == mem[_1939 + 50 len 14]
                        require mem[_1939 + 64] == mem[_1939 + 92 len 4]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if idx >= mem[(32 * ('cd', 68).length) + 128]:
                            revert with 'NH{q', 50
                        if address(cd[((32 * idx - 1) + cd[36] + 36)]) == address(cd[((32 * idx - 1) + cd[36] + 36)]):
                            mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = mem[_1939 + 50 len 14]
                            mem[(32 * idx) + 128] = Mask(112, 0, _1953)
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            if Mask(112, 0, _1953) <= 0:
                                revert with 0, 'No liquidity'
                        else:
                            mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = mem[_1939 + 18 len 14]
                            mem[(32 * idx) + 128] = Mask(112, 0, _2128)
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            if Mask(112, 0, _2128) <= 0:
                                revert with 0, 'No liquidity'
                    else:
                        if not address(cd[((32 * idx) + cd[36] + 36)]):
                            revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                        mem[mem[64] + 4] = address(cd[((32 * idx - 1) + cd[36] + 36)])
                        mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
                        staticcall address(_1343).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx - 1) + cd[36] + 36)]), address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1744 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1744] == mem[_1744 + 12 len 20]
                        if not mem[_1744 + 12 len 20]:
                            revert with 0, 'Nonexisted pair'
                        staticcall mem[_1744 + 12 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1940 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _1954 = mem[_1940]
                        require mem[_1940] == mem[_1940 + 18 len 14]
                        _2129 = mem[_1940 + 32]
                        require mem[_1940 + 32] == mem[_1940 + 50 len 14]
                        require mem[_1940 + 64] == mem[_1940 + 92 len 4]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if idx >= mem[(32 * ('cd', 68).length) + 128]:
                            revert with 'NH{q', 50
                        if address(cd[((32 * idx - 1) + cd[36] + 36)]) == address(cd[((32 * idx) + cd[36] + 36)]):
                            mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = mem[_1940 + 50 len 14]
                            mem[(32 * idx) + 128] = Mask(112, 0, _1954)
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            if Mask(112, 0, _1954) <= 0:
                                revert with 0, 'No liquidity'
                        else:
                            mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = mem[_1940 + 18 len 14]
                            mem[(32 * idx) + 128] = Mask(112, 0, _2129)
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            if Mask(112, 0, _2129) <= 0:
                                revert with 0, 'No liquidity'
            if idx >= mem[(32 * ('cd', 68).length) + 128]:
                revert with 'NH{q', 50
            if mem[(32 * idx) + (32 * ('cd', 68).length) + 160] <= 0:
                revert with 0, 'No liquidity'
            idx = idx + 1
            continue 
        if not ('cd', 36).length - 1:
            if 1 >= mem[(32 * ('cd', 68).length) + 128]:
                revert with 'NH{q', 50
            if 0 >= mem[(32 * ('cd', 68).length) + 128]:
                revert with 'NH{q', 50
            if mem[(32 * ('cd', 68).length) + 160] and mem[(32 * ('cd', 68).length) + 192] > -1 / mem[(32 * ('cd', 68).length) + 160]:
                revert with 'NH{q', 17
            if 1 >= mem[96]:
                revert with 'NH{q', 50
            if 0 >= mem[96]:
                revert with 'NH{q', 50
            if mem[128] and mem[160] > -1 / mem[128]:
                revert with 'NH{q', 17
            if mem[128] * mem[160] and 10^6 > -1 / mem[128] * mem[160]:
                revert with 'NH{q', 17
            if 1 >= mem[96]:
                revert with 'NH{q', 50
            if mem[160] and 1000 > -1 / mem[160]:
                revert with 'NH{q', 17
            if 0 >= mem[(32 * ('cd', 68).length) + 128]:
                revert with 'NH{q', 50
            if mem[(32 * ('cd', 68).length) + 160] > -(1000 * mem[160] / 997) - 1:
                revert with 'NH{q', 17
            mem[mem[64]] = 160
            mem[mem[64] + 160] = mem[96]
            mem[mem[64] + 192 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
            mem[mem[64] + 32] = (32 * mem[96]) + 192
            _2994 = mem[(32 * ('cd', 68).length) + 128]
            mem[mem[64] + (32 * mem[96]) + 192] = mem[(32 * ('cd', 68).length) + 128]
            mem[mem[64] + (32 * mem[96]) + 224 len 32 * _2994] = mem[(32 * ('cd', 68).length) + 160 len 32 * _2994]
            mem[mem[64] + 64] = 0
            mem[mem[64] + 96] = 0
            return 160, (32 * mem[96]) + 192, 0, 0, 0, mem[96], mem[mem[64] + 192 len (32 * mem[96]) + (32 * _2994) + 32]
        if ('cd', 36).length - 2:
            mem[mem[64]] = 160
            mem[mem[64] + 160] = mem[96]
            mem[mem[64] + 192 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
            mem[mem[64] + 32] = (32 * mem[96]) + 192
            _2992 = mem[(32 * ('cd', 68).length) + 128]
            mem[mem[64] + (32 * mem[96]) + 192] = mem[(32 * ('cd', 68).length) + 128]
            mem[mem[64] + (32 * mem[96]) + 224 len 32 * _2992] = mem[(32 * ('cd', 68).length) + 160 len 32 * _2992]
            mem[mem[64] + 64] = 0
            mem[mem[64] + 96] = 0
            return 160, (32 * mem[96]) + 192, 0, 0, 0, mem[96], mem[mem[64] + 192 len (32 * mem[96]) + (32 * _2992) + 32]
        if 2 >= mem[(32 * ('cd', 68).length) + 128]:
            revert with 'NH{q', 50
        if 1 >= mem[(32 * ('cd', 68).length) + 128]:
            revert with 'NH{q', 50
        if 0 >= mem[(32 * ('cd', 68).length) + 128]:
            revert with 'NH{q', 50
        if mem[(32 * ('cd', 68).length) + 160] and mem[(32 * ('cd', 68).length) + 192] > -1 / mem[(32 * ('cd', 68).length) + 160]:
            revert with 'NH{q', 17
        if mem[(32 * ('cd', 68).length) + 160] * mem[(32 * ('cd', 68).length) + 192] and mem[(32 * ('cd', 68).length) + 224] > -1 / mem[(32 * ('cd', 68).length) + 160] * mem[(32 * ('cd', 68).length) + 192]:
            revert with 'NH{q', 17
        if 2 >= mem[96]:
            revert with 'NH{q', 50
        if 1 >= mem[96]:
            revert with 'NH{q', 50
        if 0 >= mem[96]:
            revert with 'NH{q', 50
        if mem[128] and mem[160] > -1 / mem[128]:
            revert with 'NH{q', 17
        if mem[128] * mem[160] and mem[192] > -1 / mem[128] * mem[160]:
            revert with 'NH{q', 17
        if mem[128] * mem[160] * mem[192] and 10^9 > -1 / mem[128] * mem[160] * mem[192]:
            revert with 'NH{q', 17
        if 2 >= mem[96]:
            revert with 'NH{q', 50
        if 1 >= mem[96]:
            revert with 'NH{q', 50
        if mem[160] and mem[192] > -1 / mem[160]:
            revert with 'NH{q', 17
        if mem[160] * mem[192] and 10^6 > -1 / mem[160] * mem[192]:
            revert with 'NH{q', 17
        if 2 >= mem[96]:
            revert with 'NH{q', 50
        if 0 >= mem[(32 * ('cd', 68).length) + 128]:
            revert with 'NH{q', 50
        if mem[(32 * ('cd', 68).length) + 160] and mem[192] > -1 / mem[(32 * ('cd', 68).length) + 160]:
            revert with 'NH{q', 17
        if mem[(32 * ('cd', 68).length) + 160] * mem[192] and 1000 > -1 / mem[(32 * ('cd', 68).length) + 160] * mem[192]:
            revert with 'NH{q', 17
        if 1 >= mem[(32 * ('cd', 68).length) + 128]:
            revert with 'NH{q', 50
        if 0 >= mem[(32 * ('cd', 68).length) + 128]:
            revert with 'NH{q', 50
        if mem[(32 * ('cd', 68).length) + 160] and mem[(32 * ('cd', 68).length) + 192] > -1 / mem[(32 * ('cd', 68).length) + 160]:
            revert with 'NH{q', 17
        if mem[(32 * ('cd', 68).length) + 160] * mem[(32 * ('cd', 68).length) + 192] > -(1000 * mem[(32 * ('cd', 68).length) + 160] * mem[192] / 997) - 1:
            revert with 'NH{q', 17
        if (mem[(32 * ('cd', 68).length) + 160] * mem[(32 * ('cd', 68).length) + 192]) + (1000 * mem[(32 * ('cd', 68).length) + 160] * mem[192] / 997) > -(10^6 * mem[160] * mem[192] / 994009) - 1:
            revert with 'NH{q', 17
        mem[mem[64]] = 160
        mem[mem[64] + 160] = mem[96]
        mem[mem[64] + 192 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
        mem[mem[64] + 32] = (32 * mem[96]) + 192
        _2993 = mem[(32 * ('cd', 68).length) + 128]
        mem[mem[64] + (32 * mem[96]) + 192] = mem[(32 * ('cd', 68).length) + 128]
        mem[mem[64] + (32 * mem[96]) + 224 len 32 * _2993] = mem[(32 * ('cd', 68).length) + 160 len 32 * _2993]
        mem[mem[64] + 64] = 0
        mem[mem[64] + 96] = 0
        return 160, (32 * mem[96]) + 192, 0, 0, 0, mem[96], mem[mem[64] + 192 len (32 * mem[96]) + (32 * _2993) + 32]
    mem[(32 * ('cd', 68).length) + 160 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
    idx = 0
    while idx < ('cd', 68).length:
        if not idx:
            if ('cd', 68).length < 1:
                revert with 'NH{q', 17
            if idx == ('cd', 68).length - 1:
                if idx >= ('cd', 68).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                staticcall address(cd[((32 * idx) + cd[68] + 36)]).factory() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3053 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_3053] == mem[_3053 + 12 len 20]
                revert with 0, 'JoeLibrary: IDENTICAL_ADDRESSES'
            if idx >= ('cd', 36).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            if idx >= ('cd', 68).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
            staticcall address(cd[((32 * idx) + cd[68] + 36)]).factory() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3059 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _3061 = mem[_3059]
            require mem[_3059] == mem[_3059 + 12 len 20]
            if not address(cd[4]) - address(cd[((32 * idx) + cd[36] + 36)]):
                revert with 0, 'JoeLibrary: IDENTICAL_ADDRESSES'
            if address(cd[4]) < address(cd[((32 * idx) + cd[36] + 36)]):
                if not address(cd[4]):
                    revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                mem[mem[64] + 4] = address(cd[4])
                mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
                staticcall address(_3061).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(cd[4]), address(cd[((32 * idx) + cd[36] + 36)])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3100 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_3100] == mem[_3100 + 12 len 20]
                if not mem[_3100 + 12 len 20]:
                    revert with 0, 'Nonexisted pair'
                staticcall mem[_3100 + 12 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3127 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _3129 = mem[_3127]
                require mem[_3127] == mem[_3127 + 18 len 14]
                _3152 = mem[_3127 + 32]
                require mem[_3127 + 32] == mem[_3127 + 50 len 14]
                require mem[_3127 + 64] == mem[_3127 + 92 len 4]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if idx >= mem[(32 * ('cd', 68).length) + 128]:
                    revert with 'NH{q', 50
                if address(cd[4]) == address(cd[4]):
                    mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = mem[_3127 + 50 len 14]
                    mem[(32 * idx) + 128] = Mask(112, 0, _3129)
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if Mask(112, 0, _3129) <= 0:
                        revert with 0, 'No liquidity'
                else:
                    mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = mem[_3127 + 18 len 14]
                    mem[(32 * idx) + 128] = Mask(112, 0, _3152)
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if Mask(112, 0, _3152) <= 0:
                        revert with 0, 'No liquidity'
            else:
                if not address(cd[((32 * idx) + cd[36] + 36)]):
                    revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                mem[mem[64] + 4] = address(cd[4])
                mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
                staticcall address(_3061).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(cd[4]), address(cd[((32 * idx) + cd[36] + 36)])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3101 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_3101] == mem[_3101 + 12 len 20]
                if not mem[_3101 + 12 len 20]:
                    revert with 0, 'Nonexisted pair'
                staticcall mem[_3101 + 12 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3128 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _3130 = mem[_3128]
                require mem[_3128] == mem[_3128 + 18 len 14]
                _3153 = mem[_3128 + 32]
                require mem[_3128 + 32] == mem[_3128 + 50 len 14]
                require mem[_3128 + 64] == mem[_3128 + 92 len 4]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if idx >= mem[(32 * ('cd', 68).length) + 128]:
                    revert with 'NH{q', 50
                if address(cd[4]) == address(cd[((32 * idx) + cd[36] + 36)]):
                    mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = mem[_3128 + 50 len 14]
                    mem[(32 * idx) + 128] = Mask(112, 0, _3130)
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if Mask(112, 0, _3130) <= 0:
                        revert with 0, 'No liquidity'
                else:
                    mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = mem[_3128 + 18 len 14]
                    mem[(32 * idx) + 128] = Mask(112, 0, _3153)
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if Mask(112, 0, _3153) <= 0:
                        revert with 0, 'No liquidity'
        else:
            if idx < 1:
                revert with 'NH{q', 17
            if idx - 1 >= ('cd', 36).length:
                revert with 'NH{q', 50
            require cd[((32 * idx - 1) + cd[36] + 36)] == address(cd[((32 * idx - 1) + cd[36] + 36)])
            if ('cd', 68).length < 1:
                revert with 'NH{q', 17
            if idx == ('cd', 68).length - 1:
                if idx >= ('cd', 68).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                staticcall address(cd[((32 * idx) + cd[68] + 36)]).factory() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3064 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _3071 = mem[_3064]
                require mem[_3064] == mem[_3064 + 12 len 20]
                if not address(cd[((32 * idx - 1) + cd[36] + 36)]) - address(cd[4]):
                    revert with 0, 'JoeLibrary: IDENTICAL_ADDRESSES'
                if address(cd[((32 * idx - 1) + cd[36] + 36)]) < address(cd[4]):
                    if not address(cd[((32 * idx - 1) + cd[36] + 36)]):
                        revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                    mem[mem[64] + 4] = address(cd[((32 * idx - 1) + cd[36] + 36)])
                    mem[mem[64] + 36] = address(cd[4])
                    staticcall address(_3071).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(cd[((32 * idx - 1) + cd[36] + 36)]), address(cd[4])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3112 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3112] == mem[_3112 + 12 len 20]
                    if not mem[_3112 + 12 len 20]:
                        revert with 0, 'Nonexisted pair'
                    staticcall mem[_3112 + 12 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3147 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _3154 = mem[_3147]
                    require mem[_3147] == mem[_3147 + 18 len 14]
                    _3160 = mem[_3147 + 32]
                    require mem[_3147 + 32] == mem[_3147 + 50 len 14]
                    require mem[_3147 + 64] == mem[_3147 + 92 len 4]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if idx >= mem[(32 * ('cd', 68).length) + 128]:
                        revert with 'NH{q', 50
                    if address(cd[((32 * idx - 1) + cd[36] + 36)]) == address(cd[((32 * idx - 1) + cd[36] + 36)]):
                        mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = mem[_3147 + 50 len 14]
                        mem[(32 * idx) + 128] = Mask(112, 0, _3154)
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if Mask(112, 0, _3154) <= 0:
                            revert with 0, 'No liquidity'
                    else:
                        mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = mem[_3147 + 18 len 14]
                        mem[(32 * idx) + 128] = Mask(112, 0, _3160)
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if Mask(112, 0, _3160) <= 0:
                            revert with 0, 'No liquidity'
                else:
                    if not address(cd[4]):
                        revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                    mem[mem[64] + 4] = address(cd[((32 * idx - 1) + cd[36] + 36)])
                    mem[mem[64] + 36] = address(cd[4])
                    staticcall address(_3071).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(cd[((32 * idx - 1) + cd[36] + 36)]), address(cd[4])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3113 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3113] == mem[_3113 + 12 len 20]
                    if not mem[_3113 + 12 len 20]:
                        revert with 0, 'Nonexisted pair'
                    staticcall mem[_3113 + 12 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3148 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _3155 = mem[_3148]
                    require mem[_3148] == mem[_3148 + 18 len 14]
                    _3161 = mem[_3148 + 32]
                    require mem[_3148 + 32] == mem[_3148 + 50 len 14]
                    require mem[_3148 + 64] == mem[_3148 + 92 len 4]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if idx >= mem[(32 * ('cd', 68).length) + 128]:
                        revert with 'NH{q', 50
                    if address(cd[((32 * idx - 1) + cd[36] + 36)]) == address(cd[4]):
                        mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = mem[_3148 + 50 len 14]
                        mem[(32 * idx) + 128] = Mask(112, 0, _3155)
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if Mask(112, 0, _3155) <= 0:
                            revert with 0, 'No liquidity'
                    else:
                        mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = mem[_3148 + 18 len 14]
                        mem[(32 * idx) + 128] = Mask(112, 0, _3161)
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if Mask(112, 0, _3161) <= 0:
                            revert with 0, 'No liquidity'
            else:
                if idx >= ('cd', 36).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                if idx >= ('cd', 68).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
                staticcall address(cd[((32 * idx) + cd[68] + 36)]).factory() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3082 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _3085 = mem[_3082]
                require mem[_3082] == mem[_3082 + 12 len 20]
                if not address(cd[((32 * idx - 1) + cd[36] + 36)]) - address(cd[((32 * idx) + cd[36] + 36)]):
                    revert with 0, 'JoeLibrary: IDENTICAL_ADDRESSES'
                if address(cd[((32 * idx - 1) + cd[36] + 36)]) < address(cd[((32 * idx) + cd[36] + 36)]):
                    if not address(cd[((32 * idx - 1) + cd[36] + 36)]):
                        revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                    mem[mem[64] + 4] = address(cd[((32 * idx - 1) + cd[36] + 36)])
                    mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
                    staticcall address(_3085).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(cd[((32 * idx - 1) + cd[36] + 36)]), address(cd[((32 * idx) + cd[36] + 36)])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3141 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3141] == mem[_3141 + 12 len 20]
                    if not mem[_3141 + 12 len 20]:
                        revert with 0, 'Nonexisted pair'
                    staticcall mem[_3141 + 12 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3169 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _3171 = mem[_3169]
                    require mem[_3169] == mem[_3169 + 18 len 14]
                    _3196 = mem[_3169 + 32]
                    require mem[_3169 + 32] == mem[_3169 + 50 len 14]
                    require mem[_3169 + 64] == mem[_3169 + 92 len 4]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if idx >= mem[(32 * ('cd', 68).length) + 128]:
                        revert with 'NH{q', 50
                    if address(cd[((32 * idx - 1) + cd[36] + 36)]) == address(cd[((32 * idx - 1) + cd[36] + 36)]):
                        mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = mem[_3169 + 50 len 14]
                        mem[(32 * idx) + 128] = Mask(112, 0, _3171)
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if Mask(112, 0, _3171) <= 0:
                            revert with 0, 'No liquidity'
                    else:
                        mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = mem[_3169 + 18 len 14]
                        mem[(32 * idx) + 128] = Mask(112, 0, _3196)
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if Mask(112, 0, _3196) <= 0:
                            revert with 0, 'No liquidity'
                else:
                    if not address(cd[((32 * idx) + cd[36] + 36)]):
                        revert with 0, 'JoeLibrary: ZERO_ADDRESS'
                    mem[mem[64] + 4] = address(cd[((32 * idx - 1) + cd[36] + 36)])
                    mem[mem[64] + 36] = address(cd[((32 * idx) + cd[36] + 36)])
                    staticcall address(_3085).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(cd[((32 * idx - 1) + cd[36] + 36)]), address(cd[((32 * idx) + cd[36] + 36)])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3142 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3142] == mem[_3142 + 12 len 20]
                    if not mem[_3142 + 12 len 20]:
                        revert with 0, 'Nonexisted pair'
                    staticcall mem[_3142 + 12 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3170 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _3172 = mem[_3170]
                    require mem[_3170] == mem[_3170 + 18 len 14]
                    _3197 = mem[_3170 + 32]
                    require mem[_3170 + 32] == mem[_3170 + 50 len 14]
                    require mem[_3170 + 64] == mem[_3170 + 92 len 4]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if idx >= mem[(32 * ('cd', 68).length) + 128]:
                        revert with 'NH{q', 50
                    if address(cd[((32 * idx - 1) + cd[36] + 36)]) == address(cd[((32 * idx) + cd[36] + 36)]):
                        mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = mem[_3170 + 50 len 14]
                        mem[(32 * idx) + 128] = Mask(112, 0, _3172)
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if Mask(112, 0, _3172) <= 0:
                            revert with 0, 'No liquidity'
                    else:
                        mem[(32 * idx) + (32 * ('cd', 68).length) + 160] = mem[_3170 + 18 len 14]
                        mem[(32 * idx) + 128] = Mask(112, 0, _3197)
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if Mask(112, 0, _3197) <= 0:
                            revert with 0, 'No liquidity'
        if idx >= mem[(32 * ('cd', 68).length) + 128]:
            revert with 'NH{q', 50
        if mem[(32 * idx) + (32 * ('cd', 68).length) + 160] <= 0:
            revert with 0, 'No liquidity'
        idx = idx + 1
        continue 
    if not ('cd', 36).length - 1:
        if 1 >= mem[(32 * ('cd', 68).length) + 128]:
            revert with 'NH{q', 50
        if 0 >= mem[(32 * ('cd', 68).length) + 128]:
            revert with 'NH{q', 50
        if mem[(32 * ('cd', 68).length) + 160] and mem[(32 * ('cd', 68).length) + 192] > -1 / mem[(32 * ('cd', 68).length) + 160]:
            revert with 'NH{q', 17
        if 1 >= mem[96]:
            revert with 'NH{q', 50
        if 0 >= mem[96]:
            revert with 'NH{q', 50
        if mem[128] and mem[160] > -1 / mem[128]:
            revert with 'NH{q', 17
        if mem[128] * mem[160] and 10^6 > -1 / mem[128] * mem[160]:
            revert with 'NH{q', 17
        if 1 >= mem[96]:
            revert with 'NH{q', 50
        if mem[160] and 1000 > -1 / mem[160]:
            revert with 'NH{q', 17
        if 0 >= mem[(32 * ('cd', 68).length) + 128]:
            revert with 'NH{q', 50
        if mem[(32 * ('cd', 68).length) + 160] > -(1000 * mem[160] / 997) - 1:
            revert with 'NH{q', 17
        mem[mem[64]] = 160
        mem[mem[64] + 160] = mem[96]
        mem[mem[64] + 192 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
        mem[mem[64] + 32] = (32 * mem[96]) + 192
        _3341 = mem[(32 * ('cd', 68).length) + 128]
        mem[mem[64] + (32 * mem[96]) + 192] = mem[(32 * ('cd', 68).length) + 128]
        mem[mem[64] + (32 * mem[96]) + 224 len 32 * _3341] = mem[(32 * ('cd', 68).length) + 160 len 32 * _3341]
        mem[mem[64] + 64] = 0
        mem[mem[64] + 96] = 0
        return 160, (32 * mem[96]) + 192, 0, 0, 0, mem[96], mem[mem[64] + 192 len (32 * mem[96]) + (32 * _3341) + 32]
    if ('cd', 36).length - 2:
        mem[mem[64]] = 160
        mem[mem[64] + 160] = mem[96]
        mem[mem[64] + 192 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
        mem[mem[64] + 32] = (32 * mem[96]) + 192
        _3339 = mem[(32 * ('cd', 68).length) + 128]
        mem[mem[64] + (32 * mem[96]) + 192] = mem[(32 * ('cd', 68).length) + 128]
        mem[mem[64] + (32 * mem[96]) + 224 len 32 * _3339] = mem[(32 * ('cd', 68).length) + 160 len 32 * _3339]
        mem[mem[64] + 64] = 0
        mem[mem[64] + 96] = 0
        return 160, (32 * mem[96]) + 192, 0, 0, 0, mem[96], mem[mem[64] + 192 len (32 * mem[96]) + (32 * _3339) + 32]
    if 2 >= mem[(32 * ('cd', 68).length) + 128]:
        revert with 'NH{q', 50
    if 1 >= mem[(32 * ('cd', 68).length) + 128]:
        revert with 'NH{q', 50
    if 0 >= mem[(32 * ('cd', 68).length) + 128]:
        revert with 'NH{q', 50
    if mem[(32 * ('cd', 68).length) + 160] and mem[(32 * ('cd', 68).length) + 192] > -1 / mem[(32 * ('cd', 68).length) + 160]:
        revert with 'NH{q', 17
    if mem[(32 * ('cd', 68).length) + 160] * mem[(32 * ('cd', 68).length) + 192] and mem[(32 * ('cd', 68).length) + 224] > -1 / mem[(32 * ('cd', 68).length) + 160] * mem[(32 * ('cd', 68).length) + 192]:
        revert with 'NH{q', 17
    if 2 >= mem[96]:
        revert with 'NH{q', 50
    if 1 >= mem[96]:
        revert with 'NH{q', 50
    if 0 >= mem[96]:
        revert with 'NH{q', 50
    if mem[128] and mem[160] > -1 / mem[128]:
        revert with 'NH{q', 17
    if mem[128] * mem[160] and mem[192] > -1 / mem[128] * mem[160]:
        revert with 'NH{q', 17
    if mem[128] * mem[160] * mem[192] and 10^9 > -1 / mem[128] * mem[160] * mem[192]:
        revert with 'NH{q', 17
    if 2 >= mem[96]:
        revert with 'NH{q', 50
    if 1 >= mem[96]:
        revert with 'NH{q', 50
    if mem[160] and mem[192] > -1 / mem[160]:
        revert with 'NH{q', 17
    if mem[160] * mem[192] and 10^6 > -1 / mem[160] * mem[192]:
        revert with 'NH{q', 17
    if 2 >= mem[96]:
        revert with 'NH{q', 50
    if 0 >= mem[(32 * ('cd', 68).length) + 128]:
        revert with 'NH{q', 50
    if mem[(32 * ('cd', 68).length) + 160] and mem[192] > -1 / mem[(32 * ('cd', 68).length) + 160]:
        revert with 'NH{q', 17
    if mem[(32 * ('cd', 68).length) + 160] * mem[192] and 1000 > -1 / mem[(32 * ('cd', 68).length) + 160] * mem[192]:
        revert with 'NH{q', 17
    if 1 >= mem[(32 * ('cd', 68).length) + 128]:
        revert with 'NH{q', 50
    if 0 >= mem[(32 * ('cd', 68).length) + 128]:
        revert with 'NH{q', 50
    if mem[(32 * ('cd', 68).length) + 160] and mem[(32 * ('cd', 68).length) + 192] > -1 / mem[(32 * ('cd', 68).length) + 160]:
        revert with 'NH{q', 17
    if mem[(32 * ('cd', 68).length) + 160] * mem[(32 * ('cd', 68).length) + 192] > -(1000 * mem[(32 * ('cd', 68).length) + 160] * mem[192] / 997) - 1:
        revert with 'NH{q', 17
    if (mem[(32 * ('cd', 68).length) + 160] * mem[(32 * ('cd', 68).length) + 192]) + (1000 * mem[(32 * ('cd', 68).length) + 160] * mem[192] / 997) > -(10^6 * mem[160] * mem[192] / 994009) - 1:
        revert with 'NH{q', 17
    mem[mem[64]] = 160
    mem[mem[64] + 160] = mem[96]
    mem[mem[64] + 192 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    mem[mem[64] + 32] = (32 * mem[96]) + 192
    _3340 = mem[(32 * ('cd', 68).length) + 128]
    mem[mem[64] + (32 * mem[96]) + 192] = mem[(32 * ('cd', 68).length) + 128]
    mem[mem[64] + (32 * mem[96]) + 224 len 32 * _3340] = mem[(32 * ('cd', 68).length) + 160 len 32 * _3340]
    mem[mem[64] + 64] = 0
    mem[mem[64] + 96] = 0
    return 160, (32 * mem[96]) + 192, 0, 0, 0, mem[96], mem[mem[64] + 192 len (32 * mem[96]) + (32 * _3340) + 32]
}



}
