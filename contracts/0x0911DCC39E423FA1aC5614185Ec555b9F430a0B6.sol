contract main {




// =====================  Runtime code  =====================


#
#  - sub_32e0b51b(?)
#
address stor0;
address stor1;
address stor2;
address stor5;

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor5 != msg.sender:
        revert with 0, 'only owner'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args stor5, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    if stor0 != msg.sender:
        revert with 0, '!pair'
    if arg1 != this.address:
        revert with 0, '!sender'
    require arg4.length >= 128
    require cd[(arg4 + 36)] < 2
    require cd[(arg4 + 68)] <= test266151307()
    require arg4 + cd[(arg4 + 68)] + 67 < arg4 + arg4.length + 36
    if cd[(arg4 + cd[(arg4 + 68)] + 36)] > test266151307():
        revert with 'NH{q', 65
    if floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97 > test266151307() or floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = cd[(arg4 + cd[(arg4 + 68)] + 36)]
    require cd[(arg4 + 68)] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 68 <= arg4.length + 36
    idx = 0
    s = arg4 + cd[(arg4 + 68)] + 68
    t = 128
    while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[(arg4 + 100)] <= test266151307()
    require arg4 + cd[(arg4 + 100)] + 67 < arg4 + arg4.length + 36
    if cd[(arg4 + cd[(arg4 + 100)] + 36)] > test266151307():
        revert with 'NH{q', 65
    if floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 98 > test266151307() or floor32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 98 < 97:
        revert with 'NH{q', 65
    mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97] = cd[(arg4 + cd[(arg4 + 100)] + 36)]
    require cd[(arg4 + 100)] + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 68 <= arg4.length + 36
    idx = 0
    s = arg4 + cd[(arg4 + 100)] + 68
    t = floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 129
    while idx < cd[(arg4 + cd[(arg4 + 100)] + 36)]:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[(arg4 + 132)] <= test266151307()
    require arg4 + cd[(arg4 + 132)] + 67 < arg4 + arg4.length + 36
    if cd[(arg4 + cd[(arg4 + 132)] + 36)] > test266151307():
        revert with 'NH{q', 65
    if floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 99 > test266151307() or floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 99 < 98:
        revert with 'NH{q', 65
    mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 98] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
    require cd[(arg4 + 132)] + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 68 <= arg4.length + 36
    idx = 0
    s = arg4 + cd[(arg4 + 132)] + 68
    t = floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 130
    while idx < cd[(arg4 + cd[(arg4 + 132)] + 36)]:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if cd[(arg4 + 36)] > 1:
        revert with 'NH{q', 33
    if cd[(arg4 + cd[(arg4 + 132)] + 36)] < 1:
        revert with 'NH{q', 17
    if cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1 >= cd[(arg4 + cd[(arg4 + 132)] + 36)]:
        revert with 'NH{q', 50
    if not cd[(arg4 + 36)]:
        if cd[(arg4 + cd[(arg4 + 100)] + 36)] < 1:
            revert with 'NH{q', 17
        if cd[(arg4 + cd[(arg4 + 100)] + 36)] - 1 >= cd[(arg4 + cd[(arg4 + 100)] + 36)]:
            revert with 'NH{q', 50
        require ext_code.size(mem[(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)] - 1) + floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 141 len 20])
        call mem[(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)] - 1) + floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 141 len 20].0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1) + floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 130]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if 0 >= cd[(arg4 + cd[(arg4 + 100)] + 36)]:
        revert with 'NH{q', 50
    _269 = mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 129]
    if 0 >= cd[(arg4 + cd[(arg4 + 68)] + 36)]:
        revert with 'NH{q', 50
    if 0 >= cd[(arg4 + cd[(arg4 + 132)] + 36)]:
        revert with 'NH{q', 50
    _273 = mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 130]
    mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 103] = mem[140 len 20]
    mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 135] = _273
    require ext_code.size(address(_269))
    call address(_269).0xa9059cbb with:
         gas gas_remaining wei
        args mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 103], _273
    mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 99] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 99
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if var259003 < 1:
        revert with 'NH{q', 17
    if var263002 >= var263001:
        if cd[(arg4 + cd[(arg4 + 100)] + 36)] < 1:
            revert with 'NH{q', 17
        if cd[(arg4 + cd[(arg4 + 100)] + 36)] - 1 >= cd[(arg4 + cd[(arg4 + 100)] + 36)]:
            revert with 'NH{q', 50
        require ext_code.size(mem[(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)] - 1) + floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 141 len 20])
        call mem[(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)] - 1) + floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 141 len 20].0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1) + floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 130]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if var265001 >= cd[(arg4 + cd[(arg4 + 68)] + 36)]:
        revert with 'NH{q', 50
    _1261 = mem[(32 * var267001) + 128]
    mem[floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 99] = 0xdfe168100000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(_1261))
    staticcall var269002.mem[var269003 len 4] with:
            gas gas_remaining wei
           args mem[var269003 + 4 len var269004 - 4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require var273002 - var273001 >= 32
    # nil
}

