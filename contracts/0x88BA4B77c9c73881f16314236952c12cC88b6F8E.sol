contract main {




// =====================  Runtime code  =====================


#
#  - elkCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - pancakeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - baguetteCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - yetiswapCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - lydiaCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - pangolinCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#
address stor0;

function sub_41dcbd24(?) payable {
    require stor0 == msg.sender
    selfdestruct(0xd697e41cb97bb437457e1e5b37d398074214a9e0)
}

function _fallback() payable {
    revert
}

function approveTokens(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + 97 > test266151307() or floor32(arg1.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = floor32(arg1.length) + 97
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    while idx < arg1.length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _18 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = -1
        require ext_code.size(address(_18))
        call address(_18).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(this.address), -1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _21 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_21] == bool(mem[_21])
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_671646fd(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    if address(arg2) == address(arg3):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UniswapV2Library: IDENTICAL_ADDRESSES'
    if address(arg2) < address(arg3):
        if not address(arg2):
            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
        require ext_code.size(address(arg1))
        staticcall address(arg1).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if address(arg2) == address(arg2):
            return ext_call.return_data[18 len 14], ext_call.return_data[32] << 144
    else:
        if not address(arg3):
            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
        require ext_code.size(address(arg1))
        staticcall address(arg1).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if address(arg2) == address(arg3):
            return ext_call.return_data[18 len 14], ext_call.return_data[32] << 144
    return ext_call.return_data[50 len 14], ext_call.return_data[0] << 144
}

function sub_b6db909d(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] == cd[4]
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + 97 > test266151307() or floor32(('cd', 36).length) + 97 < 96:
        revert with 'NH{q', 65
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98 > test266151307() or floor32(('cd', 68).length) + 98 < 97:
        revert with 'NH{q', 65
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = floor32(('cd', 36).length) + 129
    while idx < ('cd', 68).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if ('cd', 36).length < 2:
        revert with 0, 'UniswapV2Library: INVALID_PATH'
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if not ('cd', 36).length:
        if 0 >= ('cd', 36).length:
            revert with 'NH{q', 50
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 130] = cd[4]
        if var221003 < 1:
            revert with 'NH{q', 17
        if var225002 >= var225001:
            return Array(len=('cd', 36).length, data=mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 130 len 32 * ('cd', 36).length]), 
        if var227001 >= ('cd', 68).length:
            revert with 'NH{q', 50
        if var229006 >= ('cd', 36).length:
            revert with 'NH{q', 50
        if var241003 > -2:
            revert with 'NH{q', 17
        # nil
    else:
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 130 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
        if 0 >= ('cd', 36).length:
            revert with 'NH{q', 50
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 130] = cd[4]
        if var222003 < 1:
            revert with 'NH{q', 17
        if var226002 >= var226001:
            return Array(len=('cd', 36).length, data=mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 130 len 32 * ('cd', 36).length]), 
        if var228001 >= ('cd', 68).length:
            revert with 'NH{q', 50
        if var230006 >= ('cd', 36).length:
            revert with 'NH{q', 50
        if var242003 > -2:
            revert with 'NH{q', 17
        # nil
}

