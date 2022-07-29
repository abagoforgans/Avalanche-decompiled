contract main {




// =====================  Runtime code  =====================


#
#  - elkCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - onFlashLoan(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5)
#  - executeOperation(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5)
#  - oliveCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - sub_81279c7e(?)
#  - baguetteCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - lydiaCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - joeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - pangolinCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - uniswapV3SwapCallback(int256 arg1, int256 arg2, bytes arg3)
#
address owner;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function sub_e84423c3(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size + -cd[4] - 4 >= 128
    mem[96] = ('cd', 4).length
    mem[128] = ('cd', 4)[0]
    require ('cd', 4)[1] <= test266151307()
    require calldata.size > cd[4] + ('cd', 4)[1] + 35
    if cd[(cd[4] + ('cd', 4)[1] + 4)] > test266151307():
        revert with 'NH{q', 65
    if floor32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 225 < 224 or floor32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 225 > test266151307():
        revert with 'NH{q', 65
    mem[224] = cd[(cd[4] + ('cd', 4)[1] + 4)]
    require cd[4] + ('cd', 4)[1] + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + 36 <= calldata.size
    s = 256
    idx = cd[4] + ('cd', 4)[1] + 36
    while idx < cd[4] + ('cd', 4)[1] + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    mem[160] = 224
    require ('cd', 4)[2] <= test266151307()
    require cd[4] + ('cd', 4)[2] + 35 < calldata.size
    if cd[(cd[4] + ('cd', 4)[2] + 4)] > test266151307():
        revert with 'NH{q', 65
    if floor32(cd[(cd[4] + ('cd', 4)[2] + 4)]) + 226 < 225 or floor32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[2] + 4)]) + 226 > test266151307():
        revert with 'NH{q', 65
    mem[64] = floor32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[2] + 4)]) + 226
    mem[floor32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 225] = cd[(cd[4] + ('cd', 4)[2] + 4)]
    require cd[4] + ('cd', 4)[2] + (64 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 36 <= calldata.size
    idx = cd[4] + ('cd', 4)[2] + 36
    s = floor32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 257
    while idx < cd[4] + ('cd', 4)[2] + (64 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 36:
        require calldata.size - idx >= 64
        _1865 = mem[64]
        if mem[64] + 64 < mem[64] or mem[64] + 64 > test266151307():
            revert with 'NH{q', 65
        mem[64] = mem[64] + 64
        require cd[idx] == address(cd[idx])
        mem[_1865] = cd[idx]
        mem[_1865 + 32] = cd[(idx + 32)]
        mem[s] = _1865
        idx = idx + 64
        s = s + 32
        continue 
    mem[192] = floor32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 225
    if 0 >= mem[mem[160]]:
        revert with 'NH{q', 50
    _1868 = mem[mem[160] + 32]
    mem[mem[64] + 4] = owner
    staticcall address(_1868).0x70a08231 with:
            gas gas_remaining wei
           args owner
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1871 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _1872 = mem[_1871]
    if 0 >= mem[floor32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 225]:
        revert with 'NH{q', 50
    if 1 == mem[mem[floor32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 257] + 32]:
        if mem[128] >= mem[floor32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 225]:
            revert with 'NH{q', 50
        _1893 = mem[mem[(32 * mem[128]) + floor32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 257]]
        if 1 > !mem[128]:
            revert with 'NH{q', 17
        if mem[128] + 1 >= mem[mem[160]]:
            revert with 'NH{q', 50
        _1913 = mem[(32 * mem[128] + 1) + mem[160] + 32]
        staticcall mem[mem[(32 * mem[128]) + floor32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 257] + 12 len 20].token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1922 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1922] == mem[_1922 + 12 len 20]
        if mem[_1922 + 12 len 20] != address(_1913):
            _1993 = mem[96]
            _2006 = mem[64]
            mem[mem[64] + 32] = 32
            mem[mem[64] + 64] = mem[96]
            mem[mem[64] + 96] = mem[128]
            _2025 = mem[160]
            mem[mem[64] + 128] = 128
            _2026 = mem[mem[160]]
            mem[mem[64] + 192] = mem[mem[160]]
            s = mem[64] + 224
            idx = 0
            t = _2025 + 32
            while idx < _2026:
                mem[s] = mem[t + 12 len 20]
                s = s + 32
                idx = idx + 1
                t = t + 32
                continue 
            mem[mem[64] + 160] = (32 * _2026) + 160
            _2849 = mem[mem[192]]
            mem[mem[64] + (32 * _2026) + 224] = mem[mem[192]]
            idx = 0
            s = mem[192] + 32
            t = mem[64] + (32 * _2026) + 256
            while idx < _2849:
                _3399 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_3399 + 32]
                idx = idx + 1
                s = s + 32
                t = t + 64
                continue 
            _3473 = mem[64]
            mem[mem[64]] = _2006 + (32 * _2026) + (64 * _2849) + -mem[64] + 224
            mem[64] = _2006 + (32 * _2026) + (64 * _2849) + 256
            mem[_2006 + (32 * _2026) + (64 * _2849) + 256] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[_2006 + (32 * _2026) + (64 * _2849) + 260] = 0
            mem[_2006 + (32 * _2026) + (64 * _2849) + 292] = _1993
            mem[_2006 + (32 * _2026) + (64 * _2849) + 324] = this.address
            mem[_2006 + (32 * _2026) + (64 * _2849) + 356] = 128
            _3499 = mem[_3473]
            mem[_2006 + (32 * _2026) + (64 * _2849) + 388] = mem[_3473]
            mem[_2006 + (32 * _2026) + (64 * _2849) + 420 len ceil32(_3499)] = mem[_3473 + 32 len ceil32(_3499)]
            var82001 = ceil32(_3499)
            if ceil32(_3499) > _3499:
                mem[_2006 + (32 * _2026) + (64 * _2849) + _3499 + 420] = 0
            require ext_code.size(address(_1893))
            call address(_1893).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, _1993, address(this.address), 128, mem[_2006 + (32 * _2026) + (64 * _2849) + 388 len ceil32(_3499) + 32]
        else:
            _1974 = mem[96]
            if mem[96]:
                _2005 = mem[64]
                mem[mem[64] + 32] = 32
                mem[mem[64] + 64] = mem[96]
                mem[mem[64] + 96] = mem[128]
                _2021 = mem[160]
                mem[mem[64] + 128] = 128
                _2022 = mem[mem[160]]
                mem[mem[64] + 192] = mem[mem[160]]
                s = mem[64] + 224
                idx = 0
                t = _2021 + 32
                while idx < _2022:
                    mem[s] = mem[t + 12 len 20]
                    s = s + 32
                    idx = idx + 1
                    t = t + 32
                    continue 
                mem[mem[64] + 160] = (32 * _2022) + 160
                _2848 = mem[mem[192]]
                mem[mem[64] + (32 * _2022) + 224] = mem[mem[192]]
                idx = 0
                s = mem[192] + 32
                t = mem[64] + (32 * _2022) + 256
                while idx < _2848:
                    _3396 = mem[s]
                    mem[t] = mem[mem[s] + 12 len 20]
                    mem[t + 32] = mem[_3396 + 32]
                    idx = idx + 1
                    s = s + 32
                    t = t + 64
                    continue 
                _3472 = mem[64]
                mem[mem[64]] = _2005 + (32 * _2022) + (64 * _2848) + -mem[64] + 224
                mem[64] = _2005 + (32 * _2022) + (64 * _2848) + 256
                mem[_2005 + (32 * _2022) + (64 * _2848) + 256] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_2005 + (32 * _2022) + (64 * _2848) + 260] = _1974
                mem[_2005 + (32 * _2022) + (64 * _2848) + 292] = 0
                mem[_2005 + (32 * _2022) + (64 * _2848) + 324] = this.address
                mem[_2005 + (32 * _2022) + (64 * _2848) + 356] = 128
                _3498 = mem[_3472]
                mem[_2005 + (32 * _2022) + (64 * _2848) + 388] = mem[_3472]
                mem[_2005 + (32 * _2022) + (64 * _2848) + 420 len ceil32(_3498)] = mem[_3472 + 32 len ceil32(_3498)]
                var82001 = ceil32(_3498)
                if ceil32(_3498) > _3498:
                    mem[_2005 + (32 * _2022) + (64 * _2848) + _3498 + 420] = 0
                require ext_code.size(address(_1893))
                call address(_1893).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args _1974, 0, address(this.address), 128, mem[_2005 + (32 * _2022) + (64 * _2848) + 388 len ceil32(_3498) + 32]
            else:
                _1992 = mem[96]
                _2004 = mem[64]
                mem[mem[64] + 32] = 32
                mem[mem[64] + 64] = mem[96]
                mem[mem[64] + 96] = mem[128]
                _2017 = mem[160]
                mem[mem[64] + 128] = 128
                _2018 = mem[mem[160]]
                mem[mem[64] + 192] = mem[mem[160]]
                s = mem[64] + 224
                idx = 0
                t = _2017 + 32
                while idx < _2018:
                    mem[s] = mem[t + 12 len 20]
                    s = s + 32
                    idx = idx + 1
                    t = t + 32
                    continue 
                mem[mem[64] + 160] = (32 * _2018) + 160
                _2847 = mem[mem[192]]
                mem[mem[64] + (32 * _2018) + 224] = mem[mem[192]]
                idx = 0
                s = mem[192] + 32
                t = mem[64] + (32 * _2018) + 256
                while idx < _2847:
                    _3393 = mem[s]
                    mem[t] = mem[mem[s] + 12 len 20]
                    mem[t + 32] = mem[_3393 + 32]
                    idx = idx + 1
                    s = s + 32
                    t = t + 64
                    continue 
                _3471 = mem[64]
                mem[mem[64]] = _2004 + (32 * _2018) + (64 * _2847) + -mem[64] + 224
                mem[64] = _2004 + (32 * _2018) + (64 * _2847) + 256
                mem[_2004 + (32 * _2018) + (64 * _2847) + 256] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_2004 + (32 * _2018) + (64 * _2847) + 260] = _1974
                mem[_2004 + (32 * _2018) + (64 * _2847) + 292] = _1992
                mem[_2004 + (32 * _2018) + (64 * _2847) + 324] = this.address
                mem[_2004 + (32 * _2018) + (64 * _2847) + 356] = 128
                _3497 = mem[_3471]
                mem[_2004 + (32 * _2018) + (64 * _2847) + 388] = mem[_3471]
                mem[_2004 + (32 * _2018) + (64 * _2847) + 420 len ceil32(_3497)] = mem[_3471 + 32 len ceil32(_3497)]
                var82001 = ceil32(_3497)
                if ceil32(_3497) > _3497:
                    mem[_2004 + (32 * _2018) + (64 * _2847) + _3497 + 420] = 0
                require ext_code.size(address(_1893))
                call address(_1893).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args _1974, _1992, address(this.address), 128, mem[_2004 + (32 * _2018) + (64 * _2847) + 388 len ceil32(_3497) + 32]
    else:
        if 0 >= mem[floor32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 225]:
            revert with 'NH{q', 50
        if 101 == mem[mem[floor32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 257] + 32]:
            if mem[128] >= mem[floor32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 225]:
                revert with 'NH{q', 50
            _1904 = mem[mem[(32 * mem[128]) + floor32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 257]]
            if 1 > !mem[128]:
                revert with 'NH{q', 17
            if mem[128] + 1 >= mem[mem[160]]:
                revert with 'NH{q', 50
            _1927 = mem[(32 * mem[128] + 1) + mem[160] + 32]
            staticcall mem[mem[(32 * mem[128]) + floor32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 257] + 12 len 20].token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1937 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1937] == mem[_1937 + 12 len 20]
            if mem[_1937 + 12 len 20] != address(_1927):
                _2028 = mem[96]
                _2041 = mem[64]
                mem[mem[64] + 32] = 32
                mem[mem[64] + 64] = mem[96]
                mem[mem[64] + 96] = mem[128]
                _2065 = mem[160]
                mem[mem[64] + 128] = 128
                _2066 = mem[mem[160]]
                mem[mem[64] + 192] = mem[mem[160]]
                s = mem[64] + 224
                idx = 0
                t = _2065 + 32
                while idx < _2066:
                    mem[s] = mem[t + 12 len 20]
                    s = s + 32
                    idx = idx + 1
                    t = t + 32
                    continue 
                mem[mem[64] + 160] = (32 * _2066) + 160
                _2852 = mem[mem[192]]
                mem[mem[64] + (32 * _2066) + 224] = mem[mem[192]]
                idx = 0
                s = mem[192] + 32
                t = mem[64] + (32 * _2066) + 256
                while idx < _2852:
                    _3408 = mem[s]
                    mem[t] = mem[mem[s] + 12 len 20]
                    mem[t + 32] = mem[_3408 + 32]
                    idx = idx + 1
                    s = s + 32
                    t = t + 64
                    continue 
                _3476 = mem[64]
                mem[mem[64]] = _2041 + (32 * _2066) + (64 * _2852) + -mem[64] + 224
                mem[64] = _2041 + (32 * _2066) + (64 * _2852) + 256
                mem[_2041 + (32 * _2066) + (64 * _2852) + 256] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_2041 + (32 * _2066) + (64 * _2852) + 260] = 0
                mem[_2041 + (32 * _2066) + (64 * _2852) + 292] = _2028
                mem[_2041 + (32 * _2066) + (64 * _2852) + 324] = this.address
                mem[_2041 + (32 * _2066) + (64 * _2852) + 356] = 128
                _3502 = mem[_3476]
                mem[_2041 + (32 * _2066) + (64 * _2852) + 388] = mem[_3476]
                mem[_2041 + (32 * _2066) + (64 * _2852) + 420 len ceil32(_3502)] = mem[_3476 + 32 len ceil32(_3502)]
                if ceil32(_3502) > _3502:
                    mem[_2041 + (32 * _2066) + (64 * _2852) + _3502 + 420] = 0
                require ext_code.size(address(_1904))
                call address(_1904).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, _2028, address(this.address), 128, mem[_2041 + (32 * _2066) + (64 * _2852) + 388 len ceil32(_3502) + 32]
            else:
                _1994 = mem[96]
                if mem[96]:
                    _2040 = mem[64]
                    mem[mem[64] + 32] = 32
                    mem[mem[64] + 64] = mem[96]
                    mem[mem[64] + 96] = mem[128]
                    _2061 = mem[160]
                    mem[mem[64] + 128] = 128
                    _2062 = mem[mem[160]]
                    mem[mem[64] + 192] = mem[mem[160]]
                    s = mem[64] + 224
                    idx = 0
                    t = _2061 + 32
                    while idx < _2062:
                        mem[s] = mem[t + 12 len 20]
                        s = s + 32
                        idx = idx + 1
                        t = t + 32
                        continue 
                    mem[mem[64] + 160] = (32 * _2062) + 160
                    _2851 = mem[mem[192]]
                    mem[mem[64] + (32 * _2062) + 224] = mem[mem[192]]
                    idx = 0
                    s = mem[192] + 32
                    t = mem[64] + (32 * _2062) + 256
                    while idx < _2851:
                        _3405 = mem[s]
                        mem[t] = mem[mem[s] + 12 len 20]
                        mem[t + 32] = mem[_3405 + 32]
                        idx = idx + 1
                        s = s + 32
                        t = t + 64
                        continue 
                    _3475 = mem[64]
                    mem[mem[64]] = _2040 + (32 * _2062) + (64 * _2851) + -mem[64] + 224
                    mem[64] = _2040 + (32 * _2062) + (64 * _2851) + 256
                    mem[_2040 + (32 * _2062) + (64 * _2851) + 256] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_2040 + (32 * _2062) + (64 * _2851) + 260] = _1994
                    mem[_2040 + (32 * _2062) + (64 * _2851) + 292] = 0
                    mem[_2040 + (32 * _2062) + (64 * _2851) + 324] = this.address
                    mem[_2040 + (32 * _2062) + (64 * _2851) + 356] = 128
                    _3501 = mem[_3475]
                    mem[_2040 + (32 * _2062) + (64 * _2851) + 388] = mem[_3475]
                    mem[_2040 + (32 * _2062) + (64 * _2851) + 420 len ceil32(_3501)] = mem[_3475 + 32 len ceil32(_3501)]
                    if ceil32(_3501) > _3501:
                        mem[_2040 + (32 * _2062) + (64 * _2851) + _3501 + 420] = 0
                    require ext_code.size(address(_1904))
                    call address(_1904).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _1994, 0, address(this.address), 128, mem[_2040 + (32 * _2062) + (64 * _2851) + 388 len ceil32(_3501) + 32]
                else:
                    _2027 = mem[96]
                    _2039 = mem[64]
                    mem[mem[64] + 32] = 32
                    mem[mem[64] + 64] = mem[96]
                    mem[mem[64] + 96] = mem[128]
                    _2057 = mem[160]
                    mem[mem[64] + 128] = 128
                    _2058 = mem[mem[160]]
                    mem[mem[64] + 192] = mem[mem[160]]
                    s = mem[64] + 224
                    idx = 0
                    t = _2057 + 32
                    while idx < _2058:
                        mem[s] = mem[t + 12 len 20]
                        s = s + 32
                        idx = idx + 1
                        t = t + 32
                        continue 
                    mem[mem[64] + 160] = (32 * _2058) + 160
                    _2850 = mem[mem[192]]
                    mem[mem[64] + (32 * _2058) + 224] = mem[mem[192]]
                    idx = 0
                    s = mem[192] + 32
                    t = mem[64] + (32 * _2058) + 256
                    while idx < _2850:
                        _3402 = mem[s]
                        mem[t] = mem[mem[s] + 12 len 20]
                        mem[t + 32] = mem[_3402 + 32]
                        idx = idx + 1
                        s = s + 32
                        t = t + 64
                        continue 
                    _3474 = mem[64]
                    mem[mem[64]] = _2039 + (32 * _2058) + (64 * _2850) + -mem[64] + 224
                    mem[64] = _2039 + (32 * _2058) + (64 * _2850) + 256
                    mem[_2039 + (32 * _2058) + (64 * _2850) + 256] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_2039 + (32 * _2058) + (64 * _2850) + 260] = _1994
                    mem[_2039 + (32 * _2058) + (64 * _2850) + 292] = _2027
                    mem[_2039 + (32 * _2058) + (64 * _2850) + 324] = this.address
                    mem[_2039 + (32 * _2058) + (64 * _2850) + 356] = 128
                    _3500 = mem[_3474]
                    mem[_2039 + (32 * _2058) + (64 * _2850) + 388] = mem[_3474]
                    mem[_2039 + (32 * _2058) + (64 * _2850) + 420 len ceil32(_3500)] = mem[_3474 + 32 len ceil32(_3500)]
                    if ceil32(_3500) > _3500:
                        mem[_2039 + (32 * _2058) + (64 * _2850) + _3500 + 420] = 0
                    require ext_code.size(address(_1904))
                    call address(_1904).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _1994, _2027, address(this.address), 128, mem[_2039 + (32 * _2058) + (64 * _2850) + 388 len ceil32(_3500) + 32]
        else:
            if 0 >= mem[floor32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 225]:
                revert with 'NH{q', 50
            if 102 == mem[mem[floor32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 257] + 32]:
                if mem[128] >= mem[floor32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 225]:
                    revert with 'NH{q', 50
                _1917 = mem[mem[(32 * mem[128]) + floor32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 257]]
                if 1 > !mem[128]:
                    revert with 'NH{q', 17
                if mem[128] + 1 >= mem[mem[160]]:
                    revert with 'NH{q', 50
                _1944 = mem[(32 * mem[128] + 1) + mem[160] + 32]
                staticcall mem[mem[(32 * mem[128]) + floor32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 257] + 12 len 20].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1952 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1952] == mem[_1952 + 12 len 20]
                if mem[_1952 + 12 len 20] != address(_1944):
                    _2068 = mem[96]
                    _2082 = mem[64]
                    mem[mem[64] + 32] = 32
                    mem[mem[64] + 64] = mem[96]
                    mem[mem[64] + 96] = mem[128]
                    _2103 = mem[160]
                    mem[mem[64] + 128] = 128
                    _2104 = mem[mem[160]]
                    mem[mem[64] + 192] = mem[mem[160]]
                    s = mem[64] + 224
                    idx = 0
                    t = _2103 + 32
                    while idx < _2104:
                        mem[s] = mem[t + 12 len 20]
                        s = s + 32
                        idx = idx + 1
                        t = t + 32
                        continue 
                    mem[mem[64] + 160] = (32 * _2104) + 160
                    _2855 = mem[mem[192]]
                    mem[mem[64] + (32 * _2104) + 224] = mem[mem[192]]
                    idx = 0
                    s = mem[192] + 32
                    t = mem[64] + (32 * _2104) + 256
                    while idx < _2855:
                        _3417 = mem[s]
                        mem[t] = mem[mem[s] + 12 len 20]
                        mem[t + 32] = mem[_3417 + 32]
                        idx = idx + 1
                        s = s + 32
                        t = t + 64
                        continue 
                    _3479 = mem[64]
                    mem[mem[64]] = _2082 + (32 * _2104) + (64 * _2855) + -mem[64] + 224
                    mem[64] = _2082 + (32 * _2104) + (64 * _2855) + 256
                    mem[_2082 + (32 * _2104) + (64 * _2855) + 256] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_2082 + (32 * _2104) + (64 * _2855) + 260] = 0
                    mem[_2082 + (32 * _2104) + (64 * _2855) + 292] = _2068
                    mem[_2082 + (32 * _2104) + (64 * _2855) + 324] = this.address
                    mem[_2082 + (32 * _2104) + (64 * _2855) + 356] = 128
                    _3505 = mem[_3479]
                    mem[_2082 + (32 * _2104) + (64 * _2855) + 388] = mem[_3479]
                    mem[_2082 + (32 * _2104) + (64 * _2855) + 420 len ceil32(_3505)] = mem[_3479 + 32 len ceil32(_3505)]
                    if ceil32(_3505) > _3505:
                        mem[_2082 + (32 * _2104) + (64 * _2855) + _3505 + 420] = 0
                    require ext_code.size(address(_1917))
                    call address(_1917).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, _2068, address(this.address), 128, mem[_2082 + (32 * _2104) + (64 * _2855) + 388 len ceil32(_3505) + 32]
                else:
                    _2029 = mem[96]
                    if mem[96]:
                        _2081 = mem[64]
                        mem[mem[64] + 32] = 32
                        mem[mem[64] + 64] = mem[96]
                        mem[mem[64] + 96] = mem[128]
                        _2099 = mem[160]
                        mem[mem[64] + 128] = 128
                        _2100 = mem[mem[160]]
                        mem[mem[64] + 192] = mem[mem[160]]
                        s = mem[64] + 224
                        idx = 0
                        t = _2099 + 32
                        while idx < _2100:
                            mem[s] = mem[t + 12 len 20]
                            s = s + 32
                            idx = idx + 1
                            t = t + 32
                            continue 
                        mem[mem[64] + 160] = (32 * _2100) + 160
                        _2854 = mem[mem[192]]
                        mem[mem[64] + (32 * _2100) + 224] = mem[mem[192]]
                        idx = 0
                        s = mem[192] + 32
                        t = mem[64] + (32 * _2100) + 256
                        while idx < _2854:
                            _3414 = mem[s]
                            mem[t] = mem[mem[s] + 12 len 20]
                            mem[t + 32] = mem[_3414 + 32]
                            idx = idx + 1
                            s = s + 32
                            t = t + 64
                            continue 
                        _3478 = mem[64]
                        mem[mem[64]] = _2081 + (32 * _2100) + (64 * _2854) + -mem[64] + 224
                        mem[64] = _2081 + (32 * _2100) + (64 * _2854) + 256
                        mem[_2081 + (32 * _2100) + (64 * _2854) + 256] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_2081 + (32 * _2100) + (64 * _2854) + 260] = _2029
                        mem[_2081 + (32 * _2100) + (64 * _2854) + 292] = 0
                        mem[_2081 + (32 * _2100) + (64 * _2854) + 324] = this.address
                        mem[_2081 + (32 * _2100) + (64 * _2854) + 356] = 128
                        _3504 = mem[_3478]
                        mem[_2081 + (32 * _2100) + (64 * _2854) + 388] = mem[_3478]
                        mem[_2081 + (32 * _2100) + (64 * _2854) + 420 len ceil32(_3504)] = mem[_3478 + 32 len ceil32(_3504)]
                        if ceil32(_3504) > _3504:
                            mem[_2081 + (32 * _2100) + (64 * _2854) + _3504 + 420] = 0
                        require ext_code.size(address(_1917))
                        call address(_1917).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _2029, 0, address(this.address), 128, mem[_2081 + (32 * _2100) + (64 * _2854) + 388 len ceil32(_3504) + 32]
                    else:
                        _2067 = mem[96]
                        _2080 = mem[64]
                        mem[mem[64] + 32] = 32
                        mem[mem[64] + 64] = mem[96]
                        mem[mem[64] + 96] = mem[128]
                        _2095 = mem[160]
                        mem[mem[64] + 128] = 128
                        _2096 = mem[mem[160]]
                        mem[mem[64] + 192] = mem[mem[160]]
                        s = mem[64] + 224
                        idx = 0
                        t = _2095 + 32
                        while idx < _2096:
                            mem[s] = mem[t + 12 len 20]
                            s = s + 32
                            idx = idx + 1
                            t = t + 32
                            continue 
                        mem[mem[64] + 160] = (32 * _2096) + 160
                        _2853 = mem[mem[192]]
                        mem[mem[64] + (32 * _2096) + 224] = mem[mem[192]]
                        idx = 0
                        s = mem[192] + 32
                        t = mem[64] + (32 * _2096) + 256
                        while idx < _2853:
                            _3411 = mem[s]
                            mem[t] = mem[mem[s] + 12 len 20]
                            mem[t + 32] = mem[_3411 + 32]
                            idx = idx + 1
                            s = s + 32
                            t = t + 64
                            continue 
                        _3477 = mem[64]
                        mem[mem[64]] = _2080 + (32 * _2096) + (64 * _2853) + -mem[64] + 224
                        mem[64] = _2080 + (32 * _2096) + (64 * _2853) + 256
                        mem[_2080 + (32 * _2096) + (64 * _2853) + 256] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_2080 + (32 * _2096) + (64 * _2853) + 260] = _2029
                        mem[_2080 + (32 * _2096) + (64 * _2853) + 292] = _2067
                        mem[_2080 + (32 * _2096) + (64 * _2853) + 324] = this.address
                        mem[_2080 + (32 * _2096) + (64 * _2853) + 356] = 128
                        _3503 = mem[_3477]
                        mem[_2080 + (32 * _2096) + (64 * _2853) + 388] = mem[_3477]
                        mem[_2080 + (32 * _2096) + (64 * _2853) + 420 len ceil32(_3503)] = mem[_3477 + 32 len ceil32(_3503)]
                        if ceil32(_3503) > _3503:
                            mem[_2080 + (32 * _2096) + (64 * _2853) + _3503 + 420] = 0
                        require ext_code.size(address(_1917))
                        call address(_1917).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _2029, _2067, address(this.address), 128, mem[_2080 + (32 * _2096) + (64 * _2853) + 388 len ceil32(_3503) + 32]
            else:
                if 0 >= mem[floor32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 225]:
                    revert with 'NH{q', 50
                if 103 == mem[mem[floor32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 257] + 32]:
                    if mem[128] >= mem[floor32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 225]:
                        revert with 'NH{q', 50
                    _1931 = mem[mem[(32 * mem[128]) + floor32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 257]]
                    if 1 > !mem[128]:
                        revert with 'NH{q', 17
                    if mem[128] + 1 >= mem[mem[160]]:
                        revert with 'NH{q', 50
                    _1959 = mem[(32 * mem[128] + 1) + mem[160] + 32]
                    staticcall mem[mem[(32 * mem[128]) + floor32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 257] + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1969 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1969] == mem[_1969 + 12 len 20]
                    if mem[_1969 + 12 len 20] != address(_1959):
                        _2106 = mem[96]
                        _2125 = mem[64]
                        mem[mem[64] + 32] = 32
                        mem[mem[64] + 64] = mem[96]
                        mem[mem[64] + 96] = mem[128]
                        _2148 = mem[160]
                        mem[mem[64] + 128] = 128
                        _2149 = mem[mem[160]]
                        mem[mem[64] + 192] = mem[mem[160]]
                        s = mem[64] + 224
                        idx = 0
                        t = _2148 + 32
                        while idx < _2149:
                            mem[s] = mem[t + 12 len 20]
                            s = s + 32
                            idx = idx + 1
                            t = t + 32
                            continue 
                        mem[mem[64] + 160] = (32 * _2149) + 160
                        _2858 = mem[mem[192]]
                        mem[mem[64] + (32 * _2149) + 224] = mem[mem[192]]
                        idx = 0
                        s = mem[192] + 32
                        t = mem[64] + (32 * _2149) + 256
                        while idx < _2858:
                            _3426 = mem[s]
                            mem[t] = mem[mem[s] + 12 len 20]
                            mem[t + 32] = mem[_3426 + 32]
                            idx = idx + 1
                            s = s + 32
                            t = t + 64
                            continue 
                        _3482 = mem[64]
                        mem[mem[64]] = _2125 + (32 * _2149) + (64 * _2858) + -mem[64] + 224
                        mem[64] = _2125 + (32 * _2149) + (64 * _2858) + 256
                        mem[_2125 + (32 * _2149) + (64 * _2858) + 256] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_2125 + (32 * _2149) + (64 * _2858) + 260] = 0
                        mem[_2125 + (32 * _2149) + (64 * _2858) + 292] = _2106
                        mem[_2125 + (32 * _2149) + (64 * _2858) + 324] = this.address
                        mem[_2125 + (32 * _2149) + (64 * _2858) + 356] = 128
                        _3508 = mem[_3482]
                        mem[_2125 + (32 * _2149) + (64 * _2858) + 388] = mem[_3482]
                        mem[_2125 + (32 * _2149) + (64 * _2858) + 420 len ceil32(_3508)] = mem[_3482 + 32 len ceil32(_3508)]
                        if ceil32(_3508) > _3508:
                            mem[_2125 + (32 * _2149) + (64 * _2858) + _3508 + 420] = 0
                        require ext_code.size(address(_1931))
                        call address(_1931).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, _2106, address(this.address), 128, mem[_2125 + (32 * _2149) + (64 * _2858) + 388 len ceil32(_3508) + 32]
                    else:
                        _2069 = mem[96]
                        if mem[96]:
                            _2124 = mem[64]
                            mem[mem[64] + 32] = 32
                            mem[mem[64] + 64] = mem[96]
                            mem[mem[64] + 96] = mem[128]
                            _2144 = mem[160]
                            mem[mem[64] + 128] = 128
                            _2145 = mem[mem[160]]
                            mem[mem[64] + 192] = mem[mem[160]]
                            s = mem[64] + 224
                            idx = 0
                            t = _2144 + 32
                            while idx < _2145:
                                mem[s] = mem[t + 12 len 20]
                                s = s + 32
                                idx = idx + 1
                                t = t + 32
                                continue 
                            mem[mem[64] + 160] = (32 * _2145) + 160
                            _2857 = mem[mem[192]]
                            mem[mem[64] + (32 * _2145) + 224] = mem[mem[192]]
                            idx = 0
                            s = mem[192] + 32
                            t = mem[64] + (32 * _2145) + 256
                            while idx < _2857:
                                _3423 = mem[s]
                                mem[t] = mem[mem[s] + 12 len 20]
                                mem[t + 32] = mem[_3423 + 32]
                                idx = idx + 1
                                s = s + 32
                                t = t + 64
                                continue 
                            _3481 = mem[64]
                            mem[mem[64]] = _2124 + (32 * _2145) + (64 * _2857) + -mem[64] + 224
                            mem[64] = _2124 + (32 * _2145) + (64 * _2857) + 256
                            mem[_2124 + (32 * _2145) + (64 * _2857) + 256] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2124 + (32 * _2145) + (64 * _2857) + 260] = _2069
                            mem[_2124 + (32 * _2145) + (64 * _2857) + 292] = 0
                            mem[_2124 + (32 * _2145) + (64 * _2857) + 324] = this.address
                            mem[_2124 + (32 * _2145) + (64 * _2857) + 356] = 128
                            _3507 = mem[_3481]
                            mem[_2124 + (32 * _2145) + (64 * _2857) + 388] = mem[_3481]
                            mem[_2124 + (32 * _2145) + (64 * _2857) + 420 len ceil32(_3507)] = mem[_3481 + 32 len ceil32(_3507)]
                            if ceil32(_3507) > _3507:
                                mem[_2124 + (32 * _2145) + (64 * _2857) + _3507 + 420] = 0
                            require ext_code.size(address(_1931))
                            call address(_1931).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _2069, 0, address(this.address), 128, mem[_2124 + (32 * _2145) + (64 * _2857) + 388 len ceil32(_3507) + 32]
                        else:
                            _2105 = mem[96]
                            _2123 = mem[64]
                            mem[mem[64] + 32] = 32
                            mem[mem[64] + 64] = mem[96]
                            mem[mem[64] + 96] = mem[128]
                            _2140 = mem[160]
                            mem[mem[64] + 128] = 128
                            _2141 = mem[mem[160]]
                            mem[mem[64] + 192] = mem[mem[160]]
                            s = mem[64] + 224
                            idx = 0
                            t = _2140 + 32
                            while idx < _2141:
                                mem[s] = mem[t + 12 len 20]
                                s = s + 32
                                idx = idx + 1
                                t = t + 32
                                continue 
                            mem[mem[64] + 160] = (32 * _2141) + 160
                            _2856 = mem[mem[192]]
                            mem[mem[64] + (32 * _2141) + 224] = mem[mem[192]]
                            idx = 0
                            s = mem[192] + 32
                            t = mem[64] + (32 * _2141) + 256
                            while idx < _2856:
                                _3420 = mem[s]
                                mem[t] = mem[mem[s] + 12 len 20]
                                mem[t + 32] = mem[_3420 + 32]
                                idx = idx + 1
                                s = s + 32
                                t = t + 64
                                continue 
                            _3480 = mem[64]
                            mem[mem[64]] = _2123 + (32 * _2141) + (64 * _2856) + -mem[64] + 224
                            mem[64] = _2123 + (32 * _2141) + (64 * _2856) + 256
                            mem[_2123 + (32 * _2141) + (64 * _2856) + 256] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2123 + (32 * _2141) + (64 * _2856) + 260] = _2069
                            mem[_2123 + (32 * _2141) + (64 * _2856) + 292] = _2105
                            mem[_2123 + (32 * _2141) + (64 * _2856) + 324] = this.address
                            mem[_2123 + (32 * _2141) + (64 * _2856) + 356] = 128
                            _3506 = mem[_3480]
                            mem[_2123 + (32 * _2141) + (64 * _2856) + 388] = mem[_3480]
                            mem[_2123 + (32 * _2141) + (64 * _2856) + 420 len ceil32(_3506)] = mem[_3480 + 32 len ceil32(_3506)]
                            if ceil32(_3506) > _3506:
                                mem[_2123 + (32 * _2141) + (64 * _2856) + _3506 + 420] = 0
                            require ext_code.size(address(_1931))
                            call address(_1931).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _2069, _2105, address(this.address), 128, mem[_2123 + (32 * _2141) + (64 * _2856) + 388 len ceil32(_3506) + 32]
                else:
                    if 0 >= mem[floor32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 225]:
                        revert with 'NH{q', 50
                    if 104 == mem[mem[floor32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 257] + 32]:
                        if mem[128] >= mem[floor32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 225]:
                            revert with 'NH{q', 50
                        _1948 = mem[mem[(32 * mem[128]) + floor32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 257]]
                        if 1 > !mem[128]:
                            revert with 'NH{q', 17
                        if mem[128] + 1 >= mem[mem[160]]:
                            revert with 'NH{q', 50
                        _1975 = mem[(32 * mem[128] + 1) + mem[160] + 32]
                        staticcall mem[mem[(32 * mem[128]) + floor32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 257] + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1985 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1985] == mem[_1985 + 12 len 20]
                        if mem[_1985 + 12 len 20] != address(_1975):
                            _2151 = mem[96]
                            _2173 = mem[64]
                            mem[mem[64] + 32] = 32
                            mem[mem[64] + 64] = mem[96]
                            mem[mem[64] + 96] = mem[128]
                            _2196 = mem[160]
                            mem[mem[64] + 128] = 128
                            _2197 = mem[mem[160]]
                            mem[mem[64] + 192] = mem[mem[160]]
                            s = mem[64] + 224
                            idx = 0
                            t = _2196 + 32
                            while idx < _2197:
                                mem[s] = mem[t + 12 len 20]
                                s = s + 32
                                idx = idx + 1
                                t = t + 32
                                continue 
                            mem[mem[64] + 160] = (32 * _2197) + 160
                            _2861 = mem[mem[192]]
                            mem[mem[64] + (32 * _2197) + 224] = mem[mem[192]]
                            idx = 0
                            s = mem[192] + 32
                            t = mem[64] + (32 * _2197) + 256
                            while idx < _2861:
                                _3435 = mem[s]
                                mem[t] = mem[mem[s] + 12 len 20]
                                mem[t + 32] = mem[_3435 + 32]
                                idx = idx + 1
                                s = s + 32
                                t = t + 64
                                continue 
                            _3485 = mem[64]
                            mem[mem[64]] = _2173 + (32 * _2197) + (64 * _2861) + -mem[64] + 224
                            mem[64] = _2173 + (32 * _2197) + (64 * _2861) + 256
                            mem[_2173 + (32 * _2197) + (64 * _2861) + 256] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_2173 + (32 * _2197) + (64 * _2861) + 260] = 0
                            mem[_2173 + (32 * _2197) + (64 * _2861) + 292] = _2151
                            mem[_2173 + (32 * _2197) + (64 * _2861) + 324] = this.address
                            mem[_2173 + (32 * _2197) + (64 * _2861) + 356] = 128
                            _3511 = mem[_3485]
                            mem[_2173 + (32 * _2197) + (64 * _2861) + 388] = mem[_3485]
                            mem[_2173 + (32 * _2197) + (64 * _2861) + 420 len ceil32(_3511)] = mem[_3485 + 32 len ceil32(_3511)]
                            if ceil32(_3511) > _3511:
                                mem[_2173 + (32 * _2197) + (64 * _2861) + _3511 + 420] = 0
                            require ext_code.size(address(_1948))
                            call address(_1948).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _2151, address(this.address), 128, mem[_2173 + (32 * _2197) + (64 * _2861) + 388 len ceil32(_3511) + 32]
                        else:
                            _2107 = mem[96]
                            if mem[96]:
                                _2172 = mem[64]
                                mem[mem[64] + 32] = 32
                                mem[mem[64] + 64] = mem[96]
                                mem[mem[64] + 96] = mem[128]
                                _2192 = mem[160]
                                mem[mem[64] + 128] = 128
                                _2193 = mem[mem[160]]
                                mem[mem[64] + 192] = mem[mem[160]]
                                s = mem[64] + 224
                                idx = 0
                                t = _2192 + 32
                                while idx < _2193:
                                    mem[s] = mem[t + 12 len 20]
                                    s = s + 32
                                    idx = idx + 1
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 160] = (32 * _2193) + 160
                                _2860 = mem[mem[192]]
                                mem[mem[64] + (32 * _2193) + 224] = mem[mem[192]]
                                idx = 0
                                s = mem[192] + 32
                                t = mem[64] + (32 * _2193) + 256
                                while idx < _2860:
                                    _3432 = mem[s]
                                    mem[t] = mem[mem[s] + 12 len 20]
                                    mem[t + 32] = mem[_3432 + 32]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 64
                                    continue 
                                _3484 = mem[64]
                                mem[mem[64]] = _2172 + (32 * _2193) + (64 * _2860) + -mem[64] + 224
                                mem[64] = _2172 + (32 * _2193) + (64 * _2860) + 256
                                mem[_2172 + (32 * _2193) + (64 * _2860) + 256] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_2172 + (32 * _2193) + (64 * _2860) + 260] = _2107
                                mem[_2172 + (32 * _2193) + (64 * _2860) + 292] = 0
                                mem[_2172 + (32 * _2193) + (64 * _2860) + 324] = this.address
                                mem[_2172 + (32 * _2193) + (64 * _2860) + 356] = 128
                                _3510 = mem[_3484]
                                mem[_2172 + (32 * _2193) + (64 * _2860) + 388] = mem[_3484]
                                mem[_2172 + (32 * _2193) + (64 * _2860) + 420 len ceil32(_3510)] = mem[_3484 + 32 len ceil32(_3510)]
                                if ceil32(_3510) > _3510:
                                    mem[_2172 + (32 * _2193) + (64 * _2860) + _3510 + 420] = 0
                                require ext_code.size(address(_1948))
                                call address(_1948).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _2107, 0, address(this.address), 128, mem[_2172 + (32 * _2193) + (64 * _2860) + 388 len ceil32(_3510) + 32]
                            else:
                                _2150 = mem[96]
                                _2171 = mem[64]
                                mem[mem[64] + 32] = 32
                                mem[mem[64] + 64] = mem[96]
                                mem[mem[64] + 96] = mem[128]
                                _2188 = mem[160]
                                mem[mem[64] + 128] = 128
                                _2189 = mem[mem[160]]
                                mem[mem[64] + 192] = mem[mem[160]]
                                s = mem[64] + 224
                                idx = 0
                                t = _2188 + 32
                                while idx < _2189:
                                    mem[s] = mem[t + 12 len 20]
                                    s = s + 32
                                    idx = idx + 1
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 160] = (32 * _2189) + 160
                                _2859 = mem[mem[192]]
                                mem[mem[64] + (32 * _2189) + 224] = mem[mem[192]]
                                idx = 0
                                s = mem[192] + 32
                                t = mem[64] + (32 * _2189) + 256
                                while idx < _2859:
                                    _3429 = mem[s]
                                    mem[t] = mem[mem[s] + 12 len 20]
                                    mem[t + 32] = mem[_3429 + 32]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 64
                                    continue 
                                _3483 = mem[64]
                                mem[mem[64]] = _2171 + (32 * _2189) + (64 * _2859) + -mem[64] + 224
                                mem[64] = _2171 + (32 * _2189) + (64 * _2859) + 256
                                mem[_2171 + (32 * _2189) + (64 * _2859) + 256] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_2171 + (32 * _2189) + (64 * _2859) + 260] = _2107
                                mem[_2171 + (32 * _2189) + (64 * _2859) + 292] = _2150
                                mem[_2171 + (32 * _2189) + (64 * _2859) + 324] = this.address
                                mem[_2171 + (32 * _2189) + (64 * _2859) + 356] = 128
                                _3509 = mem[_3483]
                                mem[_2171 + (32 * _2189) + (64 * _2859) + 388] = mem[_3483]
                                mem[_2171 + (32 * _2189) + (64 * _2859) + 420 len ceil32(_3509)] = mem[_3483 + 32 len ceil32(_3509)]
                                if ceil32(_3509) > _3509:
                                    mem[_2171 + (32 * _2189) + (64 * _2859) + _3509 + 420] = 0
                                require ext_code.size(address(_1948))
                                call address(_1948).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _2107, _2150, address(this.address), 128, mem[_2171 + (32 * _2189) + (64 * _2859) + 388 len ceil32(_3509) + 32]
                    else:
                        if 0 >= mem[floor32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 225]:
                            revert with 'NH{q', 50
                        if 105 == mem[mem[floor32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 257] + 32]:
                            if mem[128] >= mem[floor32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 225]:
                                revert with 'NH{q', 50
                            _1963 = mem[mem[(32 * mem[128]) + floor32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 257]]
                            if 1 > !mem[128]:
                                revert with 'NH{q', 17
                            if mem[128] + 1 >= mem[mem[160]]:
                                revert with 'NH{q', 50
                            _1995 = mem[(32 * mem[128] + 1) + mem[160] + 32]
                            staticcall mem[mem[(32 * mem[128]) + floor32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 257] + 12 len 20].token0() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2008 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2008] == mem[_2008 + 12 len 20]
                            if mem[_2008 + 12 len 20] != address(_1995):
                                _2199 = mem[96]
                                _2223 = mem[64]
                                mem[mem[64] + 32] = 32
                                mem[mem[64] + 64] = mem[96]
                                mem[mem[64] + 96] = mem[128]
                                _2243 = mem[160]
                                mem[mem[64] + 128] = 128
                                _2244 = mem[mem[160]]
                                mem[mem[64] + 192] = mem[mem[160]]
                                s = mem[64] + 224
                                idx = 0
                                t = _2243 + 32
                                while idx < _2244:
                                    mem[s] = mem[t + 12 len 20]
                                    s = s + 32
                                    idx = idx + 1
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 160] = (32 * _2244) + 160
                                _2864 = mem[mem[192]]
                                mem[mem[64] + (32 * _2244) + 224] = mem[mem[192]]
                                idx = 0
                                s = mem[192] + 32
                                t = mem[64] + (32 * _2244) + 256
                                while idx < _2864:
                                    _3444 = mem[s]
                                    mem[t] = mem[mem[s] + 12 len 20]
                                    mem[t + 32] = mem[_3444 + 32]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 64
                                    continue 
                                _3488 = mem[64]
                                mem[mem[64]] = _2223 + (32 * _2244) + (64 * _2864) + -mem[64] + 224
                                mem[64] = _2223 + (32 * _2244) + (64 * _2864) + 256
                                mem[_2223 + (32 * _2244) + (64 * _2864) + 256] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_2223 + (32 * _2244) + (64 * _2864) + 260] = 0
                                mem[_2223 + (32 * _2244) + (64 * _2864) + 292] = _2199
                                mem[_2223 + (32 * _2244) + (64 * _2864) + 324] = this.address
                                mem[_2223 + (32 * _2244) + (64 * _2864) + 356] = 128
                                _3514 = mem[_3488]
                                mem[_2223 + (32 * _2244) + (64 * _2864) + 388] = mem[_3488]
                                mem[_2223 + (32 * _2244) + (64 * _2864) + 420 len ceil32(_3514)] = mem[_3488 + 32 len ceil32(_3514)]
                                if ceil32(_3514) > _3514:
                                    mem[_2223 + (32 * _2244) + (64 * _2864) + _3514 + 420] = 0
                                require ext_code.size(address(_1963))
                                call address(_1963).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _2199, address(this.address), 128, mem[_2223 + (32 * _2244) + (64 * _2864) + 388 len ceil32(_3514) + 32]
                            else:
                                _2152 = mem[96]
                                if mem[96]:
                                    _2222 = mem[64]
                                    mem[mem[64] + 32] = 32
                                    mem[mem[64] + 64] = mem[96]
                                    mem[mem[64] + 96] = mem[128]
                                    _2239 = mem[160]
                                    mem[mem[64] + 128] = 128
                                    _2240 = mem[mem[160]]
                                    mem[mem[64] + 192] = mem[mem[160]]
                                    s = mem[64] + 224
                                    idx = 0
                                    t = _2239 + 32
                                    while idx < _2240:
                                        mem[s] = mem[t + 12 len 20]
                                        s = s + 32
                                        idx = idx + 1
                                        t = t + 32
                                        continue 
                                    mem[mem[64] + 160] = (32 * _2240) + 160
                                    _2863 = mem[mem[192]]
                                    mem[mem[64] + (32 * _2240) + 224] = mem[mem[192]]
                                    idx = 0
                                    s = mem[192] + 32
                                    t = mem[64] + (32 * _2240) + 256
                                    while idx < _2863:
                                        _3441 = mem[s]
                                        mem[t] = mem[mem[s] + 12 len 20]
                                        mem[t + 32] = mem[_3441 + 32]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 64
                                        continue 
                                    _3487 = mem[64]
                                    mem[mem[64]] = _2222 + (32 * _2240) + (64 * _2863) + -mem[64] + 224
                                    mem[64] = _2222 + (32 * _2240) + (64 * _2863) + 256
                                    mem[_2222 + (32 * _2240) + (64 * _2863) + 256] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2222 + (32 * _2240) + (64 * _2863) + 260] = _2152
                                    mem[_2222 + (32 * _2240) + (64 * _2863) + 292] = 0
                                    mem[_2222 + (32 * _2240) + (64 * _2863) + 324] = this.address
                                    mem[_2222 + (32 * _2240) + (64 * _2863) + 356] = 128
                                    _3513 = mem[_3487]
                                    mem[_2222 + (32 * _2240) + (64 * _2863) + 388] = mem[_3487]
                                    mem[_2222 + (32 * _2240) + (64 * _2863) + 420 len ceil32(_3513)] = mem[_3487 + 32 len ceil32(_3513)]
                                    if ceil32(_3513) > _3513:
                                        mem[_2222 + (32 * _2240) + (64 * _2863) + _3513 + 420] = 0
                                    require ext_code.size(address(_1963))
                                    call address(_1963).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _2152, 0, address(this.address), 128, mem[_2222 + (32 * _2240) + (64 * _2863) + 388 len ceil32(_3513) + 32]
                                else:
                                    _2198 = mem[96]
                                    _2221 = mem[64]
                                    mem[mem[64] + 32] = 32
                                    mem[mem[64] + 64] = mem[96]
                                    mem[mem[64] + 96] = mem[128]
                                    _2235 = mem[160]
                                    mem[mem[64] + 128] = 128
                                    _2236 = mem[mem[160]]
                                    mem[mem[64] + 192] = mem[mem[160]]
                                    s = mem[64] + 224
                                    idx = 0
                                    t = _2235 + 32
                                    while idx < _2236:
                                        mem[s] = mem[t + 12 len 20]
                                        s = s + 32
                                        idx = idx + 1
                                        t = t + 32
                                        continue 
                                    mem[mem[64] + 160] = (32 * _2236) + 160
                                    _2862 = mem[mem[192]]
                                    mem[mem[64] + (32 * _2236) + 224] = mem[mem[192]]
                                    idx = 0
                                    s = mem[192] + 32
                                    t = mem[64] + (32 * _2236) + 256
                                    while idx < _2862:
                                        _3438 = mem[s]
                                        mem[t] = mem[mem[s] + 12 len 20]
                                        mem[t + 32] = mem[_3438 + 32]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 64
                                        continue 
                                    _3486 = mem[64]
                                    mem[mem[64]] = _2221 + (32 * _2236) + (64 * _2862) + -mem[64] + 224
                                    mem[64] = _2221 + (32 * _2236) + (64 * _2862) + 256
                                    mem[_2221 + (32 * _2236) + (64 * _2862) + 256] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2221 + (32 * _2236) + (64 * _2862) + 260] = _2152
                                    mem[_2221 + (32 * _2236) + (64 * _2862) + 292] = _2198
                                    mem[_2221 + (32 * _2236) + (64 * _2862) + 324] = this.address
                                    mem[_2221 + (32 * _2236) + (64 * _2862) + 356] = 128
                                    _3512 = mem[_3486]
                                    mem[_2221 + (32 * _2236) + (64 * _2862) + 388] = mem[_3486]
                                    mem[_2221 + (32 * _2236) + (64 * _2862) + 420 len ceil32(_3512)] = mem[_3486 + 32 len ceil32(_3512)]
                                    if ceil32(_3512) > _3512:
                                        mem[_2221 + (32 * _2236) + (64 * _2862) + _3512 + 420] = 0
                                    require ext_code.size(address(_1963))
                                    call address(_1963).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _2152, _2198, address(this.address), 128, mem[_2221 + (32 * _2236) + (64 * _2862) + 388 len ceil32(_3512) + 32]
                        else:
                            if 0 >= mem[floor32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 225]:
                                revert with 'NH{q', 50
                            if 106 == mem[mem[floor32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 257] + 32]:
                                if mem[128] >= mem[floor32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 225]:
                                    revert with 'NH{q', 50
                                _1979 = mem[mem[(32 * mem[128]) + floor32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 257]]
                                if 1 > !mem[128]:
                                    revert with 'NH{q', 17
                                if mem[128] + 1 >= mem[mem[160]]:
                                    revert with 'NH{q', 50
                                _2030 = mem[(32 * mem[128] + 1) + mem[160] + 32]
                                staticcall mem[mem[(32 * mem[128]) + floor32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 257] + 12 len 20].token0() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2043 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2043] == mem[_2043 + 12 len 20]
                                if mem[_2043 + 12 len 20] != address(_2030):
                                    _2246 = mem[96]
                                    _2275 = mem[64]
                                    mem[mem[64] + 32] = 32
                                    mem[mem[64] + 64] = mem[96]
                                    mem[mem[64] + 96] = mem[128]
                                    _2292 = mem[160]
                                    mem[mem[64] + 128] = 128
                                    _2293 = mem[mem[160]]
                                    mem[mem[64] + 192] = mem[mem[160]]
                                    s = mem[64] + 224
                                    idx = 0
                                    t = _2292 + 32
                                    while idx < _2293:
                                        mem[s] = mem[t + 12 len 20]
                                        s = s + 32
                                        idx = idx + 1
                                        t = t + 32
                                        continue 
                                    mem[mem[64] + 160] = (32 * _2293) + 160
                                    _2867 = mem[mem[192]]
                                    mem[mem[64] + (32 * _2293) + 224] = mem[mem[192]]
                                    idx = 0
                                    s = mem[192] + 32
                                    t = mem[64] + (32 * _2293) + 256
                                    while idx < _2867:
                                        _3453 = mem[s]
                                        mem[t] = mem[mem[s] + 12 len 20]
                                        mem[t + 32] = mem[_3453 + 32]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 64
                                        continue 
                                    _3491 = mem[64]
                                    mem[mem[64]] = _2275 + (32 * _2293) + (64 * _2867) + -mem[64] + 224
                                    mem[64] = _2275 + (32 * _2293) + (64 * _2867) + 256
                                    mem[_2275 + (32 * _2293) + (64 * _2867) + 256] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_2275 + (32 * _2293) + (64 * _2867) + 260] = 0
                                    mem[_2275 + (32 * _2293) + (64 * _2867) + 292] = _2246
                                    mem[_2275 + (32 * _2293) + (64 * _2867) + 324] = this.address
                                    mem[_2275 + (32 * _2293) + (64 * _2867) + 356] = 128
                                    _3517 = mem[_3491]
                                    mem[_2275 + (32 * _2293) + (64 * _2867) + 388] = mem[_3491]
                                    mem[_2275 + (32 * _2293) + (64 * _2867) + 420 len ceil32(_3517)] = mem[_3491 + 32 len ceil32(_3517)]
                                    if ceil32(_3517) > _3517:
                                        mem[_2275 + (32 * _2293) + (64 * _2867) + _3517 + 420] = 0
                                    require ext_code.size(address(_1979))
                                    call address(_1979).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, _2246, address(this.address), 128, mem[_2275 + (32 * _2293) + (64 * _2867) + 388 len ceil32(_3517) + 32]
                                else:
                                    _2200 = mem[96]
                                    if mem[96]:
                                        _2274 = mem[64]
                                        mem[mem[64] + 32] = 32
                                        mem[mem[64] + 64] = mem[96]
                                        mem[mem[64] + 96] = mem[128]
                                        _2288 = mem[160]
                                        mem[mem[64] + 128] = 128
                                        _2289 = mem[mem[160]]
                                        mem[mem[64] + 192] = mem[mem[160]]
                                        s = mem[64] + 224
                                        idx = 0
                                        t = _2288 + 32
                                        while idx < _2289:
                                            mem[s] = mem[t + 12 len 20]
                                            s = s + 32
                                            idx = idx + 1
                                            t = t + 32
                                            continue 
                                        mem[mem[64] + 160] = (32 * _2289) + 160
                                        _2866 = mem[mem[192]]
                                        mem[mem[64] + (32 * _2289) + 224] = mem[mem[192]]
                                        idx = 0
                                        s = mem[192] + 32
                                        t = mem[64] + (32 * _2289) + 256
                                        while idx < _2866:
                                            _3450 = mem[s]
                                            mem[t] = mem[mem[s] + 12 len 20]
                                            mem[t + 32] = mem[_3450 + 32]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 64
                                            continue 
                                        _3490 = mem[64]
                                        mem[mem[64]] = _2274 + (32 * _2289) + (64 * _2866) + -mem[64] + 224
                                        mem[64] = _2274 + (32 * _2289) + (64 * _2866) + 256
                                        mem[_2274 + (32 * _2289) + (64 * _2866) + 256] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_2274 + (32 * _2289) + (64 * _2866) + 260] = _2200
                                        mem[_2274 + (32 * _2289) + (64 * _2866) + 292] = 0
                                        mem[_2274 + (32 * _2289) + (64 * _2866) + 324] = this.address
                                        mem[_2274 + (32 * _2289) + (64 * _2866) + 356] = 128
                                        _3516 = mem[_3490]
                                        mem[_2274 + (32 * _2289) + (64 * _2866) + 388] = mem[_3490]
                                        mem[_2274 + (32 * _2289) + (64 * _2866) + 420 len ceil32(_3516)] = mem[_3490 + 32 len ceil32(_3516)]
                                        if ceil32(_3516) > _3516:
                                            mem[_2274 + (32 * _2289) + (64 * _2866) + _3516 + 420] = 0
                                        require ext_code.size(address(_1979))
                                        call address(_1979).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args _2200, 0, address(this.address), 128, mem[_2274 + (32 * _2289) + (64 * _2866) + 388 len ceil32(_3516) + 32]
                                    else:
                                        _2245 = mem[96]
                                        _2273 = mem[64]
                                        mem[mem[64] + 32] = 32
                                        mem[mem[64] + 64] = mem[96]
                                        mem[mem[64] + 96] = mem[128]
                                        _2284 = mem[160]
                                        mem[mem[64] + 128] = 128
                                        _2285 = mem[mem[160]]
                                        mem[mem[64] + 192] = mem[mem[160]]
                                        s = mem[64] + 224
                                        idx = 0
                                        t = _2284 + 32
                                        while idx < _2285:
                                            mem[s] = mem[t + 12 len 20]
                                            s = s + 32
                                            idx = idx + 1
                                            t = t + 32
                                            continue 
                                        mem[mem[64] + 160] = (32 * _2285) + 160
                                        _2865 = mem[mem[192]]
                                        mem[mem[64] + (32 * _2285) + 224] = mem[mem[192]]
                                        idx = 0
                                        s = mem[192] + 32
                                        t = mem[64] + (32 * _2285) + 256
                                        while idx < _2865:
                                            _3447 = mem[s]
                                            mem[t] = mem[mem[s] + 12 len 20]
                                            mem[t + 32] = mem[_3447 + 32]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 64
                                            continue 
                                        _3489 = mem[64]
                                        mem[mem[64]] = _2273 + (32 * _2285) + (64 * _2865) + -mem[64] + 224
                                        mem[64] = _2273 + (32 * _2285) + (64 * _2865) + 256
                                        mem[_2273 + (32 * _2285) + (64 * _2865) + 256] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_2273 + (32 * _2285) + (64 * _2865) + 260] = _2200
                                        mem[_2273 + (32 * _2285) + (64 * _2865) + 292] = _2245
                                        mem[_2273 + (32 * _2285) + (64 * _2865) + 324] = this.address
                                        mem[_2273 + (32 * _2285) + (64 * _2865) + 356] = 128
                                        _3515 = mem[_3489]
                                        mem[_2273 + (32 * _2285) + (64 * _2865) + 388] = mem[_3489]
                                        mem[_2273 + (32 * _2285) + (64 * _2865) + 420 len ceil32(_3515)] = mem[_3489 + 32 len ceil32(_3515)]
                                        if ceil32(_3515) > _3515:
                                            mem[_2273 + (32 * _2285) + (64 * _2865) + _3515 + 420] = 0
                                        require ext_code.size(address(_1979))
                                        call address(_1979).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args _2200, _2245, address(this.address), 128, mem[_2273 + (32 * _2285) + (64 * _2865) + 388 len ceil32(_3515) + 32]
                            else:
                                if 0 >= mem[floor32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 225]:
                                    revert with 'NH{q', 50
                                if mem[mem[floor32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 257] + 32] != 107:
                                    if 0 >= mem[floor32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 225]:
                                        revert with 'NH{q', 50
                                    if not -mem[mem[floor32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 257] + 32] + 7:
                                        if mem[128] >= mem[floor32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 225]:
                                            revert with 'NH{q', 50
                                        _2036 = mem[mem[(32 * mem[128]) + floor32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 257]]
                                        if 1 > !mem[128]:
                                            revert with 'NH{q', 17
                                        if mem[128] + 1 >= mem[mem[160]]:
                                            revert with 'NH{q', 50
                                        _2108 = mem[(32 * mem[128] + 1) + mem[160] + 32]
                                        _2109 = mem[96]
                                        _2110 = mem[64]
                                        mem[mem[64] + 32] = 32
                                        mem[mem[64] + 64] = mem[96]
                                        mem[mem[64] + 96] = mem[128]
                                        _2129 = mem[160]
                                        mem[mem[64] + 128] = 128
                                        _2130 = mem[mem[160]]
                                        mem[mem[64] + 192] = mem[mem[160]]
                                        s = mem[64] + 224
                                        idx = 0
                                        t = _2129 + 32
                                        while idx < _2130:
                                            mem[s] = mem[t + 12 len 20]
                                            s = s + 32
                                            idx = idx + 1
                                            t = t + 32
                                            continue 
                                        mem[mem[64] + 160] = (32 * _2130) + 160
                                        _2869 = mem[mem[192]]
                                        mem[mem[64] + (32 * _2130) + 224] = mem[mem[192]]
                                        idx = 0
                                        s = mem[192] + 32
                                        t = mem[64] + (32 * _2130) + 256
                                        while idx < _2869:
                                            _3459 = mem[s]
                                            mem[t] = mem[mem[s] + 12 len 20]
                                            mem[t + 32] = mem[_3459 + 32]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 64
                                            continue 
                                        _3493 = mem[64]
                                        mem[mem[64]] = _2110 + (32 * _2130) + (64 * _2869) + -mem[64] + 224
                                        mem[64] = _2110 + (32 * _2130) + (64 * _2869) + 256
                                        mem[_2110 + (32 * _2130) + (64 * _2869) + 256] = 0x5cffe9de00000000000000000000000000000000000000000000000000000000
                                        mem[_2110 + (32 * _2130) + (64 * _2869) + 260] = this.address
                                        mem[_2110 + (32 * _2130) + (64 * _2869) + 292] = address(_2108)
                                        mem[_2110 + (32 * _2130) + (64 * _2869) + 324] = _2109
                                        mem[_2110 + (32 * _2130) + (64 * _2869) + 356] = 128
                                        _3519 = mem[_3493]
                                        mem[_2110 + (32 * _2130) + (64 * _2869) + 388] = mem[_3493]
                                        mem[_2110 + (32 * _2130) + (64 * _2869) + 420 len ceil32(_3519)] = mem[_3493 + 32 len ceil32(_3519)]
                                        var87001 = ceil32(_3519)
                                        if ceil32(_3519) > _3519:
                                            mem[_2110 + (32 * _2130) + (64 * _2869) + _3519 + 420] = 0
                                        require ext_code.size(address(_2036))
                                        call address(_2036).flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args address(this.address), address(_2108), _2109, 128, mem[_2110 + (32 * _2130) + (64 * _2869) + 388 len ceil32(_3519) + 32]
                                    else:
                                        if 0 >= mem[floor32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 225]:
                                            revert with 'NH{q', 50
                                        if -mem[mem[floor32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 257] + 32] + 10:
                                            mem[mem[64] + 4] = owner
                                            staticcall address(_1868).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args owner
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2044 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            if mem[_2044] < _1872:
                                                revert with 'NH{q', 17
                                            mem[mem[64]] = mem[_2044] - _1872
                                            return memory
                                              from mem[64]
                                               len 32
                                        if mem[128] >= mem[floor32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 225]:
                                            revert with 'NH{q', 50
                                        _2071 = mem[mem[(32 * mem[128]) + floor32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 257]]
                                        if 1 > !mem[128]:
                                            revert with 'NH{q', 17
                                        if mem[128] + 1 >= mem[mem[160]]:
                                            revert with 'NH{q', 50
                                        _2153 = mem[(32 * mem[128] + 1) + mem[160] + 32]
                                        _2154 = mem[96]
                                        _2155 = mem[64]
                                        mem[mem[64] + 32] = 32
                                        mem[mem[64] + 64] = mem[96]
                                        mem[mem[64] + 96] = mem[128]
                                        _2176 = mem[160]
                                        mem[mem[64] + 128] = 128
                                        _2177 = mem[mem[160]]
                                        mem[mem[64] + 192] = mem[mem[160]]
                                        s = mem[64] + 224
                                        idx = 0
                                        t = _2176 + 32
                                        while idx < _2177:
                                            mem[s] = mem[t + 12 len 20]
                                            s = s + 32
                                            idx = idx + 1
                                            t = t + 32
                                            continue 
                                        mem[mem[64] + 160] = (32 * _2177) + 160
                                        _2868 = mem[mem[192]]
                                        mem[mem[64] + (32 * _2177) + 224] = mem[mem[192]]
                                        idx = 0
                                        s = mem[192] + 32
                                        t = mem[64] + (32 * _2177) + 256
                                        while idx < _2868:
                                            _3456 = mem[s]
                                            mem[t] = mem[mem[s] + 12 len 20]
                                            mem[t + 32] = mem[_3456 + 32]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 64
                                            continue 
                                        _3492 = mem[64]
                                        mem[mem[64]] = _2155 + (32 * _2177) + (64 * _2868) + -mem[64] + 224
                                        mem[64] = _2155 + (32 * _2177) + (64 * _2868) + 256
                                        mem[_2155 + (32 * _2177) + (64 * _2868) + 256] = 0xf1676d3700000000000000000000000000000000000000000000000000000000
                                        mem[_2155 + (32 * _2177) + (64 * _2868) + 260] = this.address
                                        mem[_2155 + (32 * _2177) + (64 * _2868) + 292] = this.address
                                        mem[_2155 + (32 * _2177) + (64 * _2868) + 324] = address(_2153)
                                        mem[_2155 + (32 * _2177) + (64 * _2868) + 356] = _2154
                                        mem[_2155 + (32 * _2177) + (64 * _2868) + 388] = 160
                                        _3518 = mem[_3492]
                                        mem[_2155 + (32 * _2177) + (64 * _2868) + 420] = mem[_3492]
                                        mem[_2155 + (32 * _2177) + (64 * _2868) + 452 len ceil32(_3518)] = mem[_3492 + 32 len ceil32(_3518)]
                                        var89001 = ceil32(_3518)
                                        if ceil32(_3518) > _3518:
                                            mem[_2155 + (32 * _2177) + (64 * _2868) + _3518 + 452] = 0
                                        require ext_code.size(address(_2071))
                                        call address(_2071).flashLoan(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5) with:
                                             gas gas_remaining wei
                                            args address(this.address), address(this.address), address(_2153), _2154, 160, mem[_2155 + (32 * _2177) + (64 * _2868) + 420 len ceil32(_3518) + 32]
                                else:
                                    if mem[128] >= mem[floor32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 225]:
                                        revert with 'NH{q', 50
                                    _2001 = mem[mem[(32 * mem[128]) + floor32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 257]]
                                    if 1 > !mem[128]:
                                        revert with 'NH{q', 17
                                    if mem[128] + 1 >= mem[mem[160]]:
                                        revert with 'NH{q', 50
                                    _2074 = mem[(32 * mem[128] + 1) + mem[160] + 32]
                                    staticcall mem[mem[(32 * mem[128]) + floor32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 257] + 12 len 20].token0() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2086 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2086] == mem[_2086 + 12 len 20]
                                    if mem[_2086 + 12 len 20] != address(_2074):
                                        _2299 = mem[96]
                                        _2323 = mem[64]
                                        mem[mem[64] + 32] = 32
                                        mem[mem[64] + 64] = mem[96]
                                        mem[mem[64] + 96] = mem[128]
                                        _2345 = mem[160]
                                        mem[mem[64] + 128] = 128
                                        _2346 = mem[mem[160]]
                                        mem[mem[64] + 192] = mem[mem[160]]
                                        s = mem[64] + 224
                                        idx = 0
                                        t = _2345 + 32
                                        while idx < _2346:
                                            mem[s] = mem[t + 12 len 20]
                                            s = s + 32
                                            idx = idx + 1
                                            t = t + 32
                                            continue 
                                        mem[mem[64] + 160] = (32 * _2346) + 160
                                        _2872 = mem[mem[192]]
                                        mem[mem[64] + (32 * _2346) + 224] = mem[mem[192]]
                                        idx = 0
                                        s = mem[192] + 32
                                        t = mem[64] + (32 * _2346) + 256
                                        while idx < _2872:
                                            _3468 = mem[s]
                                            mem[t] = mem[mem[s] + 12 len 20]
                                            mem[t + 32] = mem[_3468 + 32]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 64
                                            continue 
                                        _3496 = mem[64]
                                        mem[mem[64]] = _2323 + (32 * _2346) + (64 * _2872) + -mem[64] + 224
                                        mem[64] = _2323 + (32 * _2346) + (64 * _2872) + 256
                                        mem[_2323 + (32 * _2346) + (64 * _2872) + 256] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_2323 + (32 * _2346) + (64 * _2872) + 260] = 0
                                        mem[_2323 + (32 * _2346) + (64 * _2872) + 292] = _2299
                                        mem[_2323 + (32 * _2346) + (64 * _2872) + 324] = this.address
                                        mem[_2323 + (32 * _2346) + (64 * _2872) + 356] = 128
                                        _3522 = mem[_3496]
                                        mem[_2323 + (32 * _2346) + (64 * _2872) + 388] = mem[_3496]
                                        mem[_2323 + (32 * _2346) + (64 * _2872) + 420 len ceil32(_3522)] = mem[_3496 + 32 len ceil32(_3522)]
                                        if ceil32(_3522) > _3522:
                                            mem[_2323 + (32 * _2346) + (64 * _2872) + _3522 + 420] = 0
                                        require ext_code.size(address(_2001))
                                        call address(_2001).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _2299, address(this.address), 128, mem[_2323 + (32 * _2346) + (64 * _2872) + 388 len ceil32(_3522) + 32]
                                    else:
                                        _2251 = mem[96]
                                        if mem[96]:
                                            _2322 = mem[64]
                                            mem[mem[64] + 32] = 32
                                            mem[mem[64] + 64] = mem[96]
                                            mem[mem[64] + 96] = mem[128]
                                            _2341 = mem[160]
                                            mem[mem[64] + 128] = 128
                                            _2342 = mem[mem[160]]
                                            mem[mem[64] + 192] = mem[mem[160]]
                                            s = mem[64] + 224
                                            idx = 0
                                            t = _2341 + 32
                                            while idx < _2342:
                                                mem[s] = mem[t + 12 len 20]
                                                s = s + 32
                                                idx = idx + 1
                                                t = t + 32
                                                continue 
                                            mem[mem[64] + 160] = (32 * _2342) + 160
                                            _2871 = mem[mem[192]]
                                            mem[mem[64] + (32 * _2342) + 224] = mem[mem[192]]
                                            idx = 0
                                            s = mem[192] + 32
                                            t = mem[64] + (32 * _2342) + 256
                                            while idx < _2871:
                                                _3465 = mem[s]
                                                mem[t] = mem[mem[s] + 12 len 20]
                                                mem[t + 32] = mem[_3465 + 32]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 64
                                                continue 
                                            _3495 = mem[64]
                                            mem[mem[64]] = _2322 + (32 * _2342) + (64 * _2871) + -mem[64] + 224
                                            mem[64] = _2322 + (32 * _2342) + (64 * _2871) + 256
                                            mem[_2322 + (32 * _2342) + (64 * _2871) + 256] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                            mem[_2322 + (32 * _2342) + (64 * _2871) + 260] = _2251
                                            mem[_2322 + (32 * _2342) + (64 * _2871) + 292] = 0
                                            mem[_2322 + (32 * _2342) + (64 * _2871) + 324] = this.address
                                            mem[_2322 + (32 * _2342) + (64 * _2871) + 356] = 128
                                            _3521 = mem[_3495]
                                            mem[_2322 + (32 * _2342) + (64 * _2871) + 388] = mem[_3495]
                                            mem[_2322 + (32 * _2342) + (64 * _2871) + 420 len ceil32(_3521)] = mem[_3495 + 32 len ceil32(_3521)]
                                            if ceil32(_3521) > _3521:
                                                mem[_2322 + (32 * _2342) + (64 * _2871) + _3521 + 420] = 0
                                            require ext_code.size(address(_2001))
                                            call address(_2001).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args _2251, 0, address(this.address), 128, mem[_2322 + (32 * _2342) + (64 * _2871) + 388 len ceil32(_3521) + 32]
                                        else:
                                            _2298 = mem[96]
                                            _2321 = mem[64]
                                            mem[mem[64] + 32] = 32
                                            mem[mem[64] + 64] = mem[96]
                                            mem[mem[64] + 96] = mem[128]
                                            _2337 = mem[160]
                                            mem[mem[64] + 128] = 128
                                            _2338 = mem[mem[160]]
                                            mem[mem[64] + 192] = mem[mem[160]]
                                            s = mem[64] + 224
                                            idx = 0
                                            t = _2337 + 32
                                            while idx < _2338:
                                                mem[s] = mem[t + 12 len 20]
                                                s = s + 32
                                                idx = idx + 1
                                                t = t + 32
                                                continue 
                                            mem[mem[64] + 160] = (32 * _2338) + 160
                                            _2870 = mem[mem[192]]
                                            mem[mem[64] + (32 * _2338) + 224] = mem[mem[192]]
                                            idx = 0
                                            s = mem[192] + 32
                                            t = mem[64] + (32 * _2338) + 256
                                            while idx < _2870:
                                                _3462 = mem[s]
                                                mem[t] = mem[mem[s] + 12 len 20]
                                                mem[t + 32] = mem[_3462 + 32]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 64
                                                continue 
                                            _3494 = mem[64]
                                            mem[mem[64]] = _2321 + (32 * _2338) + (64 * _2870) + -mem[64] + 224
                                            mem[64] = _2321 + (32 * _2338) + (64 * _2870) + 256
                                            mem[_2321 + (32 * _2338) + (64 * _2870) + 256] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                            mem[_2321 + (32 * _2338) + (64 * _2870) + 260] = _2251
                                            mem[_2321 + (32 * _2338) + (64 * _2870) + 292] = _2298
                                            mem[_2321 + (32 * _2338) + (64 * _2870) + 324] = this.address
                                            mem[_2321 + (32 * _2338) + (64 * _2870) + 356] = 128
                                            _3520 = mem[_3494]
                                            mem[_2321 + (32 * _2338) + (64 * _2870) + 388] = mem[_3494]
                                            mem[_2321 + (32 * _2338) + (64 * _2870) + 420 len ceil32(_3520)] = mem[_3494 + 32 len ceil32(_3520)]
                                            if ceil32(_3520) > _3520:
                                                mem[_2321 + (32 * _2338) + (64 * _2870) + _3520 + 420] = 0
                                            require ext_code.size(address(_2001))
                                            call address(_2001).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                                 gas gas_remaining wei
                                                args _2251, _2298, address(this.address), 128, mem[_2321 + (32 * _2338) + (64 * _2870) + 388 len ceil32(_3520) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    staticcall address(_1868).0x70a08231 with:
            gas gas_remaining wei
           args owner
    require return_data.size >= 32
    if ext_call.return_data[0] < _1872:
        revert with 'NH{q', 17
    return (ext_call.return_data[0] - _1872)
}



}
