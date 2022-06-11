contract main {




// =====================  Runtime code  =====================


#
#  - liquidate(address arg1, address arg2, uint256 arg3)
#  - impermaxRedeem(address arg1, uint256 arg2, bytes arg3)
#
function _fallback() payable {
    revert
}

function accrueInterest(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.borrowable0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).accrueInterest() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg1)
    staticcall arg1.borrowable1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).accrueInterest() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_1b251141(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require ext_code.size(address(arg1))
    staticcall address(arg1).borrowable0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).accrueInterest() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(arg1))
    staticcall address(arg1).borrowable1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).accrueInterest() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(arg1))
    call address(arg1).accountLiquidity(address arg1) with:
         gas gas_remaining wei
        args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    return (ext_call.return_data[32] > 0)
}

function sub_90060a33(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require ext_code.size(address(arg2))
    staticcall address(arg2).borrowable0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).accrueInterest() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(arg2))
    staticcall address(arg2).borrowable1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).accrueInterest() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(arg2))
    call address(arg2).accountLiquidity(address arg1) with:
         gas gas_remaining wei
        args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    return (ext_call.return_data[32] > 0)
}

function getAmountOut(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require ext_code.size(arg1)
    staticcall arg1.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(arg1)
    staticcall arg1.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(arg1)
    staticcall arg1.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if arg3 and 997 > -1 / arg3:
        revert with 'NH{q', 17
    if ext_call.return_data[12 len 20] == arg2:
        if Mask(112, 0, ext_call.return_data[0]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[0]):
            revert with 'NH{q', 17
        if 1000 * Mask(112, 0, ext_call.return_data[0]) > (-997 * arg3) - 1:
            revert with 'NH{q', 17
        if arg3 and 997 > -1 / arg3:
            revert with 'NH{q', 17
        if ext_call.return_data[12 len 20] == arg2:
            if 997 * arg3 and Mask(112, 0, ext_call.return_data[32]) > -1 / 997 * arg3:
                revert with 'NH{q', 17
            if not (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg3):
                revert with 'NH{q', 18
            return (997 * arg3 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg3))
        if 997 * arg3 and Mask(112, 0, ext_call.return_data[0]) > -1 / 997 * arg3:
            revert with 'NH{q', 17
        if not (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg3):
            revert with 'NH{q', 18
        return (997 * arg3 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg3))
    if Mask(112, 0, ext_call.return_data[32]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[32]):
        revert with 'NH{q', 17
    if 1000 * Mask(112, 0, ext_call.return_data[32]) > (-997 * arg3) - 1:
        revert with 'NH{q', 17
    if arg3 and 997 > -1 / arg3:
        revert with 'NH{q', 17
    if ext_call.return_data[12 len 20] == arg2:
        if 997 * arg3 and Mask(112, 0, ext_call.return_data[32]) > -1 / 997 * arg3:
            revert with 'NH{q', 17
        if not (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg3):
            revert with 'NH{q', 18
        return (997 * arg3 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg3))
    if 997 * arg3 and Mask(112, 0, ext_call.return_data[0]) > -1 / 997 * arg3:
        revert with 'NH{q', 17
    if not (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg3):
        revert with 'NH{q', 18
    return (997 * arg3 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg3))
}

function sub_f1b4167e(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = cd[4] + 36
    s = 128
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98 > test266151307() or floor32(('cd', 36).length) + 98 < 97:
        revert with 'NH{q', 65
    mem[floor32(('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = cd[36] + 36
    s = floor32(('cd', 4).length) + 129
    while idx < cd[36] + (32 * ('cd', 36).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98] = ('cd', 4).length
    mem[64] = floor32(('cd', 4).length) + floor32(('cd', 36).length) + (32 * ('cd', 4).length) + 130
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _177 = mem[(32 * idx) + 128]
            if idx >= mem[floor32(('cd', 4).length) + 97]:
                revert with 'NH{q', 50
            _182 = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
            require ext_code.size(mem[(32 * idx) + floor32(('cd', 4).length) + 141 len 20])
            staticcall mem[(32 * idx) + floor32(('cd', 4).length) + 141 len 20].borrowable0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _190 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_190] == mem[_190 + 12 len 20]
            require ext_code.size(mem[_190 + 12 len 20])
            call mem[_190 + 12 len 20].accrueInterest() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(_182))
            staticcall address(_182).borrowable1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _206 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_206] == mem[_206 + 12 len 20]
            require ext_code.size(mem[_206 + 12 len 20])
            call mem[_206 + 12 len 20].accrueInterest() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(_182))
            call address(_182).accountLiquidity(address arg1) with:
                 gas gas_remaining wei
                args address(_177)
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _218 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            require mem[_218] == mem[_218]
            require mem[_218 + 32] == mem[_218 + 32]
            if idx >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
                revert with 'NH{q', 50
            mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130] = mem[_218 + 32] > 0
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _176 = mem[64]
        mem[mem[64]] = 32
        _184 = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]
        mem[mem[64] + 32] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]
        idx = 0
        s = floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130
        t = mem[64] + 64
        while idx < _184:
            mem[t] = bool(mem[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _176 + (32 * _184) + -mem[64] + 64
    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _180 = mem[(32 * idx) + 128]
        if idx >= mem[floor32(('cd', 4).length) + 97]:
            revert with 'NH{q', 50
        _183 = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
        require ext_code.size(mem[(32 * idx) + floor32(('cd', 4).length) + 141 len 20])
        staticcall mem[(32 * idx) + floor32(('cd', 4).length) + 141 len 20].borrowable0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _191 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_191] == mem[_191 + 12 len 20]
        require ext_code.size(mem[_191 + 12 len 20])
        call mem[_191 + 12 len 20].accrueInterest() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(_183))
        staticcall address(_183).borrowable1() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _207 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_207] == mem[_207 + 12 len 20]
        require ext_code.size(mem[_207 + 12 len 20])
        call mem[_207 + 12 len 20].accrueInterest() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(_183))
        call address(_183).accountLiquidity(address arg1) with:
             gas gas_remaining wei
            args address(_180)
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _219 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        require mem[_219] == mem[_219]
        require mem[_219 + 32] == mem[_219 + 32]
        if idx >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
            revert with 'NH{q', 50
        mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130] = mem[_219 + 32] > 0
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _179 = mem[64]
    mem[mem[64]] = 32
    _185 = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]
    mem[mem[64] + 32] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]
    idx = 0
    s = floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130
    t = mem[64] + 64
    while idx < _185:
        mem[t] = bool(mem[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _179 + (32 * _185) + -mem[64] + 64
}



}