function sub_44fbbd62(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] == cd[4]
    require cd[36] == cd[36]
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 68).length) + 97 > test266151307() or floor32(('cd', 68).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = 128
    while idx < ('cd', 68).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    if ('cd', 100).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98 > test266151307() or floor32(('cd', 100).length) + 98 < 97:
        revert with 'NH{q', 65
    mem[floor32(('cd', 68).length) + 97] = ('cd', 100).length
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    idx = 0
    s = cd[100] + 36
    t = floor32(('cd', 68).length) + 129
    while idx < ('cd', 100).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if ('cd', 68).length < 2:
        revert with 0, 'UniswapV2Library: INVALID_PATH'
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] = ('cd', 68).length
    if not ('cd', 68).length:
        if 0 >= ('cd', 68).length:
            revert with 'NH{q', 50
        mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130] = cd[4]
        if var229003 < 1:
            revert with 'NH{q', 17
        if var233002 < var233001:
            if var235001 >= ('cd', 100).length:
                revert with 'NH{q', 50
            if var237006 >= ('cd', 68).length:
                revert with 'NH{q', 50
            if var249003 > -2:
                revert with 'NH{q', 17
            # nil
        else:
            if ('cd', 68).length < 1:
                revert with 'NH{q', 17
            if ('cd', 68).length - 1 >= ('cd', 68).length:
                revert with 'NH{q', 50
            if mem[(32 * ('cd', 68).length - 1) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130] < cd[36]:
                revert with 0, 'Lambot: INSUFFICIENT_OUTPUT_AMOUNT'
            if 1 >= ('cd', 68).length:
                revert with 'NH{q', 50
            _3891 = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 162]
            if 0 >= ('cd', 100).length:
                revert with 'NH{q', 50
            _3895 = mem[floor32(('cd', 68).length) + 129]
            require ext_code.size(mem[floor32(('cd', 68).length) + 141 len 20])
            staticcall mem[floor32(('cd', 68).length) + 141 len 20].token0() with:
                    gas gas_remaining wei
            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 68).length) + 130] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(_3895))
            staticcall address(_3895).token1() with:
                    gas gas_remaining wei
            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 130] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if 1 >= ('cd', 68).length:
                revert with 'NH{q', 50
            if 1 >= ('cd', 68).length:
                revert with 'NH{q', 50
            if 0 >= ('cd', 68).length:
                revert with 'NH{q', 50
            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 162] = 160
            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 322] = ('cd', 68).length
            idx = 0
            s = 128
            t = floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 354
            while idx < ('cd', 68).length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 194] = (32 * ('cd', 68).length) + 192
            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (64 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 354] = ('cd', 100).length
            idx = 0
            s = floor32(('cd', 68).length) + 129
            t = floor32(('cd', 68).length) + floor32(('cd', 100).length) + (64 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 386
            while idx < ('cd', 100).length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 226] = mem[140 len 20]
            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 258] = cd[4]
            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 290] = _3891
            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (64 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 100).length) + 386] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            if mem[172 len 20] == address(ext_call.return_data[0]):
                mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (64 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 100).length) + 390] = _3891
                if mem[172 len 20] == ext_call.return_data[12 len 20]:
                    mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (64 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 100).length) + 422] = _3891
                    mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (64 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 100).length) + 454] = this.address
                    mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (64 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 100).length) + 486] = 128
                    mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (64 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 100).length) + 518] = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 130]
                    mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (64 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 100).length) + 550 len ceil32(mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 130])] = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 162 len ceil32(mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 130])]
                    if ceil32(mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 130]) > mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 130]:
                        mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (64 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 100).length) + mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 130] + 550] = 0
                    require ext_code.size(address(_3895))
                    call address(_3895).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args _3891, _3891, address(this.address), Array(len=mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 130], data=mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (64 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 100).length) + 550 len ceil32(mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 130])])
                else:
                    mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (64 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 100).length) + 422] = 0
                    mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (64 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 100).length) + 454] = this.address
                    mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (64 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 100).length) + 486] = 128
                    mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (64 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 100).length) + 518] = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 130]
                    mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (64 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 100).length) + 550 len ceil32(mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 130])] = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 162 len ceil32(mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 130])]
                    if ceil32(mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 130]) > mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 130]:
                        mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (64 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 100).length) + mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 130] + 550] = 0
                    require ext_code.size(address(_3895))
                    call address(_3895).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args _3891, 0, address(this.address), 128, mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 130], mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (64 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 100).length) + 550 len ceil32(mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 130])]
            else:
                mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (64 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 100).length) + 390] = 0
                if mem[172 len 20] == ext_call.return_data[12 len 20]:
                    mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (64 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 100).length) + 422] = _3891
                    mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (64 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 100).length) + 454] = this.address
                    mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (64 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 100).length) + 486] = 128
                    mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (64 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 100).length) + 518] = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 130]
                    mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (64 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 100).length) + 550 len ceil32(mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 130])] = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 162 len ceil32(mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 130])]
                    if ceil32(mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 130]) > mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 130]:
                        mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (64 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 100).length) + mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 130] + 550] = 0
                    require ext_code.size(address(_3895))
                    call address(_3895).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, _3891, address(this.address), 128, mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 130], mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (64 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 100).length) + 550 len ceil32(mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 130])]
                else:
                    mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (64 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 100).length) + 422] = 0
                    mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (64 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 100).length) + 454] = this.address
                    mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (64 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 100).length) + 486] = 128
                    mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (64 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 100).length) + 518] = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 130]
                    mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (64 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 100).length) + 550 len ceil32(mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 130])] = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 162 len ceil32(mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 130])]
                    if ceil32(mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 130]) > mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 130]:
                        mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (64 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 100).length) + mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 130] + 550] = 0
                    require ext_code.size(address(_3895))
                    call address(_3895).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, 0, address(this.address), 128, mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 130], mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (64 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 100).length) + 550 len ceil32(mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 130])]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
        if 0 >= ('cd', 68).length:
            revert with 'NH{q', 50
        mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130] = cd[4]
        if var230003 < 1:
            revert with 'NH{q', 17
        if var234002 < var234001:
            if var236001 >= ('cd', 100).length:
                revert with 'NH{q', 50
            if var238006 >= ('cd', 68).length:
                revert with 'NH{q', 50
            if var250003 > -2:
                revert with 'NH{q', 17
            # nil
        else:
            if ('cd', 68).length < 1:
                revert with 'NH{q', 17
            if ('cd', 68).length - 1 >= ('cd', 68).length:
                revert with 'NH{q', 50
            if mem[(32 * ('cd', 68).length - 1) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130] < cd[36]:
                revert with 0, 'Lambot: INSUFFICIENT_OUTPUT_AMOUNT'
            if 1 >= ('cd', 68).length:
                revert with 'NH{q', 50
            _3893 = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 162]
            if 0 >= ('cd', 100).length:
                revert with 'NH{q', 50
            _3899 = mem[floor32(('cd', 68).length) + 129]
            require ext_code.size(mem[floor32(('cd', 68).length) + 141 len 20])
            staticcall mem[floor32(('cd', 68).length) + 141 len 20].token0() with:
                    gas gas_remaining wei
            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 68).length) + 130] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(_3899))
            staticcall address(_3899).token1() with:
                    gas gas_remaining wei
            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 130] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if 1 >= ('cd', 68).length:
                revert with 'NH{q', 50
            if 1 >= ('cd', 68).length:
                revert with 'NH{q', 50
            if 0 >= ('cd', 68).length:
                revert with 'NH{q', 50
            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 162] = 160
            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 322] = ('cd', 68).length
            idx = 0
            s = 128
            t = floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 354
            while idx < ('cd', 68).length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 194] = (32 * ('cd', 68).length) + 192
            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (64 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 354] = ('cd', 100).length
            idx = 0
            s = floor32(('cd', 68).length) + 129
            t = floor32(('cd', 68).length) + floor32(('cd', 100).length) + (64 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 386
            while idx < ('cd', 100).length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 226] = mem[140 len 20]
            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 258] = cd[4]
            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 290] = _3893
            mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (64 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 100).length) + 386] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            if mem[172 len 20] == address(ext_call.return_data[0]):
                mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (64 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 100).length) + 390] = _3893
                if mem[172 len 20] == ext_call.return_data[12 len 20]:
                    mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (64 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 100).length) + 422] = _3893
                    mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (64 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 100).length) + 454] = this.address
                    mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (64 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 100).length) + 486] = 128
                    mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (64 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 100).length) + 518] = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 130]
                    mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (64 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 100).length) + 550 len ceil32(mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 130])] = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 162 len ceil32(mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 130])]
                    if ceil32(mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 130]) > mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 130]:
                        mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (64 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 100).length) + mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 130] + 550] = 0
                    require ext_code.size(address(_3899))
                    call address(_3899).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args _3893, _3893, address(this.address), Array(len=mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 130], data=mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (64 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 100).length) + 550 len ceil32(mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 130])])
                else:
                    mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (64 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 100).length) + 422] = 0
                    mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (64 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 100).length) + 454] = this.address
                    mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (64 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 100).length) + 486] = 128
                    mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (64 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 100).length) + 518] = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 130]
                    mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (64 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 100).length) + 550 len ceil32(mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 130])] = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 162 len ceil32(mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 130])]
                    if ceil32(mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 130]) > mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 130]:
                        mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (64 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 100).length) + mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 130] + 550] = 0
                    require ext_code.size(address(_3899))
                    call address(_3899).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args _3893, 0, address(this.address), 128, mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 130], mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (64 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 100).length) + 550 len ceil32(mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 130])]
            else:
                mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (64 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 100).length) + 390] = 0
                if mem[172 len 20] == ext_call.return_data[12 len 20]:
                    mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (64 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 100).length) + 422] = _3893
                    mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (64 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 100).length) + 454] = this.address
                    mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (64 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 100).length) + 486] = 128
                    mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (64 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 100).length) + 518] = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 130]
                    mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (64 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 100).length) + 550 len ceil32(mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 130])] = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 162 len ceil32(mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 130])]
                    if ceil32(mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 130]) > mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 130]:
                        mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (64 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 100).length) + mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 130] + 550] = 0
                    require ext_code.size(address(_3899))
                    call address(_3899).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, _3893, address(this.address), 128, mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 130], mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (64 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 100).length) + 550 len ceil32(mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 130])]
                else:
                    mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (64 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 100).length) + 422] = 0
                    mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (64 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 100).length) + 454] = this.address
                    mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (64 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 100).length) + 486] = 128
                    mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (64 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 100).length) + 518] = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 130]
                    mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (64 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 100).length) + 550 len ceil32(mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 130])] = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 162 len ceil32(mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 130])]
                    if ceil32(mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 130]) > mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 130]:
                        mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (64 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 100).length) + mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 130] + 550] = 0
                    require ext_code.size(address(_3899))
                    call address(_3899).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, 0, address(this.address), 128, mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 130], mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (64 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 100).length) + 550 len ceil32(mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 130])]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}



}