function sub_63e79daf(?) payable {
    require calldata.size - 4 >= 192
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == arg4
    require arg5 == address(arg5)
    require arg6 == arg6
    require ext_code.size(address(arg1))
    staticcall address(arg1).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg3), address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    stor1 = ext_call.return_data[12 len 20]
    if not stor1:
        revert with 0, '!pair'
    require ext_code.size(stor1)
    staticcall stor1.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(stor1)
    staticcall stor1.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(arg5))
    staticcall address(arg5).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg3), address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    stor2 = ext_call.return_data[12 len 20]
    if not stor2:
        revert with 0, '!pair'
    require ext_code.size(stor2)
    staticcall stor2.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(stor2)
    staticcall stor2.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(arg2))
    staticcall address(arg2).0x70a08231 with:
            gas gas_remaining wei
           args stor1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(arg3))
    staticcall address(arg3).0x70a08231 with:
            gas gas_remaining wei
           args stor1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < arg4:
        revert with 'NH{q', 17
    if ext_call.return_data[0] - arg4 > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
        revert with 'NH{q', 17
    if ext_call.return_data[0] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
        revert with 'NH{q', 17
    if 1000 * ext_call.return_data[0] and arg4 > -1 / 1000 * ext_call.return_data[0]:
        revert with 'NH{q', 17
    if not (997 * ext_call.return_data[0]) - (997 * arg4):
        revert with 'NH{q', 18
    if 1000 * ext_call.return_data[0] * arg4 / (997 * ext_call.return_data[0]) - (997 * arg4) > -2:
        revert with 'NH{q', 17
    require ext_code.size(address(arg2))
    call address(arg2).0xa9059cbb with:
         gas gas_remaining wei
        args stor1, (1000 * ext_call.return_data[0] * arg4 / (997 * ext_call.return_data[0]) - (997 * arg4)) + 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor1)
    if address(arg3) == address(ext_call.return_data[0]):
        if address(arg3) == ext_call.return_data[12 len 20]:
            call stor1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args arg4, arg4, stor2, 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(stor2)
            if address(arg2) == address(ext_call.return_data[0]):
                if address(arg2) == ext_call.return_data[12 len 20]:
                    call stor2.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args arg6, arg6, address(this.address), 128, 0
                else:
                    call stor2.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args arg6, 0, address(this.address), 128, 0
            else:
                if address(arg2) == ext_call.return_data[12 len 20]:
                    call stor2.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, arg6, address(this.address), 128, 0
                else:
                    call stor2.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 0, address(this.address), 128, 0
        else:
            call stor1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args arg4, 0, stor2, 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(stor2)
            if address(arg2) == address(ext_call.return_data[0]):
                if address(arg2) == ext_call.return_data[12 len 20]:
                    call stor2.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args arg6, arg6, address(this.address), 128, 0
                else:
                    call stor2.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args arg6, 0, address(this.address), 128, 0
            else:
                if address(arg2) == ext_call.return_data[12 len 20]:
                    call stor2.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, arg6, address(this.address), 128, 0
                else:
                    call stor2.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 0, address(this.address), 128, 0
    else:
        if address(arg3) == ext_call.return_data[12 len 20]:
            call stor1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, arg4, stor2, 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(stor2)
            if address(arg2) == address(ext_call.return_data[0]):
                if address(arg2) == ext_call.return_data[12 len 20]:
                    call stor2.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args arg6, arg6, address(this.address), 128, 0
                else:
                    call stor2.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args arg6, 0, address(this.address), 128, 0
            else:
                if address(arg2) == ext_call.return_data[12 len 20]:
                    call stor2.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, arg6, address(this.address), 128, 0
                else:
                    call stor2.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 0, address(this.address), 128, 0
        else:
            call stor1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, 0, stor2, 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(stor2)
            if address(arg2) == address(ext_call.return_data[0]):
                if address(arg2) == ext_call.return_data[12 len 20]:
                    call stor2.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args arg6, arg6, address(this.address), 128, 0
                else:
                    call stor2.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args arg6, 0, address(this.address), 128, 0
            else:
                if address(arg2) == ext_call.return_data[12 len 20]:
                    call stor2.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, arg6, address(this.address), 128, 0
                else:
                    call stor2.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 0, address(this.address), 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_72695738(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
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
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98 > test266151307() or floor32(('cd', 36).length) + 98 < 97:
        revert with 'NH{q', 65
    mem[floor32(('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = floor32(('cd', 4).length) + 129
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
    if floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 99 > test266151307() or floor32(('cd', 68).length) + 99 < 98:
        revert with 'NH{q', 65
    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130
    while idx < ('cd', 68).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if ('cd', 4).length < 1:
        revert with 'NH{q', 17
    if ('cd', 4).length - 1 >= ('cd', 4).length:
        revert with 'NH{q', 50
    stor0 = mem[(32 * ('cd', 4).length - 1) + 140 len 20]
    if not stor0:
        revert with 0, '!pair'
    require ext_code.size(stor0)
    staticcall stor0.token0() with:
            gas gas_remaining wei
    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 99] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(stor0)
    staticcall stor0.token1() with:
            gas gas_remaining wei
    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(return_data.size) + 99] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + 99
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if 0 >= ('cd', 36).length:
        revert with 'NH{q', 50
    if mem[floor32(('cd', 4).length) + 141 len 20] != address(ext_call.return_data[0]):
        if 0 >= ('cd', 36).length:
            revert with 'NH{q', 50
        if mem[floor32(('cd', 4).length) + 141 len 20] == ext_call.return_data[12 len 20]:
            if 0 >= ('cd', 68).length:
                revert with 'NH{q', 50
            _261 = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]
            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + 131] = 1
            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + 163] = 128
            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + 259] = ('cd', 4).length
            idx = 0
            s = 128
            t = floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + 291
            while idx < ('cd', 4).length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + 195] = (32 * ('cd', 4).length) + 160
            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 4).length) + 291] = ('cd', 36).length
            idx = 0
            s = floor32(('cd', 4).length) + 129
            t = floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 4).length) + 323
            while idx < ('cd', 36).length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + 227] = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192
            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 323] = ('cd', 68).length
            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 355 len 32 * ('cd', 68).length] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130 len 32 * ('cd', 68).length]
            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 355] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 359] = 0
            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 391] = _261
            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 423] = this.address
            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 455] = 128
            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 487] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + 99]
            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 519 len ceil32(mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + 99])] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + 131 len ceil32(mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + 99])]
            if ceil32(mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + 99]) <= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + 99]:
                require ext_code.size(stor0)
                call stor0.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, _261, address(this.address), 128, mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + 99], mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 519 len ceil32(mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + 99])]
            else:
                mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + 99] + 519] = 0
                require ext_code.size(stor0)
                call stor0.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, _261, address(this.address), 128, mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 487 len ceil32(mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + 99]) + 32]
        else:
            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + 131] = 1
            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + 163] = 128
            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + 259] = ('cd', 4).length
            idx = 0
            s = 128
            t = floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + 291
            while idx < ('cd', 4).length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + 195] = (32 * ('cd', 4).length) + 160
            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 4).length) + 291] = ('cd', 36).length
            idx = 0
            s = floor32(('cd', 4).length) + 129
            t = mem[64] + (32 * mem[96]) + 224
            while idx < ('cd', 36).length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 128] = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192
            _366 = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]
            mem[mem[64] + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]
            mem[mem[64] + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256 len 32 * _366] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130 len 32 * _366]
            _405 = mem[64]
            mem[64] = mem[64] + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * _366) + 256
            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * _366) + 355] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * _366) + 359] = 0
            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * _366) + 391] = 0
            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * _366) + 423] = this.address
            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * _366) + 455] = 128
            _410 = mem[_405]
            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * _366) + 487] = mem[_405]
            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * _366) + 519 len ceil32(_410)] = mem[_405 + 32 len ceil32(_410)]
            if ceil32(_410) > _410:
                mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * _366) + _410 + 519] = 0
            require ext_code.size(stor0)
            call stor0.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, 0, address(this.address), 128, mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * _366) + 487 len ceil32(_410) + 32]
    else:
        if 0 >= ('cd', 68).length:
            revert with 'NH{q', 50
        _254 = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]
        if 0 >= ('cd', 36).length:
            revert with 'NH{q', 50
        if mem[floor32(('cd', 4).length) + 141 len 20] == ext_call.return_data[12 len 20]:
            if 0 >= ('cd', 68).length:
                revert with 'NH{q', 50
            _263 = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]
            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + 131] = 1
            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + 163] = 128
            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + 259] = ('cd', 4).length
            idx = 0
            s = 128
            t = floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + 291
            while idx < ('cd', 4).length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + 195] = (32 * ('cd', 4).length) + 160
            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 4).length) + 291] = ('cd', 36).length
            idx = 0
            s = floor32(('cd', 4).length) + 129
            t = floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 4).length) + 323
            while idx < ('cd', 36).length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + 227] = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192
            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 323] = ('cd', 68).length
            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 355 len 32 * ('cd', 68).length] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130 len 32 * ('cd', 68).length]
            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 355] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 359] = _254
            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 391] = _263
            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 423] = this.address
            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 455] = 128
            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 487] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + 99]
            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 519 len ceil32(mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + 99])] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + 131 len ceil32(mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + 99])]
            if ceil32(mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + 99]) <= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + 99]:
                require ext_code.size(stor0)
                call stor0.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args _254, _263, address(this.address), Array(len=mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + 99], data=mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 519 len ceil32(mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + 99])])
            else:
                mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + 99] + 519] = 0
                require ext_code.size(stor0)
                call stor0.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args _254, _263, address(this.address), 128, mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 487 len ceil32(mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + 99]) + 32]
        else:
            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + 131] = 1
            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + 163] = 128
            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + 259] = ('cd', 4).length
            idx = 0
            s = 128
            t = floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + 291
            while idx < ('cd', 4).length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + 195] = (32 * ('cd', 4).length) + 160
            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 4).length) + 291] = ('cd', 36).length
            idx = 0
            s = floor32(('cd', 4).length) + 129
            t = mem[64] + (32 * mem[96]) + 224
            while idx < ('cd', 36).length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + 227] = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192
            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 323] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]
            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 355 len 32 * mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130 len 32 * mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]]
            _401 = mem[64]
            mem[64] = floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]) + 355
            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]) + 355] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]) + 359] = _254
            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]) + 391] = 0
            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]) + 423] = this.address
            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]) + 455] = 128
            _408 = mem[_401]
            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]) + 487] = mem[_401]
            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]) + 519 len ceil32(_408)] = mem[_401 + 32 len ceil32(_408)]
            if ceil32(_408) > _408:
                mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]) + _408 + 519] = 0
            require ext_code.size(stor0)
            call stor0.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args _254, 0, address(this.address), 128, mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]) + 487 len ceil32(_408) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
