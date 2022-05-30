contract main {




// =====================  Runtime code  =====================


#
#  - sub_095627e9(?)
#  - executeOperation(address[] arg1, uint256[] arg2, uint256[] arg3, address arg4, bytes arg5)
#  - _fallback()
#
const treasuryAddr = 0xe06d0b1752e60687c0ea5abbe006d3368fdcdcc1

const instaList = 0x9926955e0dd681dc303370c52f4ad0a4dd061687

const aaveLending = 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c

const getRoutes = Array(len=1, data=mem[224])

const sub_8966fb80(?) = 5

const aaveLendingAddr = 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c


function sub_426bfa4d(?) {
    require calldata.size - 4 >= 32
    if arg1 != 1:
        revert with 0, 'Invalid source'
    require ext_code.size(0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c)
    staticcall 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c.FLASHLOAN_PREMIUM_TOTAL() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= 5:
        return ext_call.return_data[0]
    return 5
}

function sub_f495962c(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 0, 50
        _590 = mem[(32 * idx) + 128]
        if idx >= mem[96]:
            revert with 0, 50
        require ext_code.size(mem[(32 * idx) + 140 len 20])
        staticcall mem[(32 * idx) + 140 len 20].decimals() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _595 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_590))
        staticcall address(_590).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if 18 == mem[_595]:
            _599 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_599] > 10^10:
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(_590))
                staticcall address(_590).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _613 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _618 = mem[_613]
                if mem[_613] < 10^10:
                    revert with 0, 17
                if mem[_613] - 10^10:
                    _629 = mem[64]
                    mem[mem[64] + 36] = 0xe06d0b1752e60687c0ea5abbe006d3368fdcdcc1
                    mem[mem[64] + 68] = _618 - 10^10
                    _630 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_630 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_630 + 36 len 28]
                    mem[64] = _629 + 164
                    mem[_629 + 100] = 32
                    mem[_629 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(_590)):
                        revert with 0, 'Address: call to non-contract'
                    _649 = mem[_630]
                    s = 0
                    while s < _649:
                        mem[s + _629 + 164] = mem[s + _630 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_649) > _649:
                        mem[_649 + _629 + 164] = 0
                    call address(_590).mem[_629 + 164 len 4] with:
                         gas gas_remaining wei
                        args mem[_629 + 168 len _649 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_629 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_629 + 168] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _629 + 232] = mem[idx + _629 + 132]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_629 + 232]
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[64] = _629 + ceil32(return_data.size) + 165
                        mem[_629 + 164] = return_data.size
                        mem[_629 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_629 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_629 + ceil32(return_data.size) + 169] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _629 + ceil32(return_data.size) + 233] = mem[idx + _629 + 132]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_629 + ceil32(return_data.size) + 233]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_629 + 196] == bool(mem[_629 + 196])
                            if not mem[_629 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            if mem[_595] > 12:
                _603 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_603] > 10000:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_590))
                    staticcall address(_590).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _619 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _624 = mem[_619]
                    if mem[_619] < 10000:
                        revert with 0, 17
                    if mem[_619] - 10000:
                        _633 = mem[64]
                        mem[mem[64] + 36] = 0xe06d0b1752e60687c0ea5abbe006d3368fdcdcc1
                        mem[mem[64] + 68] = _624 - 10000
                        _634 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_634 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_634 + 36 len 28]
                        mem[64] = _633 + 164
                        mem[_633 + 100] = 32
                        mem[_633 + 132] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(address(_590)):
                            revert with 0, 'Address: call to non-contract'
                        _655 = mem[_634]
                        s = 0
                        while s < _655:
                            mem[s + _633 + 164] = mem[s + _634 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_655) > _655:
                            mem[_655 + _633 + 164] = 0
                        call address(_590).mem[_633 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_633 + 168 len _655 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_633 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_633 + 168] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _633 + 232] = mem[idx + _633 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_633 + 232]
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[64] = _633 + ceil32(return_data.size) + 165
                            mem[_633 + 164] = return_data.size
                            mem[_633 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_633 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_633 + ceil32(return_data.size) + 169] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _633 + ceil32(return_data.size) + 233] = mem[idx + _633 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_633 + ceil32(return_data.size) + 233]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_633 + 196] == bool(mem[_633 + 196])
                                if not mem[_633 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                if mem[_595] > 7:
                    _611 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_611] > 100:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(_590))
                        staticcall address(_590).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _625 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _627 = mem[_625]
                        if mem[_625] < 100:
                            revert with 0, 17
                        if mem[_625] - 100:
                            _637 = mem[64]
                            mem[mem[64] + 36] = 0xe06d0b1752e60687c0ea5abbe006d3368fdcdcc1
                            mem[mem[64] + 68] = _627 - 100
                            _640 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_640 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_640 + 36 len 28]
                            mem[64] = _637 + 164
                            mem[_637 + 100] = 32
                            mem[_637 + 132] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(address(_590)):
                                revert with 0, 'Address: call to non-contract'
                            _666 = mem[_640]
                            s = 0
                            while s < _666:
                                mem[s + _637 + 164] = mem[s + _640 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_666) > _666:
                                mem[_666 + _637 + 164] = 0
                            call address(_590).mem[_637 + 164 len 4] with:
                                 gas gas_remaining wei
                                args mem[_637 + 168 len _666 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_637 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_637 + 168] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _637 + 232] = mem[idx + _637 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_637 + 232]
                                if mem[96]:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[64] = _637 + ceil32(return_data.size) + 165
                                mem[_637 + 164] = return_data.size
                                mem[_637 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_637 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_637 + ceil32(return_data.size) + 169] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _637 + ceil32(return_data.size) + 233] = mem[idx + _637 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_637 + ceil32(return_data.size) + 233]
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_637 + 196] == bool(mem[_637 + 196])
                                    if not mem[_637 + 196]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    _612 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_612] > 10:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(_590))
                        staticcall address(_590).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _626 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _628 = mem[_626]
                        if mem[_626] < 10:
                            revert with 0, 17
                        if mem[_626] - 10:
                            _638 = mem[64]
                            mem[mem[64] + 36] = 0xe06d0b1752e60687c0ea5abbe006d3368fdcdcc1
                            mem[mem[64] + 68] = _628 - 10
                            _642 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_642 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_642 + 36 len 28]
                            mem[64] = _638 + 164
                            mem[_638 + 100] = 32
                            mem[_638 + 132] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(address(_590)):
                                revert with 0, 'Address: call to non-contract'
                            _668 = mem[_642]
                            s = 0
                            while s < _668:
                                mem[s + _638 + 164] = mem[s + _642 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_668) > _668:
                                mem[_668 + _638 + 164] = 0
                            call address(_590).mem[_638 + 164 len 4] with:
                                 gas gas_remaining wei
                                args mem[_638 + 168 len _668 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_638 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_638 + 168] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _638 + 232] = mem[idx + _638 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_638 + 232]
                                if mem[96]:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[64] = _638 + ceil32(return_data.size) + 165
                                mem[_638 + 164] = return_data.size
                                mem[_638 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_638 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_638 + ceil32(return_data.size) + 169] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _638 + ceil32(return_data.size) + 233] = mem[idx + _638 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_638 + ceil32(return_data.size) + 233]
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_638 + 196] == bool(mem[_638 + 196])
                                    if not mem[_638 + 196]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}



}
