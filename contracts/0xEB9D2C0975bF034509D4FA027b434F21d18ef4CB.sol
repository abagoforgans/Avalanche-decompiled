contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == stor0)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, 'Owner only'
    stor0 = arg1
}

function withdrawToken(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, 'Owner only'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function joeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    require ext_code.size(msg.sender)
    if not arg2:
        staticcall msg.sender.token1() with:
                gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(msg.sender)
        if not arg2:
            staticcall msg.sender.token0() with:
                    gas gas_remaining wei
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require arg4.length >= 128
            require cd[(arg4 + 36)] == address(cd[(arg4 + 36)])
            require cd[(arg4 + 100)] == cd[(arg4 + 100)] % 16777216
            require cd[(arg4 + 132)] <= test266151307()
            require arg4 + arg4.length + 36 > arg4 + cd[(arg4 + 132)] + 67
            if cd[(arg4 + cd[(arg4 + 132)] + 36)] > test266151307():
                revert with 0, 65
            if ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 < 96 or (2 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 > test266151307():
                revert with 0, 65
            mem[(2 * ceil32(return_data.size)) + 96] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
            require cd[(arg4 + 132)] + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 68 <= arg4.length + 36
            s = (2 * ceil32(return_data.size)) + 128
            idx = arg4 + cd[(arg4 + 132)] + 68
            while idx < arg4 + cd[(arg4 + 132)] + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 68:
                require cd[idx] == address(cd[idx])
                mem[s] = cd[idx]
                s = s + 32
                idx = idx + 32
                continue 
            if 300 > !block.timestamp:
                revert with 0, 17
            mem[(2 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 101] = address(cd[(arg4 + 36)])
            if not arg2:
                mem[(2 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 133] = arg3
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[(arg4 + 36)]), arg3
                mem[(2 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if 1 == cd[(arg4 + 100)] % 16777216:
                    if 0 >= cd[(arg4 + cd[(arg4 + 132)] + 36)]:
                        revert with 0, 50
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 101] = mem[(2 * ceil32(return_data.size)) + 140 len 20]
                    require ext_code.size(address(cd[(arg4 + 36)]))
                    call address(cd[(arg4 + 36)]).exchange(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 101], address(ext_call.return_data[0]), address(ext_call.return_data[0]), arg3, cd[(arg4 + 68)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= cd[(arg4 + 68)]:
                        revert with 0, 'No profit'
                    if ext_call.return_data[0] < cd[(arg4 + 68)]:
                        revert with 0, 17
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, cd[(arg4 + 68)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor0, ext_call.return_data[0] - cd[(arg4 + 68)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 101] = arg3
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 133] = cd[(arg4 + 68)]
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 165] = 160
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 261] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 293
                    t = (2 * ceil32(return_data.size)) + 128
                    while idx < cd[(arg4 + cd[(arg4 + 132)] + 36)]:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 197] = this.address
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 229] = block.timestamp + 300
                    require ext_code.size(address(cd[(arg4 + 36)]))
                    call address(cd[(arg4 + 36)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, cd[(arg4 + 68)], Array(len=cd[(arg4 + cd[(arg4 + 132)] + 36)], data=mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 293 len 32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]]), address(this.address), block.timestamp + 300
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97
                    require return_data.size >= 32
                    _729 = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                    require (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + return_data.size + 97 > (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 128
                    _737 = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97]
                    if mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97]) + 98 > test266151307():
                        revert with 0, 65
                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97]) + 98
                    mem[(6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97] = _737
                    require _729 + (32 * _737) + 32 <= return_data.size
                    mem[(6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129 len ceil32(32 * _737)] = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + _729 + 129 len ceil32(32 * _737)]
                    if _737 < 1:
                        revert with 0, 17
                    if _737 - 1 >= _737:
                        revert with 0, 50
                    _889 = mem[(32 * _737 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129]
                    if mem[(32 * _737 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129] <= cd[(arg4 + 68)]:
                        revert with 0, 'No profit'
                    if mem[(32 * _737 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129] < cd[(arg4 + 68)]:
                        revert with 0, 17
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = cd[(arg4 + 68)]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, cd[(arg4 + 68)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _929 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_929] == bool(mem[_929])
                    mem[mem[64] + 4] = stor0
                    mem[mem[64] + 36] = _889 - cd[(arg4 + 68)]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor0, _889 - cd[(arg4 + 68)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _961 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_961] == bool(mem[_961])
            else:
                mem[(2 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 133] = arg2
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[(arg4 + 36)]), arg2
                mem[(2 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if 1 == cd[(arg4 + 100)] % 16777216:
                    if 0 >= cd[(arg4 + cd[(arg4 + 132)] + 36)]:
                        revert with 0, 50
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 101] = mem[(2 * ceil32(return_data.size)) + 140 len 20]
                    require ext_code.size(address(cd[(arg4 + 36)]))
                    call address(cd[(arg4 + 36)]).exchange(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 101], address(ext_call.return_data[0]), address(ext_call.return_data[0]), arg2, cd[(arg4 + 68)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= cd[(arg4 + 68)]:
                        revert with 0, 'No profit'
                    if ext_call.return_data[0] < cd[(arg4 + 68)]:
                        revert with 0, 17
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, cd[(arg4 + 68)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor0, ext_call.return_data[0] - cd[(arg4 + 68)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 101] = arg2
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 133] = cd[(arg4 + 68)]
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 165] = 160
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 261] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 293
                    t = (2 * ceil32(return_data.size)) + 128
                    while idx < cd[(arg4 + cd[(arg4 + 132)] + 36)]:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 197] = this.address
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 229] = block.timestamp + 300
                    require ext_code.size(address(cd[(arg4 + 36)]))
                    call address(cd[(arg4 + 36)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, cd[(arg4 + 68)], Array(len=cd[(arg4 + cd[(arg4 + 132)] + 36)], data=mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 293 len 32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]]), address(this.address), block.timestamp + 300
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97
                    require return_data.size >= 32
                    _730 = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                    require (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + return_data.size + 97 > (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 128
                    _738 = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97]
                    if mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97]) + 98 > test266151307():
                        revert with 0, 65
                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97]) + 98
                    mem[(6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97] = _738
                    require _730 + (32 * _738) + 32 <= return_data.size
                    mem[(6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129 len ceil32(32 * _738)] = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + _730 + 129 len ceil32(32 * _738)]
                    if _738 < 1:
                        revert with 0, 17
                    if _738 - 1 >= _738:
                        revert with 0, 50
                    _890 = mem[(32 * _738 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129]
                    if mem[(32 * _738 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129] <= cd[(arg4 + 68)]:
                        revert with 0, 'No profit'
                    if mem[(32 * _738 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129] < cd[(arg4 + 68)]:
                        revert with 0, 17
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = cd[(arg4 + 68)]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, cd[(arg4 + 68)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _930 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_930] == bool(mem[_930])
                    mem[mem[64] + 4] = stor0
                    mem[mem[64] + 36] = _890 - cd[(arg4 + 68)]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor0, _890 - cd[(arg4 + 68)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _962 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_962] == bool(mem[_962])
        else:
            staticcall msg.sender.token1() with:
                    gas gas_remaining wei
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require arg4.length >= 128
            require cd[(arg4 + 36)] == address(cd[(arg4 + 36)])
            require cd[(arg4 + 100)] == cd[(arg4 + 100)] % 16777216
            require cd[(arg4 + 132)] <= test266151307()
            require arg4 + arg4.length + 36 > arg4 + cd[(arg4 + 132)] + 67
            if cd[(arg4 + cd[(arg4 + 132)] + 36)] > test266151307():
                revert with 0, 65
            if ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 < 96 or (2 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 > test266151307():
                revert with 0, 65
            mem[(2 * ceil32(return_data.size)) + 96] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
            require cd[(arg4 + 132)] + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 68 <= arg4.length + 36
            s = (2 * ceil32(return_data.size)) + 128
            idx = arg4 + cd[(arg4 + 132)] + 68
            while idx < arg4 + cd[(arg4 + 132)] + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 68:
                require cd[idx] == address(cd[idx])
                mem[s] = cd[idx]
                s = s + 32
                idx = idx + 32
                continue 
            if 300 > !block.timestamp:
                revert with 0, 17
            mem[(2 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 101] = address(cd[(arg4 + 36)])
            if not arg2:
                mem[(2 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 133] = arg3
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[(arg4 + 36)]), arg3
                mem[(2 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if 1 == cd[(arg4 + 100)] % 16777216:
                    if 0 >= cd[(arg4 + cd[(arg4 + 132)] + 36)]:
                        revert with 0, 50
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 101] = mem[(2 * ceil32(return_data.size)) + 140 len 20]
                    require ext_code.size(address(cd[(arg4 + 36)]))
                    call address(cd[(arg4 + 36)]).exchange(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 101], address(ext_call.return_data[0]), address(ext_call.return_data[0]), arg3, cd[(arg4 + 68)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= cd[(arg4 + 68)]:
                        revert with 0, 'No profit'
                    if ext_call.return_data[0] < cd[(arg4 + 68)]:
                        revert with 0, 17
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, cd[(arg4 + 68)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor0, ext_call.return_data[0] - cd[(arg4 + 68)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 101] = arg3
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 133] = cd[(arg4 + 68)]
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 165] = 160
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 261] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 293
                    t = (2 * ceil32(return_data.size)) + 128
                    while idx < cd[(arg4 + cd[(arg4 + 132)] + 36)]:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 197] = this.address
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 229] = block.timestamp + 300
                    require ext_code.size(address(cd[(arg4 + 36)]))
                    call address(cd[(arg4 + 36)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, cd[(arg4 + 68)], Array(len=cd[(arg4 + cd[(arg4 + 132)] + 36)], data=mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 293 len 32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]]), address(this.address), block.timestamp + 300
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97
                    require return_data.size >= 32
                    _731 = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                    require (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + return_data.size + 97 > (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 128
                    _739 = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97]
                    if mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97]) + 98 > test266151307():
                        revert with 0, 65
                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97]) + 98
                    mem[(6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97] = _739
                    require _731 + (32 * _739) + 32 <= return_data.size
                    mem[(6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129 len ceil32(32 * _739)] = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + _731 + 129 len ceil32(32 * _739)]
                    if _739 < 1:
                        revert with 0, 17
                    if _739 - 1 >= _739:
                        revert with 0, 50
                    _891 = mem[(32 * _739 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129]
                    if mem[(32 * _739 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129] <= cd[(arg4 + 68)]:
                        revert with 0, 'No profit'
                    if mem[(32 * _739 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129] < cd[(arg4 + 68)]:
                        revert with 0, 17
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = cd[(arg4 + 68)]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, cd[(arg4 + 68)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _931 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_931] == bool(mem[_931])
                    mem[mem[64] + 4] = stor0
                    mem[mem[64] + 36] = _891 - cd[(arg4 + 68)]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor0, _891 - cd[(arg4 + 68)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _963 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_963] == bool(mem[_963])
            else:
                mem[(2 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 133] = arg2
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[(arg4 + 36)]), arg2
                mem[(2 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if 1 == cd[(arg4 + 100)] % 16777216:
                    if 0 >= cd[(arg4 + cd[(arg4 + 132)] + 36)]:
                        revert with 0, 50
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 101] = mem[(2 * ceil32(return_data.size)) + 140 len 20]
                    require ext_code.size(address(cd[(arg4 + 36)]))
                    call address(cd[(arg4 + 36)]).exchange(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 101], address(ext_call.return_data[0]), address(ext_call.return_data[0]), arg2, cd[(arg4 + 68)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= cd[(arg4 + 68)]:
                        revert with 0, 'No profit'
                    if ext_call.return_data[0] < cd[(arg4 + 68)]:
                        revert with 0, 17
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, cd[(arg4 + 68)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor0, ext_call.return_data[0] - cd[(arg4 + 68)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 101] = arg2
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 133] = cd[(arg4 + 68)]
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 165] = 160
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 261] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 293
                    t = (2 * ceil32(return_data.size)) + 128
                    while idx < cd[(arg4 + cd[(arg4 + 132)] + 36)]:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 197] = this.address
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 229] = block.timestamp + 300
                    require ext_code.size(address(cd[(arg4 + 36)]))
                    call address(cd[(arg4 + 36)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, cd[(arg4 + 68)], Array(len=cd[(arg4 + cd[(arg4 + 132)] + 36)], data=mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 293 len 32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]]), address(this.address), block.timestamp + 300
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97
                    require return_data.size >= 32
                    _732 = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                    require (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + return_data.size + 97 > (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 128
                    _740 = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97]
                    if mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97]) + 98 > test266151307():
                        revert with 0, 65
                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97]) + 98
                    mem[(6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97] = _740
                    require _732 + (32 * _740) + 32 <= return_data.size
                    mem[(6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129 len ceil32(32 * _740)] = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + _732 + 129 len ceil32(32 * _740)]
                    if _740 < 1:
                        revert with 0, 17
                    if _740 - 1 >= _740:
                        revert with 0, 50
                    _892 = mem[(32 * _740 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129]
                    if mem[(32 * _740 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129] <= cd[(arg4 + 68)]:
                        revert with 0, 'No profit'
                    if mem[(32 * _740 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129] < cd[(arg4 + 68)]:
                        revert with 0, 17
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = cd[(arg4 + 68)]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, cd[(arg4 + 68)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _932 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_932] == bool(mem[_932])
                    mem[mem[64] + 4] = stor0
                    mem[mem[64] + 36] = _892 - cd[(arg4 + 68)]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor0, _892 - cd[(arg4 + 68)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _964 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_964] == bool(mem[_964])
    else:
        staticcall msg.sender.token0() with:
                gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(msg.sender)
        if not arg2:
            staticcall msg.sender.token0() with:
                    gas gas_remaining wei
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require arg4.length >= 128
            require cd[(arg4 + 36)] == address(cd[(arg4 + 36)])
            require cd[(arg4 + 100)] == cd[(arg4 + 100)] % 16777216
            require cd[(arg4 + 132)] <= test266151307()
            require arg4 + arg4.length + 36 > arg4 + cd[(arg4 + 132)] + 67
            if cd[(arg4 + cd[(arg4 + 132)] + 36)] > test266151307():
                revert with 0, 65
            if ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 < 96 or (2 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 > test266151307():
                revert with 0, 65
            mem[(2 * ceil32(return_data.size)) + 96] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
            require cd[(arg4 + 132)] + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 68 <= arg4.length + 36
            s = (2 * ceil32(return_data.size)) + 128
            idx = arg4 + cd[(arg4 + 132)] + 68
            while idx < arg4 + cd[(arg4 + 132)] + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 68:
                require cd[idx] == address(cd[idx])
                mem[s] = cd[idx]
                s = s + 32
                idx = idx + 32
                continue 
            if 300 > !block.timestamp:
                revert with 0, 17
            mem[(2 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 101] = address(cd[(arg4 + 36)])
            if not arg2:
                mem[(2 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 133] = arg3
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[(arg4 + 36)]), arg3
                mem[(2 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if 1 == cd[(arg4 + 100)] % 16777216:
                    if 0 >= cd[(arg4 + cd[(arg4 + 132)] + 36)]:
                        revert with 0, 50
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 101] = mem[(2 * ceil32(return_data.size)) + 140 len 20]
                    require ext_code.size(address(cd[(arg4 + 36)]))
                    call address(cd[(arg4 + 36)]).exchange(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 101], address(ext_call.return_data[0]), address(ext_call.return_data[0]), arg3, cd[(arg4 + 68)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= cd[(arg4 + 68)]:
                        revert with 0, 'No profit'
                    if ext_call.return_data[0] < cd[(arg4 + 68)]:
                        revert with 0, 17
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, cd[(arg4 + 68)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor0, ext_call.return_data[0] - cd[(arg4 + 68)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 101] = arg3
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 133] = cd[(arg4 + 68)]
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 165] = 160
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 261] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 293
                    t = (2 * ceil32(return_data.size)) + 128
                    while idx < cd[(arg4 + cd[(arg4 + 132)] + 36)]:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 197] = this.address
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 229] = block.timestamp + 300
                    require ext_code.size(address(cd[(arg4 + 36)]))
                    call address(cd[(arg4 + 36)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, cd[(arg4 + 68)], Array(len=cd[(arg4 + cd[(arg4 + 132)] + 36)], data=mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 293 len 32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]]), address(this.address), block.timestamp + 300
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97
                    require return_data.size >= 32
                    _733 = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                    require (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + return_data.size + 97 > (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 128
                    _741 = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97]
                    if mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97]) + 98 > test266151307():
                        revert with 0, 65
                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97]) + 98
                    mem[(6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97] = _741
                    require _733 + (32 * _741) + 32 <= return_data.size
                    mem[(6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129 len ceil32(32 * _741)] = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + _733 + 129 len ceil32(32 * _741)]
                    if _741 < 1:
                        revert with 0, 17
                    if _741 - 1 >= _741:
                        revert with 0, 50
                    _893 = mem[(32 * _741 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129]
                    if mem[(32 * _741 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129] <= cd[(arg4 + 68)]:
                        revert with 0, 'No profit'
                    if mem[(32 * _741 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129] < cd[(arg4 + 68)]:
                        revert with 0, 17
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = cd[(arg4 + 68)]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, cd[(arg4 + 68)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _933 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_933] == bool(mem[_933])
                    mem[mem[64] + 4] = stor0
                    mem[mem[64] + 36] = _893 - cd[(arg4 + 68)]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor0, _893 - cd[(arg4 + 68)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _965 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_965] == bool(mem[_965])
            else:
                mem[(2 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 133] = arg2
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[(arg4 + 36)]), arg2
                mem[(2 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if 1 == cd[(arg4 + 100)] % 16777216:
                    if 0 >= cd[(arg4 + cd[(arg4 + 132)] + 36)]:
                        revert with 0, 50
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 101] = mem[(2 * ceil32(return_data.size)) + 140 len 20]
                    require ext_code.size(address(cd[(arg4 + 36)]))
                    call address(cd[(arg4 + 36)]).exchange(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 101], address(ext_call.return_data[0]), address(ext_call.return_data[0]), arg2, cd[(arg4 + 68)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= cd[(arg4 + 68)]:
                        revert with 0, 'No profit'
                    if ext_call.return_data[0] < cd[(arg4 + 68)]:
                        revert with 0, 17
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, cd[(arg4 + 68)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor0, ext_call.return_data[0] - cd[(arg4 + 68)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 101] = arg2
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 133] = cd[(arg4 + 68)]
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 165] = 160
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 261] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 293
                    t = (2 * ceil32(return_data.size)) + 128
                    while idx < cd[(arg4 + cd[(arg4 + 132)] + 36)]:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 197] = this.address
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 229] = block.timestamp + 300
                    require ext_code.size(address(cd[(arg4 + 36)]))
                    call address(cd[(arg4 + 36)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, cd[(arg4 + 68)], Array(len=cd[(arg4 + cd[(arg4 + 132)] + 36)], data=mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 293 len 32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]]), address(this.address), block.timestamp + 300
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97
                    require return_data.size >= 32
                    _734 = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                    require (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + return_data.size + 97 > (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 128
                    _742 = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97]
                    if mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97]) + 98 > test266151307():
                        revert with 0, 65
                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97]) + 98
                    mem[(6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97] = _742
                    require _734 + (32 * _742) + 32 <= return_data.size
                    mem[(6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129 len ceil32(32 * _742)] = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + _734 + 129 len ceil32(32 * _742)]
                    if _742 < 1:
                        revert with 0, 17
                    if _742 - 1 >= _742:
                        revert with 0, 50
                    _894 = mem[(32 * _742 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129]
                    if mem[(32 * _742 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129] <= cd[(arg4 + 68)]:
                        revert with 0, 'No profit'
                    if mem[(32 * _742 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129] < cd[(arg4 + 68)]:
                        revert with 0, 17
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = cd[(arg4 + 68)]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, cd[(arg4 + 68)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _934 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_934] == bool(mem[_934])
                    mem[mem[64] + 4] = stor0
                    mem[mem[64] + 36] = _894 - cd[(arg4 + 68)]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor0, _894 - cd[(arg4 + 68)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _966 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_966] == bool(mem[_966])
        else:
            staticcall msg.sender.token1() with:
                    gas gas_remaining wei
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require arg4.length >= 128
            require cd[(arg4 + 36)] == address(cd[(arg4 + 36)])
            require cd[(arg4 + 100)] == cd[(arg4 + 100)] % 16777216
            require cd[(arg4 + 132)] <= test266151307()
            require arg4 + arg4.length + 36 > arg4 + cd[(arg4 + 132)] + 67
            if cd[(arg4 + cd[(arg4 + 132)] + 36)] > test266151307():
                revert with 0, 65
            if ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 < 96 or (2 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 > test266151307():
                revert with 0, 65
            mem[(2 * ceil32(return_data.size)) + 96] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
            require cd[(arg4 + 132)] + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 68 <= arg4.length + 36
            s = (2 * ceil32(return_data.size)) + 128
            idx = arg4 + cd[(arg4 + 132)] + 68
            while idx < arg4 + cd[(arg4 + 132)] + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 68:
                require cd[idx] == address(cd[idx])
                mem[s] = cd[idx]
                s = s + 32
                idx = idx + 32
                continue 
            if 300 > !block.timestamp:
                revert with 0, 17
            mem[(2 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 101] = address(cd[(arg4 + 36)])
            if not arg2:
                mem[(2 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 133] = arg3
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[(arg4 + 36)]), arg3
                mem[(2 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if 1 == cd[(arg4 + 100)] % 16777216:
                    if 0 >= cd[(arg4 + cd[(arg4 + 132)] + 36)]:
                        revert with 0, 50
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 101] = mem[(2 * ceil32(return_data.size)) + 140 len 20]
                    require ext_code.size(address(cd[(arg4 + 36)]))
                    call address(cd[(arg4 + 36)]).exchange(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 101], address(ext_call.return_data[0]), address(ext_call.return_data[0]), arg3, cd[(arg4 + 68)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= cd[(arg4 + 68)]:
                        revert with 0, 'No profit'
                    if ext_call.return_data[0] < cd[(arg4 + 68)]:
                        revert with 0, 17
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, cd[(arg4 + 68)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor0, ext_call.return_data[0] - cd[(arg4 + 68)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 101] = arg3
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 133] = cd[(arg4 + 68)]
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 165] = 160
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 261] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 293
                    t = (2 * ceil32(return_data.size)) + 128
                    while idx < cd[(arg4 + cd[(arg4 + 132)] + 36)]:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 197] = this.address
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 229] = block.timestamp + 300
                    require ext_code.size(address(cd[(arg4 + 36)]))
                    call address(cd[(arg4 + 36)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, cd[(arg4 + 68)], Array(len=cd[(arg4 + cd[(arg4 + 132)] + 36)], data=mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 293 len 32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]]), address(this.address), block.timestamp + 300
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97
                    require return_data.size >= 32
                    _735 = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                    require (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + return_data.size + 97 > (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 128
                    _743 = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97]
                    if mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97]) + 98 > test266151307():
                        revert with 0, 65
                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97]) + 98
                    mem[(6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97] = _743
                    require _735 + (32 * _743) + 32 <= return_data.size
                    mem[(6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129 len ceil32(32 * _743)] = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + _735 + 129 len ceil32(32 * _743)]
                    if _743 < 1:
                        revert with 0, 17
                    if _743 - 1 >= _743:
                        revert with 0, 50
                    _895 = mem[(32 * _743 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129]
                    if mem[(32 * _743 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129] <= cd[(arg4 + 68)]:
                        revert with 0, 'No profit'
                    if mem[(32 * _743 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129] < cd[(arg4 + 68)]:
                        revert with 0, 17
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = cd[(arg4 + 68)]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, cd[(arg4 + 68)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _935 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_935] == bool(mem[_935])
                    mem[mem[64] + 4] = stor0
                    mem[mem[64] + 36] = _895 - cd[(arg4 + 68)]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor0, _895 - cd[(arg4 + 68)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _967 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_967] == bool(mem[_967])
            else:
                mem[(2 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 133] = arg2
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[(arg4 + 36)]), arg2
                mem[(2 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if 1 == cd[(arg4 + 100)] % 16777216:
                    if 0 >= cd[(arg4 + cd[(arg4 + 132)] + 36)]:
                        revert with 0, 50
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 101] = mem[(2 * ceil32(return_data.size)) + 140 len 20]
                    require ext_code.size(address(cd[(arg4 + 36)]))
                    call address(cd[(arg4 + 36)]).exchange(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 101], address(ext_call.return_data[0]), address(ext_call.return_data[0]), arg2, cd[(arg4 + 68)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= cd[(arg4 + 68)]:
                        revert with 0, 'No profit'
                    if ext_call.return_data[0] < cd[(arg4 + 68)]:
                        revert with 0, 17
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, cd[(arg4 + 68)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor0, ext_call.return_data[0] - cd[(arg4 + 68)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 101] = arg2
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 133] = cd[(arg4 + 68)]
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 165] = 160
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 261] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 293
                    t = (2 * ceil32(return_data.size)) + 128
                    while idx < cd[(arg4 + cd[(arg4 + 132)] + 36)]:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 197] = this.address
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 229] = block.timestamp + 300
                    require ext_code.size(address(cd[(arg4 + 36)]))
                    call address(cd[(arg4 + 36)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, cd[(arg4 + 68)], Array(len=cd[(arg4 + cd[(arg4 + 132)] + 36)], data=mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 293 len 32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]]), address(this.address), block.timestamp + 300
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97
                    require return_data.size >= 32
                    _736 = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                    require (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + return_data.size + 97 > (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 128
                    _744 = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97]
                    if mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97]) + 98 > test266151307():
                        revert with 0, 65
                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97]) + 98
                    mem[(6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97] = _744
                    require _736 + (32 * _744) + 32 <= return_data.size
                    mem[(6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129 len ceil32(32 * _744)] = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + _736 + 129 len ceil32(32 * _744)]
                    if _744 < 1:
                        revert with 0, 17
                    if _744 - 1 >= _744:
                        revert with 0, 50
                    _896 = mem[(32 * _744 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129]
                    if mem[(32 * _744 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129] <= cd[(arg4 + 68)]:
                        revert with 0, 'No profit'
                    if mem[(32 * _744 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129] < cd[(arg4 + 68)]:
                        revert with 0, 17
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = cd[(arg4 + 68)]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, cd[(arg4 + 68)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _936 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_936] == bool(mem[_936])
                    mem[mem[64] + 4] = stor0
                    mem[mem[64] + 36] = _896 - cd[(arg4 + 68)]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor0, _896 - cd[(arg4 + 68)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _968 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_968] == bool(mem[_968])
}

function pangolinCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    require ext_code.size(msg.sender)
    if not arg2:
        staticcall msg.sender.token1() with:
                gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(msg.sender)
        if not arg2:
            staticcall msg.sender.token0() with:
                    gas gas_remaining wei
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require arg4.length >= 128
            require cd[(arg4 + 36)] == address(cd[(arg4 + 36)])
            require cd[(arg4 + 100)] == cd[(arg4 + 100)] % 16777216
            require cd[(arg4 + 132)] <= test266151307()
            require arg4 + arg4.length + 36 > arg4 + cd[(arg4 + 132)] + 67
            if cd[(arg4 + cd[(arg4 + 132)] + 36)] > test266151307():
                revert with 0, 65
            if ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 < 96 or (2 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 > test266151307():
                revert with 0, 65
            mem[(2 * ceil32(return_data.size)) + 96] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
            require cd[(arg4 + 132)] + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 68 <= arg4.length + 36
            s = (2 * ceil32(return_data.size)) + 128
            idx = arg4 + cd[(arg4 + 132)] + 68
            while idx < arg4 + cd[(arg4 + 132)] + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 68:
                require cd[idx] == address(cd[idx])
                mem[s] = cd[idx]
                s = s + 32
                idx = idx + 32
                continue 
            if 300 > !block.timestamp:
                revert with 0, 17
            mem[(2 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 101] = address(cd[(arg4 + 36)])
            if not arg2:
                mem[(2 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 133] = arg3
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[(arg4 + 36)]), arg3
                mem[(2 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if 1 == cd[(arg4 + 100)] % 16777216:
                    if 0 >= cd[(arg4 + cd[(arg4 + 132)] + 36)]:
                        revert with 0, 50
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 101] = mem[(2 * ceil32(return_data.size)) + 140 len 20]
                    require ext_code.size(address(cd[(arg4 + 36)]))
                    call address(cd[(arg4 + 36)]).exchange(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 101], address(ext_call.return_data[0]), address(ext_call.return_data[0]), arg3, cd[(arg4 + 68)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= cd[(arg4 + 68)]:
                        revert with 0, 'No profit'
                    if ext_call.return_data[0] < cd[(arg4 + 68)]:
                        revert with 0, 17
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, cd[(arg4 + 68)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor0, ext_call.return_data[0] - cd[(arg4 + 68)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 101] = arg3
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 133] = cd[(arg4 + 68)]
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 165] = 160
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 261] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 293
                    t = (2 * ceil32(return_data.size)) + 128
                    while idx < cd[(arg4 + cd[(arg4 + 132)] + 36)]:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 197] = this.address
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 229] = block.timestamp + 300
                    require ext_code.size(address(cd[(arg4 + 36)]))
                    call address(cd[(arg4 + 36)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, cd[(arg4 + 68)], Array(len=cd[(arg4 + cd[(arg4 + 132)] + 36)], data=mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 293 len 32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]]), address(this.address), block.timestamp + 300
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97
                    require return_data.size >= 32
                    _729 = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                    require (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + return_data.size + 97 > (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 128
                    _737 = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97]
                    if mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97]) + 98 > test266151307():
                        revert with 0, 65
                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97]) + 98
                    mem[(6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97] = _737
                    require _729 + (32 * _737) + 32 <= return_data.size
                    mem[(6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129 len ceil32(32 * _737)] = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + _729 + 129 len ceil32(32 * _737)]
                    if _737 < 1:
                        revert with 0, 17
                    if _737 - 1 >= _737:
                        revert with 0, 50
                    _889 = mem[(32 * _737 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129]
                    if mem[(32 * _737 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129] <= cd[(arg4 + 68)]:
                        revert with 0, 'No profit'
                    if mem[(32 * _737 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129] < cd[(arg4 + 68)]:
                        revert with 0, 17
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = cd[(arg4 + 68)]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, cd[(arg4 + 68)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _929 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_929] == bool(mem[_929])
                    mem[mem[64] + 4] = stor0
                    mem[mem[64] + 36] = _889 - cd[(arg4 + 68)]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor0, _889 - cd[(arg4 + 68)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _961 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_961] == bool(mem[_961])
            else:
                mem[(2 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 133] = arg2
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[(arg4 + 36)]), arg2
                mem[(2 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if 1 == cd[(arg4 + 100)] % 16777216:
                    if 0 >= cd[(arg4 + cd[(arg4 + 132)] + 36)]:
                        revert with 0, 50
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 101] = mem[(2 * ceil32(return_data.size)) + 140 len 20]
                    require ext_code.size(address(cd[(arg4 + 36)]))
                    call address(cd[(arg4 + 36)]).exchange(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 101], address(ext_call.return_data[0]), address(ext_call.return_data[0]), arg2, cd[(arg4 + 68)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= cd[(arg4 + 68)]:
                        revert with 0, 'No profit'
                    if ext_call.return_data[0] < cd[(arg4 + 68)]:
                        revert with 0, 17
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, cd[(arg4 + 68)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor0, ext_call.return_data[0] - cd[(arg4 + 68)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 101] = arg2
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 133] = cd[(arg4 + 68)]
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 165] = 160
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 261] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 293
                    t = (2 * ceil32(return_data.size)) + 128
                    while idx < cd[(arg4 + cd[(arg4 + 132)] + 36)]:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 197] = this.address
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 229] = block.timestamp + 300
                    require ext_code.size(address(cd[(arg4 + 36)]))
                    call address(cd[(arg4 + 36)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, cd[(arg4 + 68)], Array(len=cd[(arg4 + cd[(arg4 + 132)] + 36)], data=mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 293 len 32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]]), address(this.address), block.timestamp + 300
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97
                    require return_data.size >= 32
                    _730 = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                    require (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + return_data.size + 97 > (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 128
                    _738 = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97]
                    if mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97]) + 98 > test266151307():
                        revert with 0, 65
                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97]) + 98
                    mem[(6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97] = _738
                    require _730 + (32 * _738) + 32 <= return_data.size
                    mem[(6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129 len ceil32(32 * _738)] = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + _730 + 129 len ceil32(32 * _738)]
                    if _738 < 1:
                        revert with 0, 17
                    if _738 - 1 >= _738:
                        revert with 0, 50
                    _890 = mem[(32 * _738 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129]
                    if mem[(32 * _738 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129] <= cd[(arg4 + 68)]:
                        revert with 0, 'No profit'
                    if mem[(32 * _738 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129] < cd[(arg4 + 68)]:
                        revert with 0, 17
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = cd[(arg4 + 68)]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, cd[(arg4 + 68)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _930 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_930] == bool(mem[_930])
                    mem[mem[64] + 4] = stor0
                    mem[mem[64] + 36] = _890 - cd[(arg4 + 68)]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor0, _890 - cd[(arg4 + 68)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _962 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_962] == bool(mem[_962])
        else:
            staticcall msg.sender.token1() with:
                    gas gas_remaining wei
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require arg4.length >= 128
            require cd[(arg4 + 36)] == address(cd[(arg4 + 36)])
            require cd[(arg4 + 100)] == cd[(arg4 + 100)] % 16777216
            require cd[(arg4 + 132)] <= test266151307()
            require arg4 + arg4.length + 36 > arg4 + cd[(arg4 + 132)] + 67
            if cd[(arg4 + cd[(arg4 + 132)] + 36)] > test266151307():
                revert with 0, 65
            if ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 < 96 or (2 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 > test266151307():
                revert with 0, 65
            mem[(2 * ceil32(return_data.size)) + 96] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
            require cd[(arg4 + 132)] + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 68 <= arg4.length + 36
            s = (2 * ceil32(return_data.size)) + 128
            idx = arg4 + cd[(arg4 + 132)] + 68
            while idx < arg4 + cd[(arg4 + 132)] + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 68:
                require cd[idx] == address(cd[idx])
                mem[s] = cd[idx]
                s = s + 32
                idx = idx + 32
                continue 
            if 300 > !block.timestamp:
                revert with 0, 17
            mem[(2 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 101] = address(cd[(arg4 + 36)])
            if not arg2:
                mem[(2 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 133] = arg3
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[(arg4 + 36)]), arg3
                mem[(2 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if 1 == cd[(arg4 + 100)] % 16777216:
                    if 0 >= cd[(arg4 + cd[(arg4 + 132)] + 36)]:
                        revert with 0, 50
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 101] = mem[(2 * ceil32(return_data.size)) + 140 len 20]
                    require ext_code.size(address(cd[(arg4 + 36)]))
                    call address(cd[(arg4 + 36)]).exchange(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 101], address(ext_call.return_data[0]), address(ext_call.return_data[0]), arg3, cd[(arg4 + 68)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= cd[(arg4 + 68)]:
                        revert with 0, 'No profit'
                    if ext_call.return_data[0] < cd[(arg4 + 68)]:
                        revert with 0, 17
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, cd[(arg4 + 68)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor0, ext_call.return_data[0] - cd[(arg4 + 68)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 101] = arg3
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 133] = cd[(arg4 + 68)]
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 165] = 160
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 261] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 293
                    t = (2 * ceil32(return_data.size)) + 128
                    while idx < cd[(arg4 + cd[(arg4 + 132)] + 36)]:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 197] = this.address
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 229] = block.timestamp + 300
                    require ext_code.size(address(cd[(arg4 + 36)]))
                    call address(cd[(arg4 + 36)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, cd[(arg4 + 68)], Array(len=cd[(arg4 + cd[(arg4 + 132)] + 36)], data=mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 293 len 32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]]), address(this.address), block.timestamp + 300
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97
                    require return_data.size >= 32
                    _731 = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                    require (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + return_data.size + 97 > (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 128
                    _739 = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97]
                    if mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97]) + 98 > test266151307():
                        revert with 0, 65
                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97]) + 98
                    mem[(6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97] = _739
                    require _731 + (32 * _739) + 32 <= return_data.size
                    mem[(6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129 len ceil32(32 * _739)] = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + _731 + 129 len ceil32(32 * _739)]
                    if _739 < 1:
                        revert with 0, 17
                    if _739 - 1 >= _739:
                        revert with 0, 50
                    _891 = mem[(32 * _739 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129]
                    if mem[(32 * _739 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129] <= cd[(arg4 + 68)]:
                        revert with 0, 'No profit'
                    if mem[(32 * _739 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129] < cd[(arg4 + 68)]:
                        revert with 0, 17
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = cd[(arg4 + 68)]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, cd[(arg4 + 68)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _931 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_931] == bool(mem[_931])
                    mem[mem[64] + 4] = stor0
                    mem[mem[64] + 36] = _891 - cd[(arg4 + 68)]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor0, _891 - cd[(arg4 + 68)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _963 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_963] == bool(mem[_963])
            else:
                mem[(2 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 133] = arg2
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[(arg4 + 36)]), arg2
                mem[(2 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if 1 == cd[(arg4 + 100)] % 16777216:
                    if 0 >= cd[(arg4 + cd[(arg4 + 132)] + 36)]:
                        revert with 0, 50
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 101] = mem[(2 * ceil32(return_data.size)) + 140 len 20]
                    require ext_code.size(address(cd[(arg4 + 36)]))
                    call address(cd[(arg4 + 36)]).exchange(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 101], address(ext_call.return_data[0]), address(ext_call.return_data[0]), arg2, cd[(arg4 + 68)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= cd[(arg4 + 68)]:
                        revert with 0, 'No profit'
                    if ext_call.return_data[0] < cd[(arg4 + 68)]:
                        revert with 0, 17
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, cd[(arg4 + 68)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor0, ext_call.return_data[0] - cd[(arg4 + 68)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 101] = arg2
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 133] = cd[(arg4 + 68)]
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 165] = 160
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 261] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 293
                    t = (2 * ceil32(return_data.size)) + 128
                    while idx < cd[(arg4 + cd[(arg4 + 132)] + 36)]:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 197] = this.address
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 229] = block.timestamp + 300
                    require ext_code.size(address(cd[(arg4 + 36)]))
                    call address(cd[(arg4 + 36)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, cd[(arg4 + 68)], Array(len=cd[(arg4 + cd[(arg4 + 132)] + 36)], data=mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 293 len 32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]]), address(this.address), block.timestamp + 300
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97
                    require return_data.size >= 32
                    _732 = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                    require (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + return_data.size + 97 > (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 128
                    _740 = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97]
                    if mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97]) + 98 > test266151307():
                        revert with 0, 65
                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97]) + 98
                    mem[(6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97] = _740
                    require _732 + (32 * _740) + 32 <= return_data.size
                    mem[(6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129 len ceil32(32 * _740)] = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + _732 + 129 len ceil32(32 * _740)]
                    if _740 < 1:
                        revert with 0, 17
                    if _740 - 1 >= _740:
                        revert with 0, 50
                    _892 = mem[(32 * _740 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129]
                    if mem[(32 * _740 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129] <= cd[(arg4 + 68)]:
                        revert with 0, 'No profit'
                    if mem[(32 * _740 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129] < cd[(arg4 + 68)]:
                        revert with 0, 17
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = cd[(arg4 + 68)]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, cd[(arg4 + 68)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _932 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_932] == bool(mem[_932])
                    mem[mem[64] + 4] = stor0
                    mem[mem[64] + 36] = _892 - cd[(arg4 + 68)]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor0, _892 - cd[(arg4 + 68)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _964 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_964] == bool(mem[_964])
    else:
        staticcall msg.sender.token0() with:
                gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(msg.sender)
        if not arg2:
            staticcall msg.sender.token0() with:
                    gas gas_remaining wei
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require arg4.length >= 128
            require cd[(arg4 + 36)] == address(cd[(arg4 + 36)])
            require cd[(arg4 + 100)] == cd[(arg4 + 100)] % 16777216
            require cd[(arg4 + 132)] <= test266151307()
            require arg4 + arg4.length + 36 > arg4 + cd[(arg4 + 132)] + 67
            if cd[(arg4 + cd[(arg4 + 132)] + 36)] > test266151307():
                revert with 0, 65
            if ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 < 96 or (2 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 > test266151307():
                revert with 0, 65
            mem[(2 * ceil32(return_data.size)) + 96] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
            require cd[(arg4 + 132)] + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 68 <= arg4.length + 36
            s = (2 * ceil32(return_data.size)) + 128
            idx = arg4 + cd[(arg4 + 132)] + 68
            while idx < arg4 + cd[(arg4 + 132)] + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 68:
                require cd[idx] == address(cd[idx])
                mem[s] = cd[idx]
                s = s + 32
                idx = idx + 32
                continue 
            if 300 > !block.timestamp:
                revert with 0, 17
            mem[(2 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 101] = address(cd[(arg4 + 36)])
            if not arg2:
                mem[(2 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 133] = arg3
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[(arg4 + 36)]), arg3
                mem[(2 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if 1 == cd[(arg4 + 100)] % 16777216:
                    if 0 >= cd[(arg4 + cd[(arg4 + 132)] + 36)]:
                        revert with 0, 50
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 101] = mem[(2 * ceil32(return_data.size)) + 140 len 20]
                    require ext_code.size(address(cd[(arg4 + 36)]))
                    call address(cd[(arg4 + 36)]).exchange(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 101], address(ext_call.return_data[0]), address(ext_call.return_data[0]), arg3, cd[(arg4 + 68)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= cd[(arg4 + 68)]:
                        revert with 0, 'No profit'
                    if ext_call.return_data[0] < cd[(arg4 + 68)]:
                        revert with 0, 17
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, cd[(arg4 + 68)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor0, ext_call.return_data[0] - cd[(arg4 + 68)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 101] = arg3
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 133] = cd[(arg4 + 68)]
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 165] = 160
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 261] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 293
                    t = (2 * ceil32(return_data.size)) + 128
                    while idx < cd[(arg4 + cd[(arg4 + 132)] + 36)]:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 197] = this.address
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 229] = block.timestamp + 300
                    require ext_code.size(address(cd[(arg4 + 36)]))
                    call address(cd[(arg4 + 36)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, cd[(arg4 + 68)], Array(len=cd[(arg4 + cd[(arg4 + 132)] + 36)], data=mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 293 len 32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]]), address(this.address), block.timestamp + 300
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97
                    require return_data.size >= 32
                    _733 = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                    require (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + return_data.size + 97 > (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 128
                    _741 = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97]
                    if mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97]) + 98 > test266151307():
                        revert with 0, 65
                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97]) + 98
                    mem[(6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97] = _741
                    require _733 + (32 * _741) + 32 <= return_data.size
                    mem[(6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129 len ceil32(32 * _741)] = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + _733 + 129 len ceil32(32 * _741)]
                    if _741 < 1:
                        revert with 0, 17
                    if _741 - 1 >= _741:
                        revert with 0, 50
                    _893 = mem[(32 * _741 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129]
                    if mem[(32 * _741 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129] <= cd[(arg4 + 68)]:
                        revert with 0, 'No profit'
                    if mem[(32 * _741 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129] < cd[(arg4 + 68)]:
                        revert with 0, 17
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = cd[(arg4 + 68)]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, cd[(arg4 + 68)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _933 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_933] == bool(mem[_933])
                    mem[mem[64] + 4] = stor0
                    mem[mem[64] + 36] = _893 - cd[(arg4 + 68)]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor0, _893 - cd[(arg4 + 68)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _965 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_965] == bool(mem[_965])
            else:
                mem[(2 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 133] = arg2
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[(arg4 + 36)]), arg2
                mem[(2 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if 1 == cd[(arg4 + 100)] % 16777216:
                    if 0 >= cd[(arg4 + cd[(arg4 + 132)] + 36)]:
                        revert with 0, 50
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 101] = mem[(2 * ceil32(return_data.size)) + 140 len 20]
                    require ext_code.size(address(cd[(arg4 + 36)]))
                    call address(cd[(arg4 + 36)]).exchange(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 101], address(ext_call.return_data[0]), address(ext_call.return_data[0]), arg2, cd[(arg4 + 68)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= cd[(arg4 + 68)]:
                        revert with 0, 'No profit'
                    if ext_call.return_data[0] < cd[(arg4 + 68)]:
                        revert with 0, 17
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, cd[(arg4 + 68)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor0, ext_call.return_data[0] - cd[(arg4 + 68)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 101] = arg2
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 133] = cd[(arg4 + 68)]
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 165] = 160
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 261] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 293
                    t = (2 * ceil32(return_data.size)) + 128
                    while idx < cd[(arg4 + cd[(arg4 + 132)] + 36)]:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 197] = this.address
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 229] = block.timestamp + 300
                    require ext_code.size(address(cd[(arg4 + 36)]))
                    call address(cd[(arg4 + 36)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, cd[(arg4 + 68)], Array(len=cd[(arg4 + cd[(arg4 + 132)] + 36)], data=mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 293 len 32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]]), address(this.address), block.timestamp + 300
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97
                    require return_data.size >= 32
                    _734 = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                    require (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + return_data.size + 97 > (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 128
                    _742 = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97]
                    if mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97]) + 98 > test266151307():
                        revert with 0, 65
                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97]) + 98
                    mem[(6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97] = _742
                    require _734 + (32 * _742) + 32 <= return_data.size
                    mem[(6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129 len ceil32(32 * _742)] = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + _734 + 129 len ceil32(32 * _742)]
                    if _742 < 1:
                        revert with 0, 17
                    if _742 - 1 >= _742:
                        revert with 0, 50
                    _894 = mem[(32 * _742 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129]
                    if mem[(32 * _742 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129] <= cd[(arg4 + 68)]:
                        revert with 0, 'No profit'
                    if mem[(32 * _742 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129] < cd[(arg4 + 68)]:
                        revert with 0, 17
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = cd[(arg4 + 68)]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, cd[(arg4 + 68)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _934 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_934] == bool(mem[_934])
                    mem[mem[64] + 4] = stor0
                    mem[mem[64] + 36] = _894 - cd[(arg4 + 68)]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor0, _894 - cd[(arg4 + 68)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _966 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_966] == bool(mem[_966])
        else:
            staticcall msg.sender.token1() with:
                    gas gas_remaining wei
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require arg4.length >= 128
            require cd[(arg4 + 36)] == address(cd[(arg4 + 36)])
            require cd[(arg4 + 100)] == cd[(arg4 + 100)] % 16777216
            require cd[(arg4 + 132)] <= test266151307()
            require arg4 + arg4.length + 36 > arg4 + cd[(arg4 + 132)] + 67
            if cd[(arg4 + cd[(arg4 + 132)] + 36)] > test266151307():
                revert with 0, 65
            if ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 < 96 or (2 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 > test266151307():
                revert with 0, 65
            mem[(2 * ceil32(return_data.size)) + 96] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
            require cd[(arg4 + 132)] + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 68 <= arg4.length + 36
            s = (2 * ceil32(return_data.size)) + 128
            idx = arg4 + cd[(arg4 + 132)] + 68
            while idx < arg4 + cd[(arg4 + 132)] + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 68:
                require cd[idx] == address(cd[idx])
                mem[s] = cd[idx]
                s = s + 32
                idx = idx + 32
                continue 
            if 300 > !block.timestamp:
                revert with 0, 17
            mem[(2 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 101] = address(cd[(arg4 + 36)])
            if not arg2:
                mem[(2 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 133] = arg3
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[(arg4 + 36)]), arg3
                mem[(2 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if 1 == cd[(arg4 + 100)] % 16777216:
                    if 0 >= cd[(arg4 + cd[(arg4 + 132)] + 36)]:
                        revert with 0, 50
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 101] = mem[(2 * ceil32(return_data.size)) + 140 len 20]
                    require ext_code.size(address(cd[(arg4 + 36)]))
                    call address(cd[(arg4 + 36)]).exchange(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 101], address(ext_call.return_data[0]), address(ext_call.return_data[0]), arg3, cd[(arg4 + 68)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= cd[(arg4 + 68)]:
                        revert with 0, 'No profit'
                    if ext_call.return_data[0] < cd[(arg4 + 68)]:
                        revert with 0, 17
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, cd[(arg4 + 68)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor0, ext_call.return_data[0] - cd[(arg4 + 68)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 101] = arg3
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 133] = cd[(arg4 + 68)]
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 165] = 160
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 261] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 293
                    t = (2 * ceil32(return_data.size)) + 128
                    while idx < cd[(arg4 + cd[(arg4 + 132)] + 36)]:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 197] = this.address
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 229] = block.timestamp + 300
                    require ext_code.size(address(cd[(arg4 + 36)]))
                    call address(cd[(arg4 + 36)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, cd[(arg4 + 68)], Array(len=cd[(arg4 + cd[(arg4 + 132)] + 36)], data=mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 293 len 32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]]), address(this.address), block.timestamp + 300
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97
                    require return_data.size >= 32
                    _735 = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                    require (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + return_data.size + 97 > (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 128
                    _743 = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97]
                    if mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97]) + 98 > test266151307():
                        revert with 0, 65
                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97]) + 98
                    mem[(6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97] = _743
                    require _735 + (32 * _743) + 32 <= return_data.size
                    mem[(6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129 len ceil32(32 * _743)] = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + _735 + 129 len ceil32(32 * _743)]
                    if _743 < 1:
                        revert with 0, 17
                    if _743 - 1 >= _743:
                        revert with 0, 50
                    _895 = mem[(32 * _743 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129]
                    if mem[(32 * _743 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129] <= cd[(arg4 + 68)]:
                        revert with 0, 'No profit'
                    if mem[(32 * _743 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129] < cd[(arg4 + 68)]:
                        revert with 0, 17
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = cd[(arg4 + 68)]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, cd[(arg4 + 68)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _935 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_935] == bool(mem[_935])
                    mem[mem[64] + 4] = stor0
                    mem[mem[64] + 36] = _895 - cd[(arg4 + 68)]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor0, _895 - cd[(arg4 + 68)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _967 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_967] == bool(mem[_967])
            else:
                mem[(2 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 133] = arg2
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[(arg4 + 36)]), arg2
                mem[(2 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if 1 == cd[(arg4 + 100)] % 16777216:
                    if 0 >= cd[(arg4 + cd[(arg4 + 132)] + 36)]:
                        revert with 0, 50
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 101] = mem[(2 * ceil32(return_data.size)) + 140 len 20]
                    require ext_code.size(address(cd[(arg4 + 36)]))
                    call address(cd[(arg4 + 36)]).exchange(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 101], address(ext_call.return_data[0]), address(ext_call.return_data[0]), arg2, cd[(arg4 + 68)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= cd[(arg4 + 68)]:
                        revert with 0, 'No profit'
                    if ext_call.return_data[0] < cd[(arg4 + 68)]:
                        revert with 0, 17
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, cd[(arg4 + 68)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor0, ext_call.return_data[0] - cd[(arg4 + 68)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 101] = arg2
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 133] = cd[(arg4 + 68)]
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 165] = 160
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 261] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 293
                    t = (2 * ceil32(return_data.size)) + 128
                    while idx < cd[(arg4 + cd[(arg4 + 132)] + 36)]:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 197] = this.address
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 229] = block.timestamp + 300
                    require ext_code.size(address(cd[(arg4 + 36)]))
                    call address(cd[(arg4 + 36)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, cd[(arg4 + 68)], Array(len=cd[(arg4 + cd[(arg4 + 132)] + 36)], data=mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 293 len 32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]]), address(this.address), block.timestamp + 300
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97
                    require return_data.size >= 32
                    _736 = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                    require (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + return_data.size + 97 > (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 128
                    _744 = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97]
                    if mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97]) + 98 > test266151307():
                        revert with 0, 65
                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97]) + 98
                    mem[(6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97] = _744
                    require _736 + (32 * _744) + 32 <= return_data.size
                    mem[(6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129 len ceil32(32 * _744)] = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + _736 + 129 len ceil32(32 * _744)]
                    if _744 < 1:
                        revert with 0, 17
                    if _744 - 1 >= _744:
                        revert with 0, 50
                    _896 = mem[(32 * _744 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129]
                    if mem[(32 * _744 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129] <= cd[(arg4 + 68)]:
                        revert with 0, 'No profit'
                    if mem[(32 * _744 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129] < cd[(arg4 + 68)]:
                        revert with 0, 17
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = cd[(arg4 + 68)]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, cd[(arg4 + 68)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _936 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_936] == bool(mem[_936])
                    mem[mem[64] + 4] = stor0
                    mem[mem[64] + 36] = _896 - cd[(arg4 + 68)]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor0, _896 - cd[(arg4 + 68)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _968 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_968] == bool(mem[_968])
}

function uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    require ext_code.size(msg.sender)
    if not arg2:
        staticcall msg.sender.token1() with:
                gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(msg.sender)
        if not arg2:
            staticcall msg.sender.token0() with:
                    gas gas_remaining wei
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require arg4.length >= 128
            require cd[(arg4 + 36)] == address(cd[(arg4 + 36)])
            require cd[(arg4 + 100)] == cd[(arg4 + 100)] % 16777216
            require cd[(arg4 + 132)] <= test266151307()
            require arg4 + arg4.length + 36 > arg4 + cd[(arg4 + 132)] + 67
            if cd[(arg4 + cd[(arg4 + 132)] + 36)] > test266151307():
                revert with 0, 65
            if ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 < 96 or (2 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 > test266151307():
                revert with 0, 65
            mem[(2 * ceil32(return_data.size)) + 96] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
            require cd[(arg4 + 132)] + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 68 <= arg4.length + 36
            s = (2 * ceil32(return_data.size)) + 128
            idx = arg4 + cd[(arg4 + 132)] + 68
            while idx < arg4 + cd[(arg4 + 132)] + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 68:
                require cd[idx] == address(cd[idx])
                mem[s] = cd[idx]
                s = s + 32
                idx = idx + 32
                continue 
            if 300 > !block.timestamp:
                revert with 0, 17
            mem[(2 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 101] = address(cd[(arg4 + 36)])
            if not arg2:
                mem[(2 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 133] = arg3
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[(arg4 + 36)]), arg3
                mem[(2 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if 1 == cd[(arg4 + 100)] % 16777216:
                    if 0 >= cd[(arg4 + cd[(arg4 + 132)] + 36)]:
                        revert with 0, 50
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 101] = mem[(2 * ceil32(return_data.size)) + 140 len 20]
                    require ext_code.size(address(cd[(arg4 + 36)]))
                    call address(cd[(arg4 + 36)]).exchange(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 101], address(ext_call.return_data[0]), address(ext_call.return_data[0]), arg3, cd[(arg4 + 68)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= cd[(arg4 + 68)]:
                        revert with 0, 'No profit'
                    if ext_call.return_data[0] < cd[(arg4 + 68)]:
                        revert with 0, 17
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, cd[(arg4 + 68)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor0, ext_call.return_data[0] - cd[(arg4 + 68)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 101] = arg3
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 133] = cd[(arg4 + 68)]
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 165] = 160
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 261] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 293
                    t = (2 * ceil32(return_data.size)) + 128
                    while idx < cd[(arg4 + cd[(arg4 + 132)] + 36)]:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 197] = this.address
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 229] = block.timestamp + 300
                    require ext_code.size(address(cd[(arg4 + 36)]))
                    call address(cd[(arg4 + 36)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, cd[(arg4 + 68)], Array(len=cd[(arg4 + cd[(arg4 + 132)] + 36)], data=mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 293 len 32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]]), address(this.address), block.timestamp + 300
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97
                    require return_data.size >= 32
                    _729 = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                    require (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + return_data.size + 97 > (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 128
                    _737 = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97]
                    if mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97]) + 98 > test266151307():
                        revert with 0, 65
                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97]) + 98
                    mem[(6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97] = _737
                    require _729 + (32 * _737) + 32 <= return_data.size
                    mem[(6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129 len ceil32(32 * _737)] = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + _729 + 129 len ceil32(32 * _737)]
                    if _737 < 1:
                        revert with 0, 17
                    if _737 - 1 >= _737:
                        revert with 0, 50
                    _889 = mem[(32 * _737 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129]
                    if mem[(32 * _737 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129] <= cd[(arg4 + 68)]:
                        revert with 0, 'No profit'
                    if mem[(32 * _737 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129] < cd[(arg4 + 68)]:
                        revert with 0, 17
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = cd[(arg4 + 68)]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, cd[(arg4 + 68)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _929 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_929] == bool(mem[_929])
                    mem[mem[64] + 4] = stor0
                    mem[mem[64] + 36] = _889 - cd[(arg4 + 68)]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor0, _889 - cd[(arg4 + 68)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _961 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_961] == bool(mem[_961])
            else:
                mem[(2 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 133] = arg2
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[(arg4 + 36)]), arg2
                mem[(2 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if 1 == cd[(arg4 + 100)] % 16777216:
                    if 0 >= cd[(arg4 + cd[(arg4 + 132)] + 36)]:
                        revert with 0, 50
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 101] = mem[(2 * ceil32(return_data.size)) + 140 len 20]
                    require ext_code.size(address(cd[(arg4 + 36)]))
                    call address(cd[(arg4 + 36)]).exchange(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 101], address(ext_call.return_data[0]), address(ext_call.return_data[0]), arg2, cd[(arg4 + 68)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= cd[(arg4 + 68)]:
                        revert with 0, 'No profit'
                    if ext_call.return_data[0] < cd[(arg4 + 68)]:
                        revert with 0, 17
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, cd[(arg4 + 68)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor0, ext_call.return_data[0] - cd[(arg4 + 68)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 101] = arg2
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 133] = cd[(arg4 + 68)]
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 165] = 160
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 261] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 293
                    t = (2 * ceil32(return_data.size)) + 128
                    while idx < cd[(arg4 + cd[(arg4 + 132)] + 36)]:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 197] = this.address
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 229] = block.timestamp + 300
                    require ext_code.size(address(cd[(arg4 + 36)]))
                    call address(cd[(arg4 + 36)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, cd[(arg4 + 68)], Array(len=cd[(arg4 + cd[(arg4 + 132)] + 36)], data=mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 293 len 32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]]), address(this.address), block.timestamp + 300
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97
                    require return_data.size >= 32
                    _730 = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                    require (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + return_data.size + 97 > (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 128
                    _738 = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97]
                    if mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97]) + 98 > test266151307():
                        revert with 0, 65
                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97]) + 98
                    mem[(6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97] = _738
                    require _730 + (32 * _738) + 32 <= return_data.size
                    mem[(6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129 len ceil32(32 * _738)] = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + _730 + 129 len ceil32(32 * _738)]
                    if _738 < 1:
                        revert with 0, 17
                    if _738 - 1 >= _738:
                        revert with 0, 50
                    _890 = mem[(32 * _738 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129]
                    if mem[(32 * _738 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129] <= cd[(arg4 + 68)]:
                        revert with 0, 'No profit'
                    if mem[(32 * _738 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129] < cd[(arg4 + 68)]:
                        revert with 0, 17
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = cd[(arg4 + 68)]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, cd[(arg4 + 68)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _930 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_930] == bool(mem[_930])
                    mem[mem[64] + 4] = stor0
                    mem[mem[64] + 36] = _890 - cd[(arg4 + 68)]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor0, _890 - cd[(arg4 + 68)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _962 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_962] == bool(mem[_962])
        else:
            staticcall msg.sender.token1() with:
                    gas gas_remaining wei
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require arg4.length >= 128
            require cd[(arg4 + 36)] == address(cd[(arg4 + 36)])
            require cd[(arg4 + 100)] == cd[(arg4 + 100)] % 16777216
            require cd[(arg4 + 132)] <= test266151307()
            require arg4 + arg4.length + 36 > arg4 + cd[(arg4 + 132)] + 67
            if cd[(arg4 + cd[(arg4 + 132)] + 36)] > test266151307():
                revert with 0, 65
            if ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 < 96 or (2 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 > test266151307():
                revert with 0, 65
            mem[(2 * ceil32(return_data.size)) + 96] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
            require cd[(arg4 + 132)] + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 68 <= arg4.length + 36
            s = (2 * ceil32(return_data.size)) + 128
            idx = arg4 + cd[(arg4 + 132)] + 68
            while idx < arg4 + cd[(arg4 + 132)] + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 68:
                require cd[idx] == address(cd[idx])
                mem[s] = cd[idx]
                s = s + 32
                idx = idx + 32
                continue 
            if 300 > !block.timestamp:
                revert with 0, 17
            mem[(2 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 101] = address(cd[(arg4 + 36)])
            if not arg2:
                mem[(2 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 133] = arg3
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[(arg4 + 36)]), arg3
                mem[(2 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if 1 == cd[(arg4 + 100)] % 16777216:
                    if 0 >= cd[(arg4 + cd[(arg4 + 132)] + 36)]:
                        revert with 0, 50
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 101] = mem[(2 * ceil32(return_data.size)) + 140 len 20]
                    require ext_code.size(address(cd[(arg4 + 36)]))
                    call address(cd[(arg4 + 36)]).exchange(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 101], address(ext_call.return_data[0]), address(ext_call.return_data[0]), arg3, cd[(arg4 + 68)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= cd[(arg4 + 68)]:
                        revert with 0, 'No profit'
                    if ext_call.return_data[0] < cd[(arg4 + 68)]:
                        revert with 0, 17
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, cd[(arg4 + 68)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor0, ext_call.return_data[0] - cd[(arg4 + 68)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 101] = arg3
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 133] = cd[(arg4 + 68)]
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 165] = 160
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 261] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 293
                    t = (2 * ceil32(return_data.size)) + 128
                    while idx < cd[(arg4 + cd[(arg4 + 132)] + 36)]:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 197] = this.address
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 229] = block.timestamp + 300
                    require ext_code.size(address(cd[(arg4 + 36)]))
                    call address(cd[(arg4 + 36)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, cd[(arg4 + 68)], Array(len=cd[(arg4 + cd[(arg4 + 132)] + 36)], data=mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 293 len 32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]]), address(this.address), block.timestamp + 300
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97
                    require return_data.size >= 32
                    _731 = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                    require (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + return_data.size + 97 > (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 128
                    _739 = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97]
                    if mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97]) + 98 > test266151307():
                        revert with 0, 65
                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97]) + 98
                    mem[(6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97] = _739
                    require _731 + (32 * _739) + 32 <= return_data.size
                    mem[(6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129 len ceil32(32 * _739)] = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + _731 + 129 len ceil32(32 * _739)]
                    if _739 < 1:
                        revert with 0, 17
                    if _739 - 1 >= _739:
                        revert with 0, 50
                    _891 = mem[(32 * _739 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129]
                    if mem[(32 * _739 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129] <= cd[(arg4 + 68)]:
                        revert with 0, 'No profit'
                    if mem[(32 * _739 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129] < cd[(arg4 + 68)]:
                        revert with 0, 17
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = cd[(arg4 + 68)]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, cd[(arg4 + 68)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _931 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_931] == bool(mem[_931])
                    mem[mem[64] + 4] = stor0
                    mem[mem[64] + 36] = _891 - cd[(arg4 + 68)]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor0, _891 - cd[(arg4 + 68)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _963 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_963] == bool(mem[_963])
            else:
                mem[(2 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 133] = arg2
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[(arg4 + 36)]), arg2
                mem[(2 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if 1 == cd[(arg4 + 100)] % 16777216:
                    if 0 >= cd[(arg4 + cd[(arg4 + 132)] + 36)]:
                        revert with 0, 50
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 101] = mem[(2 * ceil32(return_data.size)) + 140 len 20]
                    require ext_code.size(address(cd[(arg4 + 36)]))
                    call address(cd[(arg4 + 36)]).exchange(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 101], address(ext_call.return_data[0]), address(ext_call.return_data[0]), arg2, cd[(arg4 + 68)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= cd[(arg4 + 68)]:
                        revert with 0, 'No profit'
                    if ext_call.return_data[0] < cd[(arg4 + 68)]:
                        revert with 0, 17
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, cd[(arg4 + 68)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor0, ext_call.return_data[0] - cd[(arg4 + 68)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 101] = arg2
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 133] = cd[(arg4 + 68)]
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 165] = 160
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 261] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 293
                    t = (2 * ceil32(return_data.size)) + 128
                    while idx < cd[(arg4 + cd[(arg4 + 132)] + 36)]:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 197] = this.address
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 229] = block.timestamp + 300
                    require ext_code.size(address(cd[(arg4 + 36)]))
                    call address(cd[(arg4 + 36)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, cd[(arg4 + 68)], Array(len=cd[(arg4 + cd[(arg4 + 132)] + 36)], data=mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 293 len 32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]]), address(this.address), block.timestamp + 300
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97
                    require return_data.size >= 32
                    _732 = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                    require (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + return_data.size + 97 > (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 128
                    _740 = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97]
                    if mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97]) + 98 > test266151307():
                        revert with 0, 65
                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97]) + 98
                    mem[(6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97] = _740
                    require _732 + (32 * _740) + 32 <= return_data.size
                    mem[(6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129 len ceil32(32 * _740)] = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + _732 + 129 len ceil32(32 * _740)]
                    if _740 < 1:
                        revert with 0, 17
                    if _740 - 1 >= _740:
                        revert with 0, 50
                    _892 = mem[(32 * _740 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129]
                    if mem[(32 * _740 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129] <= cd[(arg4 + 68)]:
                        revert with 0, 'No profit'
                    if mem[(32 * _740 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129] < cd[(arg4 + 68)]:
                        revert with 0, 17
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = cd[(arg4 + 68)]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, cd[(arg4 + 68)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _932 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_932] == bool(mem[_932])
                    mem[mem[64] + 4] = stor0
                    mem[mem[64] + 36] = _892 - cd[(arg4 + 68)]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor0, _892 - cd[(arg4 + 68)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _964 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_964] == bool(mem[_964])
    else:
        staticcall msg.sender.token0() with:
                gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(msg.sender)
        if not arg2:
            staticcall msg.sender.token0() with:
                    gas gas_remaining wei
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require arg4.length >= 128
            require cd[(arg4 + 36)] == address(cd[(arg4 + 36)])
            require cd[(arg4 + 100)] == cd[(arg4 + 100)] % 16777216
            require cd[(arg4 + 132)] <= test266151307()
            require arg4 + arg4.length + 36 > arg4 + cd[(arg4 + 132)] + 67
            if cd[(arg4 + cd[(arg4 + 132)] + 36)] > test266151307():
                revert with 0, 65
            if ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 < 96 or (2 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 > test266151307():
                revert with 0, 65
            mem[(2 * ceil32(return_data.size)) + 96] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
            require cd[(arg4 + 132)] + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 68 <= arg4.length + 36
            s = (2 * ceil32(return_data.size)) + 128
            idx = arg4 + cd[(arg4 + 132)] + 68
            while idx < arg4 + cd[(arg4 + 132)] + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 68:
                require cd[idx] == address(cd[idx])
                mem[s] = cd[idx]
                s = s + 32
                idx = idx + 32
                continue 
            if 300 > !block.timestamp:
                revert with 0, 17
            mem[(2 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 101] = address(cd[(arg4 + 36)])
            if not arg2:
                mem[(2 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 133] = arg3
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[(arg4 + 36)]), arg3
                mem[(2 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if 1 == cd[(arg4 + 100)] % 16777216:
                    if 0 >= cd[(arg4 + cd[(arg4 + 132)] + 36)]:
                        revert with 0, 50
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 101] = mem[(2 * ceil32(return_data.size)) + 140 len 20]
                    require ext_code.size(address(cd[(arg4 + 36)]))
                    call address(cd[(arg4 + 36)]).exchange(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 101], address(ext_call.return_data[0]), address(ext_call.return_data[0]), arg3, cd[(arg4 + 68)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= cd[(arg4 + 68)]:
                        revert with 0, 'No profit'
                    if ext_call.return_data[0] < cd[(arg4 + 68)]:
                        revert with 0, 17
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, cd[(arg4 + 68)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor0, ext_call.return_data[0] - cd[(arg4 + 68)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 101] = arg3
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 133] = cd[(arg4 + 68)]
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 165] = 160
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 261] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 293
                    t = (2 * ceil32(return_data.size)) + 128
                    while idx < cd[(arg4 + cd[(arg4 + 132)] + 36)]:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 197] = this.address
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 229] = block.timestamp + 300
                    require ext_code.size(address(cd[(arg4 + 36)]))
                    call address(cd[(arg4 + 36)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, cd[(arg4 + 68)], Array(len=cd[(arg4 + cd[(arg4 + 132)] + 36)], data=mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 293 len 32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]]), address(this.address), block.timestamp + 300
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97
                    require return_data.size >= 32
                    _733 = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                    require (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + return_data.size + 97 > (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 128
                    _741 = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97]
                    if mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97]) + 98 > test266151307():
                        revert with 0, 65
                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97]) + 98
                    mem[(6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97] = _741
                    require _733 + (32 * _741) + 32 <= return_data.size
                    mem[(6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129 len ceil32(32 * _741)] = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + _733 + 129 len ceil32(32 * _741)]
                    if _741 < 1:
                        revert with 0, 17
                    if _741 - 1 >= _741:
                        revert with 0, 50
                    _893 = mem[(32 * _741 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129]
                    if mem[(32 * _741 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129] <= cd[(arg4 + 68)]:
                        revert with 0, 'No profit'
                    if mem[(32 * _741 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129] < cd[(arg4 + 68)]:
                        revert with 0, 17
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = cd[(arg4 + 68)]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, cd[(arg4 + 68)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _933 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_933] == bool(mem[_933])
                    mem[mem[64] + 4] = stor0
                    mem[mem[64] + 36] = _893 - cd[(arg4 + 68)]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor0, _893 - cd[(arg4 + 68)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _965 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_965] == bool(mem[_965])
            else:
                mem[(2 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 133] = arg2
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[(arg4 + 36)]), arg2
                mem[(2 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if 1 == cd[(arg4 + 100)] % 16777216:
                    if 0 >= cd[(arg4 + cd[(arg4 + 132)] + 36)]:
                        revert with 0, 50
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 101] = mem[(2 * ceil32(return_data.size)) + 140 len 20]
                    require ext_code.size(address(cd[(arg4 + 36)]))
                    call address(cd[(arg4 + 36)]).exchange(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 101], address(ext_call.return_data[0]), address(ext_call.return_data[0]), arg2, cd[(arg4 + 68)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= cd[(arg4 + 68)]:
                        revert with 0, 'No profit'
                    if ext_call.return_data[0] < cd[(arg4 + 68)]:
                        revert with 0, 17
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, cd[(arg4 + 68)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor0, ext_call.return_data[0] - cd[(arg4 + 68)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 101] = arg2
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 133] = cd[(arg4 + 68)]
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 165] = 160
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 261] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 293
                    t = (2 * ceil32(return_data.size)) + 128
                    while idx < cd[(arg4 + cd[(arg4 + 132)] + 36)]:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 197] = this.address
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 229] = block.timestamp + 300
                    require ext_code.size(address(cd[(arg4 + 36)]))
                    call address(cd[(arg4 + 36)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, cd[(arg4 + 68)], Array(len=cd[(arg4 + cd[(arg4 + 132)] + 36)], data=mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 293 len 32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]]), address(this.address), block.timestamp + 300
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97
                    require return_data.size >= 32
                    _734 = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                    require (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + return_data.size + 97 > (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 128
                    _742 = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97]
                    if mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97]) + 98 > test266151307():
                        revert with 0, 65
                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97]) + 98
                    mem[(6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97] = _742
                    require _734 + (32 * _742) + 32 <= return_data.size
                    mem[(6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129 len ceil32(32 * _742)] = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + _734 + 129 len ceil32(32 * _742)]
                    if _742 < 1:
                        revert with 0, 17
                    if _742 - 1 >= _742:
                        revert with 0, 50
                    _894 = mem[(32 * _742 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129]
                    if mem[(32 * _742 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129] <= cd[(arg4 + 68)]:
                        revert with 0, 'No profit'
                    if mem[(32 * _742 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129] < cd[(arg4 + 68)]:
                        revert with 0, 17
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = cd[(arg4 + 68)]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, cd[(arg4 + 68)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _934 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_934] == bool(mem[_934])
                    mem[mem[64] + 4] = stor0
                    mem[mem[64] + 36] = _894 - cd[(arg4 + 68)]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor0, _894 - cd[(arg4 + 68)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _966 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_966] == bool(mem[_966])
        else:
            staticcall msg.sender.token1() with:
                    gas gas_remaining wei
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require arg4.length >= 128
            require cd[(arg4 + 36)] == address(cd[(arg4 + 36)])
            require cd[(arg4 + 100)] == cd[(arg4 + 100)] % 16777216
            require cd[(arg4 + 132)] <= test266151307()
            require arg4 + arg4.length + 36 > arg4 + cd[(arg4 + 132)] + 67
            if cd[(arg4 + cd[(arg4 + 132)] + 36)] > test266151307():
                revert with 0, 65
            if ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 < 96 or (2 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 > test266151307():
                revert with 0, 65
            mem[(2 * ceil32(return_data.size)) + 96] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
            require cd[(arg4 + 132)] + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 68 <= arg4.length + 36
            s = (2 * ceil32(return_data.size)) + 128
            idx = arg4 + cd[(arg4 + 132)] + 68
            while idx < arg4 + cd[(arg4 + 132)] + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 68:
                require cd[idx] == address(cd[idx])
                mem[s] = cd[idx]
                s = s + 32
                idx = idx + 32
                continue 
            if 300 > !block.timestamp:
                revert with 0, 17
            mem[(2 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 101] = address(cd[(arg4 + 36)])
            if not arg2:
                mem[(2 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 133] = arg3
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[(arg4 + 36)]), arg3
                mem[(2 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if 1 == cd[(arg4 + 100)] % 16777216:
                    if 0 >= cd[(arg4 + cd[(arg4 + 132)] + 36)]:
                        revert with 0, 50
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 101] = mem[(2 * ceil32(return_data.size)) + 140 len 20]
                    require ext_code.size(address(cd[(arg4 + 36)]))
                    call address(cd[(arg4 + 36)]).exchange(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 101], address(ext_call.return_data[0]), address(ext_call.return_data[0]), arg3, cd[(arg4 + 68)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= cd[(arg4 + 68)]:
                        revert with 0, 'No profit'
                    if ext_call.return_data[0] < cd[(arg4 + 68)]:
                        revert with 0, 17
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, cd[(arg4 + 68)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor0, ext_call.return_data[0] - cd[(arg4 + 68)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 101] = arg3
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 133] = cd[(arg4 + 68)]
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 165] = 160
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 261] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 293
                    t = (2 * ceil32(return_data.size)) + 128
                    while idx < cd[(arg4 + cd[(arg4 + 132)] + 36)]:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 197] = this.address
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 229] = block.timestamp + 300
                    require ext_code.size(address(cd[(arg4 + 36)]))
                    call address(cd[(arg4 + 36)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, cd[(arg4 + 68)], Array(len=cd[(arg4 + cd[(arg4 + 132)] + 36)], data=mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 293 len 32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]]), address(this.address), block.timestamp + 300
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97
                    require return_data.size >= 32
                    _735 = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32
                    require mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                    require (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + return_data.size + 97 > (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 128
                    _743 = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97]
                    if mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97]) + 98 > test266151307():
                        revert with 0, 65
                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97]) + 98
                    mem[(6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97] = _743
                    require _735 + (32 * _743) + 32 <= return_data.size
                    mem[(6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129 len ceil32(32 * _743)] = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + _735 + 129 len ceil32(32 * _743)]
                    if _743 < 1:
                        revert with 0, 17
                    if _743 - 1 >= _743:
                        revert with 0, 50
                    _895 = mem[(32 * _743 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129]
                    if mem[(32 * _743 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129] <= cd[(arg4 + 68)]:
                        revert with 0, 'No profit'
                    if mem[(32 * _743 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129] < cd[(arg4 + 68)]:
                        revert with 0, 17
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = cd[(arg4 + 68)]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, cd[(arg4 + 68)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _935 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_935] == bool(mem[_935])
                    mem[mem[64] + 4] = stor0
                    mem[mem[64] + 36] = _895 - cd[(arg4 + 68)]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor0, _895 - cd[(arg4 + 68)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _967 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_967] == bool(mem[_967])
            else:
                mem[(2 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 133] = arg2
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[(arg4 + 36)]), arg2
                mem[(2 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if 1 == cd[(arg4 + 100)] % 16777216:
                    if 0 >= cd[(arg4 + cd[(arg4 + 132)] + 36)]:
                        revert with 0, 50
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 101] = mem[(2 * ceil32(return_data.size)) + 140 len 20]
                    require ext_code.size(address(cd[(arg4 + 36)]))
                    call address(cd[(arg4 + 36)]).exchange(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 101], address(ext_call.return_data[0]), address(ext_call.return_data[0]), arg2, cd[(arg4 + 68)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= cd[(arg4 + 68)]:
                        revert with 0, 'No profit'
                    if ext_call.return_data[0] < cd[(arg4 + 68)]:
                        revert with 0, 17
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, cd[(arg4 + 68)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor0, ext_call.return_data[0] - cd[(arg4 + 68)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 101] = arg2
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 133] = cd[(arg4 + 68)]
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 165] = 160
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 261] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 293
                    t = (2 * ceil32(return_data.size)) + 128
                    while idx < cd[(arg4 + cd[(arg4 + 132)] + 36)]:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 197] = this.address
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 229] = block.timestamp + 300
                    require ext_code.size(address(cd[(arg4 + 36)]))
                    call address(cd[(arg4 + 36)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, cd[(arg4 + 68)], Array(len=cd[(arg4 + cd[(arg4 + 132)] + 36)], data=mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 293 len 32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]]), address(this.address), block.timestamp + 300
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97
                    require return_data.size >= 32
                    _736 = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32
                    require mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                    require (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + return_data.size + 97 > (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 128
                    _744 = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97]
                    if mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97]) + 98 > test266151307():
                        revert with 0, 65
                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97]) + 98
                    mem[(6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97] = _744
                    require _736 + (32 * _744) + 32 <= return_data.size
                    mem[(6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129 len ceil32(32 * _744)] = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + _736 + 129 len ceil32(32 * _744)]
                    if _744 < 1:
                        revert with 0, 17
                    if _744 - 1 >= _744:
                        revert with 0, 50
                    _896 = mem[(32 * _744 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129]
                    if mem[(32 * _744 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129] <= cd[(arg4 + 68)]:
                        revert with 0, 'No profit'
                    if mem[(32 * _744 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129] < cd[(arg4 + 68)]:
                        revert with 0, 17
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = cd[(arg4 + 68)]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, cd[(arg4 + 68)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _936 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_936] == bool(mem[_936])
                    mem[mem[64] + 4] = stor0
                    mem[mem[64] + 36] = _896 - cd[(arg4 + 68)]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor0, _896 - cd[(arg4 + 68)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _968 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_968] == bool(mem[_968])
}

function sub_67da96fe(?) payable {
    require calldata.size - 4 >= 224
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require cd[68] == address(cd[68])
    require cd[132] == address(cd[132])
    require cd[164] == cd[164] % 16777216
    require cd[196] <= test266151307()
    require cd[196] + 35 < calldata.size
    require ('cd', 196).length <= test266151307()
    require cd[196] + (32 * ('cd', 196).length) + 36 <= calldata.size
    if stor0 != msg.sender:
        revert with 0, 'Owner only'
    else:
        if address(cd[36]) == address(cd[68]):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UniswapV2Library: IDENTICAL_ADDRESSES'
        else:
            if address(cd[36]) < address(cd[68]):
                if not address(cd[36]):
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                else:
                    if address(cd[36]) == address(cd[36]):
                        mem[96] = 2
                        mem[128] = address(cd[36])
                        mem[160] = address(cd[68])
                        mem[192] = 2
                        mem[64] = 288
                        mem[224 len 64] = call.data[calldata.size len 64]
                        mem[256] = cd[100]
                        idx = mem[96] - 1
                        while idx:
                            if idx < 1:
                                revert with 0, 17
                            else:
                                if idx - 1 >= mem[96]:
                                    revert with 0, 50
                                else:
                                    _1171 = mem[(32 * idx - 1) + 128]
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    else:
                                        _1186 = mem[(32 * idx) + 128]
                                        if mem[(32 * idx - 1) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                                            revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                                        else:
                                            if mem[(32 * idx - 1) + 140 len 20] < mem[(32 * idx) + 140 len 20]:
                                                if not mem[(32 * idx - 1) + 140 len 20]:
                                                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                                                else:
                                                    require ext_code.size(address(cd[4]))
                                                    staticcall address(cd[4]).getReserves() with:
                                                            gas gas_remaining wei
                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        _1315 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 96
                                                        require mem[_1315] == mem[_1315 + 18 len 14]
                                                        require mem[_1315 + 32] == mem[_1315 + 50 len 14]
                                                        require mem[_1315 + 64] == mem[_1315 + 92 len 4]
                                                        if address(_1171) == address(_1171):
                                                            if idx >= mem[192]:
                                                                revert with 0, 50
                                                            else:
                                                                if mem[(32 * idx) + 224] <= 0:
                                                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_OUTPUT_AMOUNT'
                                                                else:
                                                                    if mem[_1315 + 18 len 14] <= 0:
                                                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                                                    else:
                                                                        if mem[_1315 + 50 len 14] <= 0:
                                                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                                                        else:
                                                                            if not mem[(32 * idx) + 224]:
                                                                                if mem[_1315 + 50 len 14] < mem[(32 * idx) + 224]:
                                                                                    revert with 0, 17
                                                                                else:
                                                                                    if mem[_1315 + 50 len 14] - mem[(32 * idx) + 224] > mem[_1315 + 50 len 14]:
                                                                                        revert with 0, 'ds-math-sub-underflow'
                                                                                    else:
                                                                                        if mem[_1315 + 50 len 14] - mem[(32 * idx) + 224] and 997 > -1 / mem[_1315 + 50 len 14] - mem[(32 * idx) + 224]:
                                                                                            revert with 0, 17
                                                                                        else:
                                                                                            if (997 * mem[_1315 + 50 len 14]) - (997 * mem[(32 * idx) + 224]) / 997 != mem[_1315 + 50 len 14] - mem[(32 * idx) + 224]:
                                                                                                revert with 0, 'ds-math-mul-overflow'
                                                                                            else:
                                                                                                if not (997 * mem[_1315 + 50 len 14]) - (997 * mem[(32 * idx) + 224]):
                                                                                                    revert with 0, 18
                                                                                                else:
                                                                                                    if 0 / (997 * mem[_1315 + 50 len 14]) - (997 * mem[(32 * idx) + 224]) > -2:
                                                                                                        revert with 0, 17
                                                                                                    else:
                                                                                                        if (0 / (997 * mem[_1315 + 50 len 14]) - (997 * mem[(32 * idx) + 224])) + 1 < 0 / (997 * mem[_1315 + 50 len 14]) - (997 * mem[(32 * idx) + 224]):
                                                                                                            revert with 0, 'ds-math-add-overflow'
                                                                                                        else:
                                                                                                            if idx < 1:
                                                                                                                revert with 0, 17
                                                                                                            else:
                                                                                                                if idx - 1 >= mem[192]:
                                                                                                                    revert with 0, 50
                                                                                                                else:
                                                                                                                    mem[(32 * idx - 1) + 224] = (0 / (997 * mem[_1315 + 50 len 14]) - (997 * mem[(32 * idx) + 224])) + 1
                                                                                                                    if not idx:
                                                                                                                        revert with 0, 17
                                                                                                                    else:
                                                                                                                        idx = idx - 1
                                                                                                                        continue 
                                                                            else:
                                                                                if mem[_1315 + 18 len 14] and mem[(32 * idx) + 224] > -1 / mem[_1315 + 18 len 14]:
                                                                                    revert with 0, 17
                                                                                else:
                                                                                    if not mem[(32 * idx) + 224]:
                                                                                        revert with 0, 18
                                                                                    else:
                                                                                        if mem[_1315 + 18 len 14] * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != mem[_1315 + 18 len 14]:
                                                                                            revert with 0, 'ds-math-mul-overflow'
                                                                                        else:
                                                                                            if mem[_1315 + 18 len 14] * mem[(32 * idx) + 224] and 1000 > -1 / mem[_1315 + 18 len 14] * mem[(32 * idx) + 224]:
                                                                                                revert with 0, 17
                                                                                            else:
                                                                                                if 1000 * mem[_1315 + 18 len 14] * mem[(32 * idx) + 224] / 1000 != mem[_1315 + 18 len 14] * mem[(32 * idx) + 224]:
                                                                                                    revert with 0, 'ds-math-mul-overflow'
                                                                                                else:
                                                                                                    if mem[_1315 + 50 len 14] < mem[(32 * idx) + 224]:
                                                                                                        revert with 0, 17
                                                                                                    else:
                                                                                                        if mem[_1315 + 50 len 14] - mem[(32 * idx) + 224] > mem[_1315 + 50 len 14]:
                                                                                                            revert with 0, 'ds-math-sub-underflow'
                                                                                                        else:
                                                                                                            if mem[_1315 + 50 len 14] - mem[(32 * idx) + 224] and 997 > -1 / mem[_1315 + 50 len 14] - mem[(32 * idx) + 224]:
                                                                                                                revert with 0, 17
                                                                                                            else:
                                                                                                                if (997 * mem[_1315 + 50 len 14]) - (997 * mem[(32 * idx) + 224]) / 997 != mem[_1315 + 50 len 14] - mem[(32 * idx) + 224]:
                                                                                                                    revert with 0, 'ds-math-mul-overflow'
                                                                                                                else:
                                                                                                                    if not (997 * mem[_1315 + 50 len 14]) - (997 * mem[(32 * idx) + 224]):
                                                                                                                        revert with 0, 18
                                                                                                                    else:
                                                                                                                        if 1000 * mem[_1315 + 18 len 14] * mem[(32 * idx) + 224] / (997 * mem[_1315 + 50 len 14]) - (997 * mem[(32 * idx) + 224]) > -2:
                                                                                                                            revert with 0, 17
                                                                                                                        else:
                                                                                                                            if (1000 * mem[_1315 + 18 len 14] * mem[(32 * idx) + 224] / (997 * mem[_1315 + 50 len 14]) - (997 * mem[(32 * idx) + 224])) + 1 < 1000 * mem[_1315 + 18 len 14] * mem[(32 * idx) + 224] / (997 * mem[_1315 + 50 len 14]) - (997 * mem[(32 * idx) + 224]):
                                                                                                                                revert with 0, 'ds-math-add-overflow'
                                                                                                                            else:
                                                                                                                                if idx < 1:
                                                                                                                                    revert with 0, 17
                                                                                                                                else:
                                                                                                                                    if idx - 1 >= mem[192]:
                                                                                                                                        revert with 0, 50
                                                                                                                                    else:
                                                                                                                                        mem[(32 * idx - 1) + 224] = (1000 * mem[_1315 + 18 len 14] * mem[(32 * idx) + 224] / (997 * mem[_1315 + 50 len 14]) - (997 * mem[(32 * idx) + 224])) + 1
                                                                                                                                        if not idx:
                                                                                                                                            revert with 0, 17
                                                                                                                                        else:
                                                                                                                                            idx = idx - 1
                                                                                                                                            continue 
                                                        else:
                                                            if idx >= mem[192]:
                                                                revert with 0, 50
                                                            else:
                                                                if mem[(32 * idx) + 224] <= 0:
                                                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_OUTPUT_AMOUNT'
                                                                else:
                                                                    if mem[_1315 + 50 len 14] <= 0:
                                                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                                                    else:
                                                                        if mem[_1315 + 18 len 14] <= 0:
                                                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                                                        else:
                                                                            if not mem[(32 * idx) + 224]:
                                                                                if mem[_1315 + 18 len 14] < mem[(32 * idx) + 224]:
                                                                                    revert with 0, 17
                                                                                else:
                                                                                    if mem[_1315 + 18 len 14] - mem[(32 * idx) + 224] > mem[_1315 + 18 len 14]:
                                                                                        revert with 0, 'ds-math-sub-underflow'
                                                                                    else:
                                                                                        if mem[_1315 + 18 len 14] - mem[(32 * idx) + 224] and 997 > -1 / mem[_1315 + 18 len 14] - mem[(32 * idx) + 224]:
                                                                                            revert with 0, 17
                                                                                        else:
                                                                                            if (997 * mem[_1315 + 18 len 14]) - (997 * mem[(32 * idx) + 224]) / 997 != mem[_1315 + 18 len 14] - mem[(32 * idx) + 224]:
                                                                                                revert with 0, 'ds-math-mul-overflow'
                                                                                            else:
                                                                                                if not (997 * mem[_1315 + 18 len 14]) - (997 * mem[(32 * idx) + 224]):
                                                                                                    revert with 0, 18
                                                                                                else:
                                                                                                    if 0 / (997 * mem[_1315 + 18 len 14]) - (997 * mem[(32 * idx) + 224]) > -2:
                                                                                                        revert with 0, 17
                                                                                                    else:
                                                                                                        if (0 / (997 * mem[_1315 + 18 len 14]) - (997 * mem[(32 * idx) + 224])) + 1 < 0 / (997 * mem[_1315 + 18 len 14]) - (997 * mem[(32 * idx) + 224]):
                                                                                                            revert with 0, 'ds-math-add-overflow'
                                                                                                        else:
                                                                                                            if idx < 1:
                                                                                                                revert with 0, 17
                                                                                                            else:
                                                                                                                if idx - 1 >= mem[192]:
                                                                                                                    revert with 0, 50
                                                                                                                else:
                                                                                                                    mem[(32 * idx - 1) + 224] = (0 / (997 * mem[_1315 + 18 len 14]) - (997 * mem[(32 * idx) + 224])) + 1
                                                                                                                    if not idx:
                                                                                                                        revert with 0, 17
                                                                                                                    else:
                                                                                                                        idx = idx - 1
                                                                                                                        continue 
                                                                            else:
                                                                                if mem[_1315 + 50 len 14] and mem[(32 * idx) + 224] > -1 / mem[_1315 + 50 len 14]:
                                                                                    revert with 0, 17
                                                                                else:
                                                                                    if not mem[(32 * idx) + 224]:
                                                                                        revert with 0, 18
                                                                                    else:
                                                                                        if mem[_1315 + 50 len 14] * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != mem[_1315 + 50 len 14]:
                                                                                            revert with 0, 'ds-math-mul-overflow'
                                                                                        else:
                                                                                            if mem[_1315 + 50 len 14] * mem[(32 * idx) + 224] and 1000 > -1 / mem[_1315 + 50 len 14] * mem[(32 * idx) + 224]:
                                                                                                revert with 0, 17
                                                                                            else:
                                                                                                if 1000 * mem[_1315 + 50 len 14] * mem[(32 * idx) + 224] / 1000 != mem[_1315 + 50 len 14] * mem[(32 * idx) + 224]:
                                                                                                    revert with 0, 'ds-math-mul-overflow'
                                                                                                else:
                                                                                                    if mem[_1315 + 18 len 14] < mem[(32 * idx) + 224]:
                                                                                                        revert with 0, 17
                                                                                                    else:
                                                                                                        if mem[_1315 + 18 len 14] - mem[(32 * idx) + 224] > mem[_1315 + 18 len 14]:
                                                                                                            revert with 0, 'ds-math-sub-underflow'
                                                                                                        else:
                                                                                                            if mem[_1315 + 18 len 14] - mem[(32 * idx) + 224] and 997 > -1 / mem[_1315 + 18 len 14] - mem[(32 * idx) + 224]:
                                                                                                                revert with 0, 17
                                                                                                            else:
                                                                                                                if (997 * mem[_1315 + 18 len 14]) - (997 * mem[(32 * idx) + 224]) / 997 != mem[_1315 + 18 len 14] - mem[(32 * idx) + 224]:
                                                                                                                    revert with 0, 'ds-math-mul-overflow'
                                                                                                                else:
                                                                                                                    if not (997 * mem[_1315 + 18 len 14]) - (997 * mem[(32 * idx) + 224]):
                                                                                                                        revert with 0, 18
                                                                                                                    else:
                                                                                                                        if 1000 * mem[_1315 + 50 len 14] * mem[(32 * idx) + 224] / (997 * mem[_1315 + 18 len 14]) - (997 * mem[(32 * idx) + 224]) > -2:
                                                                                                                            revert with 0, 17
                                                                                                                        else:
                                                                                                                            if (1000 * mem[_1315 + 50 len 14] * mem[(32 * idx) + 224] / (997 * mem[_1315 + 18 len 14]) - (997 * mem[(32 * idx) + 224])) + 1 < 1000 * mem[_1315 + 50 len 14] * mem[(32 * idx) + 224] / (997 * mem[_1315 + 18 len 14]) - (997 * mem[(32 * idx) + 224]):
                                                                                                                                revert with 0, 'ds-math-add-overflow'
                                                                                                                            else:
                                                                                                                                if idx < 1:
                                                                                                                                    revert with 0, 17
                                                                                                                                else:
                                                                                                                                    if idx - 1 >= mem[192]:
                                                                                                                                        revert with 0, 50
                                                                                                                                    else:
                                                                                                                                        mem[(32 * idx - 1) + 224] = (1000 * mem[_1315 + 50 len 14] * mem[(32 * idx) + 224] / (997 * mem[_1315 + 18 len 14]) - (997 * mem[(32 * idx) + 224])) + 1
                                                                                                                                        if not idx:
                                                                                                                                            revert with 0, 17
                                                                                                                                        else:
                                                                                                                                            idx = idx - 1
                                                                                                                                            continue 
                                            else:
                                                if not mem[(32 * idx) + 140 len 20]:
                                                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                                                else:
                                                    require ext_code.size(address(cd[4]))
                                                    staticcall address(cd[4]).getReserves() with:
                                                            gas gas_remaining wei
                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        _1316 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 96
                                                        require mem[_1316] == mem[_1316 + 18 len 14]
                                                        require mem[_1316 + 32] == mem[_1316 + 50 len 14]
                                                        require mem[_1316 + 64] == mem[_1316 + 92 len 4]
                                                        if address(_1171) == address(_1186):
                                                            if idx >= mem[192]:
                                                                revert with 0, 50
                                                            else:
                                                                if mem[(32 * idx) + 224] <= 0:
                                                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_OUTPUT_AMOUNT'
                                                                else:
                                                                    if mem[_1316 + 18 len 14] <= 0:
                                                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                                                    else:
                                                                        if mem[_1316 + 50 len 14] <= 0:
                                                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                                                        else:
                                                                            if not mem[(32 * idx) + 224]:
                                                                                if mem[_1316 + 50 len 14] < mem[(32 * idx) + 224]:
                                                                                    revert with 0, 17
                                                                                else:
                                                                                    if mem[_1316 + 50 len 14] - mem[(32 * idx) + 224] > mem[_1316 + 50 len 14]:
                                                                                        revert with 0, 'ds-math-sub-underflow'
                                                                                    else:
                                                                                        if mem[_1316 + 50 len 14] - mem[(32 * idx) + 224] and 997 > -1 / mem[_1316 + 50 len 14] - mem[(32 * idx) + 224]:
                                                                                            revert with 0, 17
                                                                                        else:
                                                                                            if (997 * mem[_1316 + 50 len 14]) - (997 * mem[(32 * idx) + 224]) / 997 != mem[_1316 + 50 len 14] - mem[(32 * idx) + 224]:
                                                                                                revert with 0, 'ds-math-mul-overflow'
                                                                                            else:
                                                                                                if not (997 * mem[_1316 + 50 len 14]) - (997 * mem[(32 * idx) + 224]):
                                                                                                    revert with 0, 18
                                                                                                else:
                                                                                                    if 0 / (997 * mem[_1316 + 50 len 14]) - (997 * mem[(32 * idx) + 224]) > -2:
                                                                                                        revert with 0, 17
                                                                                                    else:
                                                                                                        if (0 / (997 * mem[_1316 + 50 len 14]) - (997 * mem[(32 * idx) + 224])) + 1 < 0 / (997 * mem[_1316 + 50 len 14]) - (997 * mem[(32 * idx) + 224]):
                                                                                                            revert with 0, 'ds-math-add-overflow'
                                                                                                        else:
                                                                                                            if idx < 1:
                                                                                                                revert with 0, 17
                                                                                                            else:
                                                                                                                if idx - 1 >= mem[192]:
                                                                                                                    revert with 0, 50
                                                                                                                else:
                                                                                                                    mem[(32 * idx - 1) + 224] = (0 / (997 * mem[_1316 + 50 len 14]) - (997 * mem[(32 * idx) + 224])) + 1
                                                                                                                    if not idx:
                                                                                                                        revert with 0, 17
                                                                                                                    else:
                                                                                                                        idx = idx - 1
                                                                                                                        continue 
                                                                            else:
                                                                                if mem[_1316 + 18 len 14] and mem[(32 * idx) + 224] > -1 / mem[_1316 + 18 len 14]:
                                                                                    revert with 0, 17
                                                                                else:
                                                                                    if not mem[(32 * idx) + 224]:
                                                                                        revert with 0, 18
                                                                                    else:
                                                                                        if mem[_1316 + 18 len 14] * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != mem[_1316 + 18 len 14]:
                                                                                            revert with 0, 'ds-math-mul-overflow'
                                                                                        else:
                                                                                            if mem[_1316 + 18 len 14] * mem[(32 * idx) + 224] and 1000 > -1 / mem[_1316 + 18 len 14] * mem[(32 * idx) + 224]:
                                                                                                revert with 0, 17
                                                                                            else:
                                                                                                if 1000 * mem[_1316 + 18 len 14] * mem[(32 * idx) + 224] / 1000 != mem[_1316 + 18 len 14] * mem[(32 * idx) + 224]:
                                                                                                    revert with 0, 'ds-math-mul-overflow'
                                                                                                else:
                                                                                                    if mem[_1316 + 50 len 14] < mem[(32 * idx) + 224]:
                                                                                                        revert with 0, 17
                                                                                                    else:
                                                                                                        if mem[_1316 + 50 len 14] - mem[(32 * idx) + 224] > mem[_1316 + 50 len 14]:
                                                                                                            revert with 0, 'ds-math-sub-underflow'
                                                                                                        else:
                                                                                                            if mem[_1316 + 50 len 14] - mem[(32 * idx) + 224] and 997 > -1 / mem[_1316 + 50 len 14] - mem[(32 * idx) + 224]:
                                                                                                                revert with 0, 17
                                                                                                            else:
                                                                                                                if (997 * mem[_1316 + 50 len 14]) - (997 * mem[(32 * idx) + 224]) / 997 != mem[_1316 + 50 len 14] - mem[(32 * idx) + 224]:
                                                                                                                    revert with 0, 'ds-math-mul-overflow'
                                                                                                                else:
                                                                                                                    if not (997 * mem[_1316 + 50 len 14]) - (997 * mem[(32 * idx) + 224]):
                                                                                                                        revert with 0, 18
                                                                                                                    else:
                                                                                                                        if 1000 * mem[_1316 + 18 len 14] * mem[(32 * idx) + 224] / (997 * mem[_1316 + 50 len 14]) - (997 * mem[(32 * idx) + 224]) > -2:
                                                                                                                            revert with 0, 17
                                                                                                                        else:
                                                                                                                            if (1000 * mem[_1316 + 18 len 14] * mem[(32 * idx) + 224] / (997 * mem[_1316 + 50 len 14]) - (997 * mem[(32 * idx) + 224])) + 1 < 1000 * mem[_1316 + 18 len 14] * mem[(32 * idx) + 224] / (997 * mem[_1316 + 50 len 14]) - (997 * mem[(32 * idx) + 224]):
                                                                                                                                revert with 0, 'ds-math-add-overflow'
                                                                                                                            else:
                                                                                                                                if idx < 1:
                                                                                                                                    revert with 0, 17
                                                                                                                                else:
                                                                                                                                    if idx - 1 >= mem[192]:
                                                                                                                                        revert with 0, 50
                                                                                                                                    else:
                                                                                                                                        mem[(32 * idx - 1) + 224] = (1000 * mem[_1316 + 18 len 14] * mem[(32 * idx) + 224] / (997 * mem[_1316 + 50 len 14]) - (997 * mem[(32 * idx) + 224])) + 1
                                                                                                                                        if not idx:
                                                                                                                                            revert with 0, 17
                                                                                                                                        else:
                                                                                                                                            idx = idx - 1
                                                                                                                                            continue 
                                                        else:
                                                            if idx >= mem[192]:
                                                                revert with 0, 50
                                                            else:
                                                                if mem[(32 * idx) + 224] <= 0:
                                                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_OUTPUT_AMOUNT'
                                                                else:
                                                                    if mem[_1316 + 50 len 14] <= 0:
                                                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                                                    else:
                                                                        if mem[_1316 + 18 len 14] <= 0:
                                                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                                                        else:
                                                                            if not mem[(32 * idx) + 224]:
                                                                                if mem[_1316 + 18 len 14] < mem[(32 * idx) + 224]:
                                                                                    revert with 0, 17
                                                                                else:
                                                                                    if mem[_1316 + 18 len 14] - mem[(32 * idx) + 224] > mem[_1316 + 18 len 14]:
                                                                                        revert with 0, 'ds-math-sub-underflow'
                                                                                    else:
                                                                                        if mem[_1316 + 18 len 14] - mem[(32 * idx) + 224] and 997 > -1 / mem[_1316 + 18 len 14] - mem[(32 * idx) + 224]:
                                                                                            revert with 0, 17
                                                                                        else:
                                                                                            if (997 * mem[_1316 + 18 len 14]) - (997 * mem[(32 * idx) + 224]) / 997 != mem[_1316 + 18 len 14] - mem[(32 * idx) + 224]:
                                                                                                revert with 0, 'ds-math-mul-overflow'
                                                                                            else:
                                                                                                if not (997 * mem[_1316 + 18 len 14]) - (997 * mem[(32 * idx) + 224]):
                                                                                                    revert with 0, 18
                                                                                                else:
                                                                                                    if 0 / (997 * mem[_1316 + 18 len 14]) - (997 * mem[(32 * idx) + 224]) > -2:
                                                                                                        revert with 0, 17
                                                                                                    else:
                                                                                                        if (0 / (997 * mem[_1316 + 18 len 14]) - (997 * mem[(32 * idx) + 224])) + 1 < 0 / (997 * mem[_1316 + 18 len 14]) - (997 * mem[(32 * idx) + 224]):
                                                                                                            revert with 0, 'ds-math-add-overflow'
                                                                                                        else:
                                                                                                            if idx < 1:
                                                                                                                revert with 0, 17
                                                                                                            else:
                                                                                                                if idx - 1 >= mem[192]:
                                                                                                                    revert with 0, 50
                                                                                                                else:
                                                                                                                    mem[(32 * idx - 1) + 224] = (0 / (997 * mem[_1316 + 18 len 14]) - (997 * mem[(32 * idx) + 224])) + 1
                                                                                                                    if not idx:
                                                                                                                        revert with 0, 17
                                                                                                                    else:
                                                                                                                        idx = idx - 1
                                                                                                                        continue 
                                                                            else:
                                                                                if mem[_1316 + 50 len 14] and mem[(32 * idx) + 224] > -1 / mem[_1316 + 50 len 14]:
                                                                                    revert with 0, 17
                                                                                else:
                                                                                    if not mem[(32 * idx) + 224]:
                                                                                        revert with 0, 18
                                                                                    else:
                                                                                        if mem[_1316 + 50 len 14] * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != mem[_1316 + 50 len 14]:
                                                                                            revert with 0, 'ds-math-mul-overflow'
                                                                                        else:
                                                                                            if mem[_1316 + 50 len 14] * mem[(32 * idx) + 224] and 1000 > -1 / mem[_1316 + 50 len 14] * mem[(32 * idx) + 224]:
                                                                                                revert with 0, 17
                                                                                            else:
                                                                                                if 1000 * mem[_1316 + 50 len 14] * mem[(32 * idx) + 224] / 1000 != mem[_1316 + 50 len 14] * mem[(32 * idx) + 224]:
                                                                                                    revert with 0, 'ds-math-mul-overflow'
                                                                                                else:
                                                                                                    if mem[_1316 + 18 len 14] < mem[(32 * idx) + 224]:
                                                                                                        revert with 0, 17
                                                                                                    else:
                                                                                                        if mem[_1316 + 18 len 14] - mem[(32 * idx) + 224] > mem[_1316 + 18 len 14]:
                                                                                                            revert with 0, 'ds-math-sub-underflow'
                                                                                                        else:
                                                                                                            if mem[_1316 + 18 len 14] - mem[(32 * idx) + 224] and 997 > -1 / mem[_1316 + 18 len 14] - mem[(32 * idx) + 224]:
                                                                                                                revert with 0, 17
                                                                                                            else:
                                                                                                                if (997 * mem[_1316 + 18 len 14]) - (997 * mem[(32 * idx) + 224]) / 997 != mem[_1316 + 18 len 14] - mem[(32 * idx) + 224]:
                                                                                                                    revert with 0, 'ds-math-mul-overflow'
                                                                                                                else:
                                                                                                                    if not (997 * mem[_1316 + 18 len 14]) - (997 * mem[(32 * idx) + 224]):
                                                                                                                        revert with 0, 18
                                                                                                                    else:
                                                                                                                        if 1000 * mem[_1316 + 50 len 14] * mem[(32 * idx) + 224] / (997 * mem[_1316 + 18 len 14]) - (997 * mem[(32 * idx) + 224]) > -2:
                                                                                                                            revert with 0, 17
                                                                                                                        else:
                                                                                                                            if (1000 * mem[_1316 + 50 len 14] * mem[(32 * idx) + 224] / (997 * mem[_1316 + 18 len 14]) - (997 * mem[(32 * idx) + 224])) + 1 < 1000 * mem[_1316 + 50 len 14] * mem[(32 * idx) + 224] / (997 * mem[_1316 + 18 len 14]) - (997 * mem[(32 * idx) + 224]):
                                                                                                                                revert with 0, 'ds-math-add-overflow'
                                                                                                                            else:
                                                                                                                                if idx < 1:
                                                                                                                                    revert with 0, 17
                                                                                                                                else:
                                                                                                                                    if idx - 1 >= mem[192]:
                                                                                                                                        revert with 0, 50
                                                                                                                                    else:
                                                                                                                                        mem[(32 * idx - 1) + 224] = (1000 * mem[_1316 + 50 len 14] * mem[(32 * idx) + 224] / (997 * mem[_1316 + 18 len 14]) - (997 * mem[(32 * idx) + 224])) + 1
                                                                                                                                        if not idx:
                                                                                                                                            revert with 0, 17
                                                                                                                                        else:
                                                                                                                                            idx = idx - 1
                                                                                                                                            continue 
                        if 0 >= mem[192]:
                            revert with 0, 50
                        else:
                            _1147 = mem[224]
                            _1148 = mem[64]
                            mem[mem[64] + 32] = address(cd[132])
                            mem[mem[64] + 64] = _1147
                            mem[mem[64] + 96] = cd[164] % 16777216
                            mem[mem[64] + 128] = 128
                            mem[mem[64] + 160] = ('cd', 196).length
                            idx = 0
                            s = mem[64] + 192
                            t = cd[196] + 36
                            while idx < ('cd', 196).length:
                                require cd[t] == address(cd[t])
                                mem[s] = address(cd[t])
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            _2210 = mem[64]
                            mem[mem[64]] = _1148 + (32 * ('cd', 196).length) + -mem[64] + 160
                            mem[64] = _1148 + (32 * ('cd', 196).length) + 192
                            mem[_1148 + (32 * ('cd', 196).length) + 192] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1148 + (32 * ('cd', 196).length) + 196] = 0
                            mem[_1148 + (32 * ('cd', 196).length) + 228] = cd[100]
                            mem[_1148 + (32 * ('cd', 196).length) + 260] = this.address
                            mem[_1148 + (32 * ('cd', 196).length) + 292] = 128
                            _2218 = mem[_2210]
                            mem[_1148 + (32 * ('cd', 196).length) + 324] = mem[_2210]
                            mem[_1148 + (32 * ('cd', 196).length) + 356 len ceil32(_2218)] = mem[_2210 + 32 len ceil32(_2218)]
                            if ceil32(_2218) <= _2218:
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, cd[100], address(this.address), 128, mem[_1148 + (32 * ('cd', 196).length) + 324 len ceil32(_2218) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                            else:
                                mem[_1148 + (32 * ('cd', 196).length) + _2218 + 356] = 0
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, cd[100], address(this.address), 128, mem[_1148 + (32 * ('cd', 196).length) + 324 len ceil32(_2218) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                    else:
                        mem[96] = 2
                        mem[128] = address(cd[36])
                        mem[160] = address(cd[68])
                        mem[192] = 2
                        mem[64] = 288
                        mem[224 len 64] = call.data[calldata.size len 64]
                        mem[256] = cd[100]
                        idx = mem[96] - 1
                        while idx:
                            if idx < 1:
                                revert with 0, 17
                            else:
                                if idx - 1 >= mem[96]:
                                    revert with 0, 50
                                else:
                                    _1175 = mem[(32 * idx - 1) + 128]
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    else:
                                        _1188 = mem[(32 * idx) + 128]
                                        if mem[(32 * idx - 1) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                                            revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                                        else:
                                            if mem[(32 * idx - 1) + 140 len 20] < mem[(32 * idx) + 140 len 20]:
                                                if not mem[(32 * idx - 1) + 140 len 20]:
                                                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                                                else:
                                                    require ext_code.size(address(cd[4]))
                                                    staticcall address(cd[4]).getReserves() with:
                                                            gas gas_remaining wei
                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        _1319 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 96
                                                        require mem[_1319] == mem[_1319 + 18 len 14]
                                                        require mem[_1319 + 32] == mem[_1319 + 50 len 14]
                                                        require mem[_1319 + 64] == mem[_1319 + 92 len 4]
                                                        if address(_1175) == address(_1175):
                                                            if idx >= mem[192]:
                                                                revert with 0, 50
                                                            else:
                                                                if mem[(32 * idx) + 224] <= 0:
                                                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_OUTPUT_AMOUNT'
                                                                else:
                                                                    if mem[_1319 + 18 len 14] <= 0:
                                                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                                                    else:
                                                                        if mem[_1319 + 50 len 14] <= 0:
                                                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                                                        else:
                                                                            if not mem[(32 * idx) + 224]:
                                                                                if mem[_1319 + 50 len 14] < mem[(32 * idx) + 224]:
                                                                                    revert with 0, 17
                                                                                else:
                                                                                    if mem[_1319 + 50 len 14] - mem[(32 * idx) + 224] > mem[_1319 + 50 len 14]:
                                                                                        revert with 0, 'ds-math-sub-underflow'
                                                                                    else:
                                                                                        if mem[_1319 + 50 len 14] - mem[(32 * idx) + 224] and 997 > -1 / mem[_1319 + 50 len 14] - mem[(32 * idx) + 224]:
                                                                                            revert with 0, 17
                                                                                        else:
                                                                                            if (997 * mem[_1319 + 50 len 14]) - (997 * mem[(32 * idx) + 224]) / 997 != mem[_1319 + 50 len 14] - mem[(32 * idx) + 224]:
                                                                                                revert with 0, 'ds-math-mul-overflow'
                                                                                            else:
                                                                                                if not (997 * mem[_1319 + 50 len 14]) - (997 * mem[(32 * idx) + 224]):
                                                                                                    revert with 0, 18
                                                                                                else:
                                                                                                    if 0 / (997 * mem[_1319 + 50 len 14]) - (997 * mem[(32 * idx) + 224]) > -2:
                                                                                                        revert with 0, 17
                                                                                                    else:
                                                                                                        if (0 / (997 * mem[_1319 + 50 len 14]) - (997 * mem[(32 * idx) + 224])) + 1 < 0 / (997 * mem[_1319 + 50 len 14]) - (997 * mem[(32 * idx) + 224]):
                                                                                                            revert with 0, 'ds-math-add-overflow'
                                                                                                        else:
                                                                                                            if idx < 1:
                                                                                                                revert with 0, 17
                                                                                                            else:
                                                                                                                if idx - 1 >= mem[192]:
                                                                                                                    revert with 0, 50
                                                                                                                else:
                                                                                                                    mem[(32 * idx - 1) + 224] = (0 / (997 * mem[_1319 + 50 len 14]) - (997 * mem[(32 * idx) + 224])) + 1
                                                                                                                    if not idx:
                                                                                                                        revert with 0, 17
                                                                                                                    else:
                                                                                                                        idx = idx - 1
                                                                                                                        continue 
                                                                            else:
                                                                                if mem[_1319 + 18 len 14] and mem[(32 * idx) + 224] > -1 / mem[_1319 + 18 len 14]:
                                                                                    revert with 0, 17
                                                                                else:
                                                                                    if not mem[(32 * idx) + 224]:
                                                                                        revert with 0, 18
                                                                                    else:
                                                                                        if mem[_1319 + 18 len 14] * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != mem[_1319 + 18 len 14]:
                                                                                            revert with 0, 'ds-math-mul-overflow'
                                                                                        else:
                                                                                            if mem[_1319 + 18 len 14] * mem[(32 * idx) + 224] and 1000 > -1 / mem[_1319 + 18 len 14] * mem[(32 * idx) + 224]:
                                                                                                revert with 0, 17
                                                                                            else:
                                                                                                if 1000 * mem[_1319 + 18 len 14] * mem[(32 * idx) + 224] / 1000 != mem[_1319 + 18 len 14] * mem[(32 * idx) + 224]:
                                                                                                    revert with 0, 'ds-math-mul-overflow'
                                                                                                else:
                                                                                                    if mem[_1319 + 50 len 14] < mem[(32 * idx) + 224]:
                                                                                                        revert with 0, 17
                                                                                                    else:
                                                                                                        if mem[_1319 + 50 len 14] - mem[(32 * idx) + 224] > mem[_1319 + 50 len 14]:
                                                                                                            revert with 0, 'ds-math-sub-underflow'
                                                                                                        else:
                                                                                                            if mem[_1319 + 50 len 14] - mem[(32 * idx) + 224] and 997 > -1 / mem[_1319 + 50 len 14] - mem[(32 * idx) + 224]:
                                                                                                                revert with 0, 17
                                                                                                            else:
                                                                                                                if (997 * mem[_1319 + 50 len 14]) - (997 * mem[(32 * idx) + 224]) / 997 != mem[_1319 + 50 len 14] - mem[(32 * idx) + 224]:
                                                                                                                    revert with 0, 'ds-math-mul-overflow'
                                                                                                                else:
                                                                                                                    if not (997 * mem[_1319 + 50 len 14]) - (997 * mem[(32 * idx) + 224]):
                                                                                                                        revert with 0, 18
                                                                                                                    else:
                                                                                                                        if 1000 * mem[_1319 + 18 len 14] * mem[(32 * idx) + 224] / (997 * mem[_1319 + 50 len 14]) - (997 * mem[(32 * idx) + 224]) > -2:
                                                                                                                            revert with 0, 17
                                                                                                                        else:
                                                                                                                            if (1000 * mem[_1319 + 18 len 14] * mem[(32 * idx) + 224] / (997 * mem[_1319 + 50 len 14]) - (997 * mem[(32 * idx) + 224])) + 1 < 1000 * mem[_1319 + 18 len 14] * mem[(32 * idx) + 224] / (997 * mem[_1319 + 50 len 14]) - (997 * mem[(32 * idx) + 224]):
                                                                                                                                revert with 0, 'ds-math-add-overflow'
                                                                                                                            else:
                                                                                                                                if idx < 1:
                                                                                                                                    revert with 0, 17
                                                                                                                                else:
                                                                                                                                    if idx - 1 >= mem[192]:
                                                                                                                                        revert with 0, 50
                                                                                                                                    else:
                                                                                                                                        mem[(32 * idx - 1) + 224] = (1000 * mem[_1319 + 18 len 14] * mem[(32 * idx) + 224] / (997 * mem[_1319 + 50 len 14]) - (997 * mem[(32 * idx) + 224])) + 1
                                                                                                                                        if not idx:
                                                                                                                                            revert with 0, 17
                                                                                                                                        else:
                                                                                                                                            idx = idx - 1
                                                                                                                                            continue 
                                                        else:
                                                            if idx >= mem[192]:
                                                                revert with 0, 50
                                                            else:
                                                                if mem[(32 * idx) + 224] <= 0:
                                                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_OUTPUT_AMOUNT'
                                                                else:
                                                                    if mem[_1319 + 50 len 14] <= 0:
                                                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                                                    else:
                                                                        if mem[_1319 + 18 len 14] <= 0:
                                                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                                                        else:
                                                                            if not mem[(32 * idx) + 224]:
                                                                                if mem[_1319 + 18 len 14] < mem[(32 * idx) + 224]:
                                                                                    revert with 0, 17
                                                                                else:
                                                                                    if mem[_1319 + 18 len 14] - mem[(32 * idx) + 224] > mem[_1319 + 18 len 14]:
                                                                                        revert with 0, 'ds-math-sub-underflow'
                                                                                    else:
                                                                                        if mem[_1319 + 18 len 14] - mem[(32 * idx) + 224] and 997 > -1 / mem[_1319 + 18 len 14] - mem[(32 * idx) + 224]:
                                                                                            revert with 0, 17
                                                                                        else:
                                                                                            if (997 * mem[_1319 + 18 len 14]) - (997 * mem[(32 * idx) + 224]) / 997 != mem[_1319 + 18 len 14] - mem[(32 * idx) + 224]:
                                                                                                revert with 0, 'ds-math-mul-overflow'
                                                                                            else:
                                                                                                if not (997 * mem[_1319 + 18 len 14]) - (997 * mem[(32 * idx) + 224]):
                                                                                                    revert with 0, 18
                                                                                                else:
                                                                                                    if 0 / (997 * mem[_1319 + 18 len 14]) - (997 * mem[(32 * idx) + 224]) > -2:
                                                                                                        revert with 0, 17
                                                                                                    else:
                                                                                                        if (0 / (997 * mem[_1319 + 18 len 14]) - (997 * mem[(32 * idx) + 224])) + 1 < 0 / (997 * mem[_1319 + 18 len 14]) - (997 * mem[(32 * idx) + 224]):
                                                                                                            revert with 0, 'ds-math-add-overflow'
                                                                                                        else:
                                                                                                            if idx < 1:
                                                                                                                revert with 0, 17
                                                                                                            else:
                                                                                                                if idx - 1 >= mem[192]:
                                                                                                                    revert with 0, 50
                                                                                                                else:
                                                                                                                    mem[(32 * idx - 1) + 224] = (0 / (997 * mem[_1319 + 18 len 14]) - (997 * mem[(32 * idx) + 224])) + 1
                                                                                                                    if not idx:
                                                                                                                        revert with 0, 17
                                                                                                                    else:
                                                                                                                        idx = idx - 1
                                                                                                                        continue 
                                                                            else:
                                                                                if mem[_1319 + 50 len 14] and mem[(32 * idx) + 224] > -1 / mem[_1319 + 50 len 14]:
                                                                                    revert with 0, 17
                                                                                else:
                                                                                    if not mem[(32 * idx) + 224]:
                                                                                        revert with 0, 18
                                                                                    else:
                                                                                        if mem[_1319 + 50 len 14] * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != mem[_1319 + 50 len 14]:
                                                                                            revert with 0, 'ds-math-mul-overflow'
                                                                                        else:
                                                                                            if mem[_1319 + 50 len 14] * mem[(32 * idx) + 224] and 1000 > -1 / mem[_1319 + 50 len 14] * mem[(32 * idx) + 224]:
                                                                                                revert with 0, 17
                                                                                            else:
                                                                                                if 1000 * mem[_1319 + 50 len 14] * mem[(32 * idx) + 224] / 1000 != mem[_1319 + 50 len 14] * mem[(32 * idx) + 224]:
                                                                                                    revert with 0, 'ds-math-mul-overflow'
                                                                                                else:
                                                                                                    if mem[_1319 + 18 len 14] < mem[(32 * idx) + 224]:
                                                                                                        revert with 0, 17
                                                                                                    else:
                                                                                                        if mem[_1319 + 18 len 14] - mem[(32 * idx) + 224] > mem[_1319 + 18 len 14]:
                                                                                                            revert with 0, 'ds-math-sub-underflow'
                                                                                                        else:
                                                                                                            if mem[_1319 + 18 len 14] - mem[(32 * idx) + 224] and 997 > -1 / mem[_1319 + 18 len 14] - mem[(32 * idx) + 224]:
                                                                                                                revert with 0, 17
                                                                                                            else:
                                                                                                                if (997 * mem[_1319 + 18 len 14]) - (997 * mem[(32 * idx) + 224]) / 997 != mem[_1319 + 18 len 14] - mem[(32 * idx) + 224]:
                                                                                                                    revert with 0, 'ds-math-mul-overflow'
                                                                                                                else:
                                                                                                                    if not (997 * mem[_1319 + 18 len 14]) - (997 * mem[(32 * idx) + 224]):
                                                                                                                        revert with 0, 18
                                                                                                                    else:
                                                                                                                        if 1000 * mem[_1319 + 50 len 14] * mem[(32 * idx) + 224] / (997 * mem[_1319 + 18 len 14]) - (997 * mem[(32 * idx) + 224]) > -2:
                                                                                                                            revert with 0, 17
                                                                                                                        else:
                                                                                                                            if (1000 * mem[_1319 + 50 len 14] * mem[(32 * idx) + 224] / (997 * mem[_1319 + 18 len 14]) - (997 * mem[(32 * idx) + 224])) + 1 < 1000 * mem[_1319 + 50 len 14] * mem[(32 * idx) + 224] / (997 * mem[_1319 + 18 len 14]) - (997 * mem[(32 * idx) + 224]):
                                                                                                                                revert with 0, 'ds-math-add-overflow'
                                                                                                                            else:
                                                                                                                                if idx < 1:
                                                                                                                                    revert with 0, 17
                                                                                                                                else:
                                                                                                                                    if idx - 1 >= mem[192]:
                                                                                                                                        revert with 0, 50
                                                                                                                                    else:
                                                                                                                                        mem[(32 * idx - 1) + 224] = (1000 * mem[_1319 + 50 len 14] * mem[(32 * idx) + 224] / (997 * mem[_1319 + 18 len 14]) - (997 * mem[(32 * idx) + 224])) + 1
                                                                                                                                        if not idx:
                                                                                                                                            revert with 0, 17
                                                                                                                                        else:
                                                                                                                                            idx = idx - 1
                                                                                                                                            continue 
                                            else:
                                                if not mem[(32 * idx) + 140 len 20]:
                                                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                                                else:
                                                    require ext_code.size(address(cd[4]))
                                                    staticcall address(cd[4]).getReserves() with:
                                                            gas gas_remaining wei
                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        _1320 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 96
                                                        require mem[_1320] == mem[_1320 + 18 len 14]
                                                        require mem[_1320 + 32] == mem[_1320 + 50 len 14]
                                                        require mem[_1320 + 64] == mem[_1320 + 92 len 4]
                                                        if address(_1175) == address(_1188):
                                                            if idx >= mem[192]:
                                                                revert with 0, 50
                                                            else:
                                                                if mem[(32 * idx) + 224] <= 0:
                                                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_OUTPUT_AMOUNT'
                                                                else:
                                                                    if mem[_1320 + 18 len 14] <= 0:
                                                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                                                    else:
                                                                        if mem[_1320 + 50 len 14] <= 0:
                                                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                                                        else:
                                                                            if not mem[(32 * idx) + 224]:
                                                                                if mem[_1320 + 50 len 14] < mem[(32 * idx) + 224]:
                                                                                    revert with 0, 17
                                                                                else:
                                                                                    if mem[_1320 + 50 len 14] - mem[(32 * idx) + 224] > mem[_1320 + 50 len 14]:
                                                                                        revert with 0, 'ds-math-sub-underflow'
                                                                                    else:
                                                                                        if mem[_1320 + 50 len 14] - mem[(32 * idx) + 224] and 997 > -1 / mem[_1320 + 50 len 14] - mem[(32 * idx) + 224]:
                                                                                            revert with 0, 17
                                                                                        else:
                                                                                            if (997 * mem[_1320 + 50 len 14]) - (997 * mem[(32 * idx) + 224]) / 997 != mem[_1320 + 50 len 14] - mem[(32 * idx) + 224]:
                                                                                                revert with 0, 'ds-math-mul-overflow'
                                                                                            else:
                                                                                                if not (997 * mem[_1320 + 50 len 14]) - (997 * mem[(32 * idx) + 224]):
                                                                                                    revert with 0, 18
                                                                                                else:
                                                                                                    if 0 / (997 * mem[_1320 + 50 len 14]) - (997 * mem[(32 * idx) + 224]) > -2:
                                                                                                        revert with 0, 17
                                                                                                    else:
                                                                                                        if (0 / (997 * mem[_1320 + 50 len 14]) - (997 * mem[(32 * idx) + 224])) + 1 < 0 / (997 * mem[_1320 + 50 len 14]) - (997 * mem[(32 * idx) + 224]):
                                                                                                            revert with 0, 'ds-math-add-overflow'
                                                                                                        else:
                                                                                                            if idx < 1:
                                                                                                                revert with 0, 17
                                                                                                            else:
                                                                                                                if idx - 1 >= mem[192]:
                                                                                                                    revert with 0, 50
                                                                                                                else:
                                                                                                                    mem[(32 * idx - 1) + 224] = (0 / (997 * mem[_1320 + 50 len 14]) - (997 * mem[(32 * idx) + 224])) + 1
                                                                                                                    if not idx:
                                                                                                                        revert with 0, 17
                                                                                                                    else:
                                                                                                                        idx = idx - 1
                                                                                                                        continue 
                                                                            else:
                                                                                if mem[_1320 + 18 len 14] and mem[(32 * idx) + 224] > -1 / mem[_1320 + 18 len 14]:
                                                                                    revert with 0, 17
                                                                                else:
                                                                                    if not mem[(32 * idx) + 224]:
                                                                                        revert with 0, 18
                                                                                    else:
                                                                                        if mem[_1320 + 18 len 14] * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != mem[_1320 + 18 len 14]:
                                                                                            revert with 0, 'ds-math-mul-overflow'
                                                                                        else:
                                                                                            if mem[_1320 + 18 len 14] * mem[(32 * idx) + 224] and 1000 > -1 / mem[_1320 + 18 len 14] * mem[(32 * idx) + 224]:
                                                                                                revert with 0, 17
                                                                                            else:
                                                                                                if 1000 * mem[_1320 + 18 len 14] * mem[(32 * idx) + 224] / 1000 != mem[_1320 + 18 len 14] * mem[(32 * idx) + 224]:
                                                                                                    revert with 0, 'ds-math-mul-overflow'
                                                                                                else:
                                                                                                    if mem[_1320 + 50 len 14] < mem[(32 * idx) + 224]:
                                                                                                        revert with 0, 17
                                                                                                    else:
                                                                                                        if mem[_1320 + 50 len 14] - mem[(32 * idx) + 224] > mem[_1320 + 50 len 14]:
                                                                                                            revert with 0, 'ds-math-sub-underflow'
                                                                                                        else:
                                                                                                            if mem[_1320 + 50 len 14] - mem[(32 * idx) + 224] and 997 > -1 / mem[_1320 + 50 len 14] - mem[(32 * idx) + 224]:
                                                                                                                revert with 0, 17
                                                                                                            else:
                                                                                                                if (997 * mem[_1320 + 50 len 14]) - (997 * mem[(32 * idx) + 224]) / 997 != mem[_1320 + 50 len 14] - mem[(32 * idx) + 224]:
                                                                                                                    revert with 0, 'ds-math-mul-overflow'
                                                                                                                else:
                                                                                                                    if not (997 * mem[_1320 + 50 len 14]) - (997 * mem[(32 * idx) + 224]):
                                                                                                                        revert with 0, 18
                                                                                                                    else:
                                                                                                                        if 1000 * mem[_1320 + 18 len 14] * mem[(32 * idx) + 224] / (997 * mem[_1320 + 50 len 14]) - (997 * mem[(32 * idx) + 224]) > -2:
                                                                                                                            revert with 0, 17
                                                                                                                        else:
                                                                                                                            if (1000 * mem[_1320 + 18 len 14] * mem[(32 * idx) + 224] / (997 * mem[_1320 + 50 len 14]) - (997 * mem[(32 * idx) + 224])) + 1 < 1000 * mem[_1320 + 18 len 14] * mem[(32 * idx) + 224] / (997 * mem[_1320 + 50 len 14]) - (997 * mem[(32 * idx) + 224]):
                                                                                                                                revert with 0, 'ds-math-add-overflow'
                                                                                                                            else:
                                                                                                                                if idx < 1:
                                                                                                                                    revert with 0, 17
                                                                                                                                else:
                                                                                                                                    if idx - 1 >= mem[192]:
                                                                                                                                        revert with 0, 50
                                                                                                                                    else:
                                                                                                                                        mem[(32 * idx - 1) + 224] = (1000 * mem[_1320 + 18 len 14] * mem[(32 * idx) + 224] / (997 * mem[_1320 + 50 len 14]) - (997 * mem[(32 * idx) + 224])) + 1
                                                                                                                                        if not idx:
                                                                                                                                            revert with 0, 17
                                                                                                                                        else:
                                                                                                                                            idx = idx - 1
                                                                                                                                            continue 
                                                        else:
                                                            if idx >= mem[192]:
                                                                revert with 0, 50
                                                            else:
                                                                if mem[(32 * idx) + 224] <= 0:
                                                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_OUTPUT_AMOUNT'
                                                                else:
                                                                    if mem[_1320 + 50 len 14] <= 0:
                                                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                                                    else:
                                                                        if mem[_1320 + 18 len 14] <= 0:
                                                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                                                        else:
                                                                            if not mem[(32 * idx) + 224]:
                                                                                if mem[_1320 + 18 len 14] < mem[(32 * idx) + 224]:
                                                                                    revert with 0, 17
                                                                                else:
                                                                                    if mem[_1320 + 18 len 14] - mem[(32 * idx) + 224] > mem[_1320 + 18 len 14]:
                                                                                        revert with 0, 'ds-math-sub-underflow'
                                                                                    else:
                                                                                        if mem[_1320 + 18 len 14] - mem[(32 * idx) + 224] and 997 > -1 / mem[_1320 + 18 len 14] - mem[(32 * idx) + 224]:
                                                                                            revert with 0, 17
                                                                                        else:
                                                                                            if (997 * mem[_1320 + 18 len 14]) - (997 * mem[(32 * idx) + 224]) / 997 != mem[_1320 + 18 len 14] - mem[(32 * idx) + 224]:
                                                                                                revert with 0, 'ds-math-mul-overflow'
                                                                                            else:
                                                                                                if not (997 * mem[_1320 + 18 len 14]) - (997 * mem[(32 * idx) + 224]):
                                                                                                    revert with 0, 18
                                                                                                else:
                                                                                                    if 0 / (997 * mem[_1320 + 18 len 14]) - (997 * mem[(32 * idx) + 224]) > -2:
                                                                                                        revert with 0, 17
                                                                                                    else:
                                                                                                        if (0 / (997 * mem[_1320 + 18 len 14]) - (997 * mem[(32 * idx) + 224])) + 1 < 0 / (997 * mem[_1320 + 18 len 14]) - (997 * mem[(32 * idx) + 224]):
                                                                                                            revert with 0, 'ds-math-add-overflow'
                                                                                                        else:
                                                                                                            if idx < 1:
                                                                                                                revert with 0, 17
                                                                                                            else:
                                                                                                                if idx - 1 >= mem[192]:
                                                                                                                    revert with 0, 50
                                                                                                                else:
                                                                                                                    mem[(32 * idx - 1) + 224] = (0 / (997 * mem[_1320 + 18 len 14]) - (997 * mem[(32 * idx) + 224])) + 1
                                                                                                                    if not idx:
                                                                                                                        revert with 0, 17
                                                                                                                    else:
                                                                                                                        idx = idx - 1
                                                                                                                        continue 
                                                                            else:
                                                                                if mem[_1320 + 50 len 14] and mem[(32 * idx) + 224] > -1 / mem[_1320 + 50 len 14]:
                                                                                    revert with 0, 17
                                                                                else:
                                                                                    if not mem[(32 * idx) + 224]:
                                                                                        revert with 0, 18
                                                                                    else:
                                                                                        if mem[_1320 + 50 len 14] * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != mem[_1320 + 50 len 14]:
                                                                                            revert with 0, 'ds-math-mul-overflow'
                                                                                        else:
                                                                                            if mem[_1320 + 50 len 14] * mem[(32 * idx) + 224] and 1000 > -1 / mem[_1320 + 50 len 14] * mem[(32 * idx) + 224]:
                                                                                                revert with 0, 17
                                                                                            else:
                                                                                                if 1000 * mem[_1320 + 50 len 14] * mem[(32 * idx) + 224] / 1000 != mem[_1320 + 50 len 14] * mem[(32 * idx) + 224]:
                                                                                                    revert with 0, 'ds-math-mul-overflow'
                                                                                                else:
                                                                                                    if mem[_1320 + 18 len 14] < mem[(32 * idx) + 224]:
                                                                                                        revert with 0, 17
                                                                                                    else:
                                                                                                        if mem[_1320 + 18 len 14] - mem[(32 * idx) + 224] > mem[_1320 + 18 len 14]:
                                                                                                            revert with 0, 'ds-math-sub-underflow'
                                                                                                        else:
                                                                                                            if mem[_1320 + 18 len 14] - mem[(32 * idx) + 224] and 997 > -1 / mem[_1320 + 18 len 14] - mem[(32 * idx) + 224]:
                                                                                                                revert with 0, 17
                                                                                                            else:
                                                                                                                if (997 * mem[_1320 + 18 len 14]) - (997 * mem[(32 * idx) + 224]) / 997 != mem[_1320 + 18 len 14] - mem[(32 * idx) + 224]:
                                                                                                                    revert with 0, 'ds-math-mul-overflow'
                                                                                                                else:
                                                                                                                    if not (997 * mem[_1320 + 18 len 14]) - (997 * mem[(32 * idx) + 224]):
                                                                                                                        revert with 0, 18
                                                                                                                    else:
                                                                                                                        if 1000 * mem[_1320 + 50 len 14] * mem[(32 * idx) + 224] / (997 * mem[_1320 + 18 len 14]) - (997 * mem[(32 * idx) + 224]) > -2:
                                                                                                                            revert with 0, 17
                                                                                                                        else:
                                                                                                                            if (1000 * mem[_1320 + 50 len 14] * mem[(32 * idx) + 224] / (997 * mem[_1320 + 18 len 14]) - (997 * mem[(32 * idx) + 224])) + 1 < 1000 * mem[_1320 + 50 len 14] * mem[(32 * idx) + 224] / (997 * mem[_1320 + 18 len 14]) - (997 * mem[(32 * idx) + 224]):
                                                                                                                                revert with 0, 'ds-math-add-overflow'
                                                                                                                            else:
                                                                                                                                if idx < 1:
                                                                                                                                    revert with 0, 17
                                                                                                                                else:
                                                                                                                                    if idx - 1 >= mem[192]:
                                                                                                                                        revert with 0, 50
                                                                                                                                    else:
                                                                                                                                        mem[(32 * idx - 1) + 224] = (1000 * mem[_1320 + 50 len 14] * mem[(32 * idx) + 224] / (997 * mem[_1320 + 18 len 14]) - (997 * mem[(32 * idx) + 224])) + 1
                                                                                                                                        if not idx:
                                                                                                                                            revert with 0, 17
                                                                                                                                        else:
                                                                                                                                            idx = idx - 1
                                                                                                                                            continue 
                        if 0 >= mem[192]:
                            revert with 0, 50
                        else:
                            _1151 = mem[224]
                            _1152 = mem[64]
                            mem[mem[64] + 32] = address(cd[132])
                            mem[mem[64] + 64] = _1151
                            mem[mem[64] + 96] = cd[164] % 16777216
                            mem[mem[64] + 128] = 128
                            mem[mem[64] + 160] = ('cd', 196).length
                            idx = 0
                            s = mem[64] + 192
                            t = cd[196] + 36
                            while idx < ('cd', 196).length:
                                require cd[t] == address(cd[t])
                                mem[s] = address(cd[t])
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            _2212 = mem[64]
                            mem[mem[64]] = _1152 + (32 * ('cd', 196).length) + -mem[64] + 160
                            mem[64] = _1152 + (32 * ('cd', 196).length) + 192
                            mem[_1152 + (32 * ('cd', 196).length) + 192] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1152 + (32 * ('cd', 196).length) + 196] = cd[100]
                            mem[_1152 + (32 * ('cd', 196).length) + 228] = 0
                            mem[_1152 + (32 * ('cd', 196).length) + 260] = this.address
                            mem[_1152 + (32 * ('cd', 196).length) + 292] = 128
                            _2220 = mem[_2212]
                            mem[_1152 + (32 * ('cd', 196).length) + 324] = mem[_2212]
                            mem[_1152 + (32 * ('cd', 196).length) + 356 len ceil32(_2220)] = mem[_2212 + 32 len ceil32(_2220)]
                            if ceil32(_2220) <= _2220:
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args cd[100], 0, address(this.address), 128, mem[_1152 + (32 * ('cd', 196).length) + 324 len ceil32(_2220) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                            else:
                                mem[_1152 + (32 * ('cd', 196).length) + _2220 + 356] = 0
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args cd[100], 0, address(this.address), 128, mem[_1152 + (32 * ('cd', 196).length) + 324 len ceil32(_2220) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
            else:
                if not address(cd[68]):
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                else:
                    if address(cd[68]) == address(cd[36]):
                        mem[96] = 2
                        mem[128] = address(cd[36])
                        mem[160] = address(cd[68])
                        mem[192] = 2
                        mem[64] = 288
                        mem[224 len 64] = call.data[calldata.size len 64]
                        mem[256] = cd[100]
                        idx = mem[96] - 1
                        while idx:
                            if idx < 1:
                                revert with 0, 17
                            else:
                                if idx - 1 >= mem[96]:
                                    revert with 0, 50
                                else:
                                    _1179 = mem[(32 * idx - 1) + 128]
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    else:
                                        _1190 = mem[(32 * idx) + 128]
                                        if mem[(32 * idx - 1) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                                            revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                                        else:
                                            if mem[(32 * idx - 1) + 140 len 20] < mem[(32 * idx) + 140 len 20]:
                                                if not mem[(32 * idx - 1) + 140 len 20]:
                                                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                                                else:
                                                    require ext_code.size(address(cd[4]))
                                                    staticcall address(cd[4]).getReserves() with:
                                                            gas gas_remaining wei
                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        _1323 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 96
                                                        require mem[_1323] == mem[_1323 + 18 len 14]
                                                        require mem[_1323 + 32] == mem[_1323 + 50 len 14]
                                                        require mem[_1323 + 64] == mem[_1323 + 92 len 4]
                                                        if address(_1179) == address(_1179):
                                                            if idx >= mem[192]:
                                                                revert with 0, 50
                                                            else:
                                                                if mem[(32 * idx) + 224] <= 0:
                                                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_OUTPUT_AMOUNT'
                                                                else:
                                                                    if mem[_1323 + 18 len 14] <= 0:
                                                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                                                    else:
                                                                        if mem[_1323 + 50 len 14] <= 0:
                                                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                                                        else:
                                                                            if not mem[(32 * idx) + 224]:
                                                                                if mem[_1323 + 50 len 14] < mem[(32 * idx) + 224]:
                                                                                    revert with 0, 17
                                                                                else:
                                                                                    if mem[_1323 + 50 len 14] - mem[(32 * idx) + 224] > mem[_1323 + 50 len 14]:
                                                                                        revert with 0, 'ds-math-sub-underflow'
                                                                                    else:
                                                                                        if mem[_1323 + 50 len 14] - mem[(32 * idx) + 224] and 997 > -1 / mem[_1323 + 50 len 14] - mem[(32 * idx) + 224]:
                                                                                            revert with 0, 17
                                                                                        else:
                                                                                            if (997 * mem[_1323 + 50 len 14]) - (997 * mem[(32 * idx) + 224]) / 997 != mem[_1323 + 50 len 14] - mem[(32 * idx) + 224]:
                                                                                                revert with 0, 'ds-math-mul-overflow'
                                                                                            else:
                                                                                                if not (997 * mem[_1323 + 50 len 14]) - (997 * mem[(32 * idx) + 224]):
                                                                                                    revert with 0, 18
                                                                                                else:
                                                                                                    if 0 / (997 * mem[_1323 + 50 len 14]) - (997 * mem[(32 * idx) + 224]) > -2:
                                                                                                        revert with 0, 17
                                                                                                    else:
                                                                                                        if (0 / (997 * mem[_1323 + 50 len 14]) - (997 * mem[(32 * idx) + 224])) + 1 < 0 / (997 * mem[_1323 + 50 len 14]) - (997 * mem[(32 * idx) + 224]):
                                                                                                            revert with 0, 'ds-math-add-overflow'
                                                                                                        else:
                                                                                                            if idx < 1:
                                                                                                                revert with 0, 17
                                                                                                            else:
                                                                                                                if idx - 1 >= mem[192]:
                                                                                                                    revert with 0, 50
                                                                                                                else:
                                                                                                                    mem[(32 * idx - 1) + 224] = (0 / (997 * mem[_1323 + 50 len 14]) - (997 * mem[(32 * idx) + 224])) + 1
                                                                                                                    if not idx:
                                                                                                                        revert with 0, 17
                                                                                                                    else:
                                                                                                                        idx = idx - 1
                                                                                                                        continue 
                                                                            else:
                                                                                if mem[_1323 + 18 len 14] and mem[(32 * idx) + 224] > -1 / mem[_1323 + 18 len 14]:
                                                                                    revert with 0, 17
                                                                                else:
                                                                                    if not mem[(32 * idx) + 224]:
                                                                                        revert with 0, 18
                                                                                    else:
                                                                                        if mem[_1323 + 18 len 14] * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != mem[_1323 + 18 len 14]:
                                                                                            revert with 0, 'ds-math-mul-overflow'
                                                                                        else:
                                                                                            if mem[_1323 + 18 len 14] * mem[(32 * idx) + 224] and 1000 > -1 / mem[_1323 + 18 len 14] * mem[(32 * idx) + 224]:
                                                                                                revert with 0, 17
                                                                                            else:
                                                                                                if 1000 * mem[_1323 + 18 len 14] * mem[(32 * idx) + 224] / 1000 != mem[_1323 + 18 len 14] * mem[(32 * idx) + 224]:
                                                                                                    revert with 0, 'ds-math-mul-overflow'
                                                                                                else:
                                                                                                    if mem[_1323 + 50 len 14] < mem[(32 * idx) + 224]:
                                                                                                        revert with 0, 17
                                                                                                    else:
                                                                                                        if mem[_1323 + 50 len 14] - mem[(32 * idx) + 224] > mem[_1323 + 50 len 14]:
                                                                                                            revert with 0, 'ds-math-sub-underflow'
                                                                                                        else:
                                                                                                            if mem[_1323 + 50 len 14] - mem[(32 * idx) + 224] and 997 > -1 / mem[_1323 + 50 len 14] - mem[(32 * idx) + 224]:
                                                                                                                revert with 0, 17
                                                                                                            else:
                                                                                                                if (997 * mem[_1323 + 50 len 14]) - (997 * mem[(32 * idx) + 224]) / 997 != mem[_1323 + 50 len 14] - mem[(32 * idx) + 224]:
                                                                                                                    revert with 0, 'ds-math-mul-overflow'
                                                                                                                else:
                                                                                                                    if not (997 * mem[_1323 + 50 len 14]) - (997 * mem[(32 * idx) + 224]):
                                                                                                                        revert with 0, 18
                                                                                                                    else:
                                                                                                                        if 1000 * mem[_1323 + 18 len 14] * mem[(32 * idx) + 224] / (997 * mem[_1323 + 50 len 14]) - (997 * mem[(32 * idx) + 224]) > -2:
                                                                                                                            revert with 0, 17
                                                                                                                        else:
                                                                                                                            if (1000 * mem[_1323 + 18 len 14] * mem[(32 * idx) + 224] / (997 * mem[_1323 + 50 len 14]) - (997 * mem[(32 * idx) + 224])) + 1 < 1000 * mem[_1323 + 18 len 14] * mem[(32 * idx) + 224] / (997 * mem[_1323 + 50 len 14]) - (997 * mem[(32 * idx) + 224]):
                                                                                                                                revert with 0, 'ds-math-add-overflow'
                                                                                                                            else:
                                                                                                                                if idx < 1:
                                                                                                                                    revert with 0, 17
                                                                                                                                else:
                                                                                                                                    if idx - 1 >= mem[192]:
                                                                                                                                        revert with 0, 50
                                                                                                                                    else:
                                                                                                                                        mem[(32 * idx - 1) + 224] = (1000 * mem[_1323 + 18 len 14] * mem[(32 * idx) + 224] / (997 * mem[_1323 + 50 len 14]) - (997 * mem[(32 * idx) + 224])) + 1
                                                                                                                                        if not idx:
                                                                                                                                            revert with 0, 17
                                                                                                                                        else:
                                                                                                                                            idx = idx - 1
                                                                                                                                            continue 
                                                        else:
                                                            if idx >= mem[192]:
                                                                revert with 0, 50
                                                            else:
                                                                if mem[(32 * idx) + 224] <= 0:
                                                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_OUTPUT_AMOUNT'
                                                                else:
                                                                    if mem[_1323 + 50 len 14] <= 0:
                                                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                                                    else:
                                                                        if mem[_1323 + 18 len 14] <= 0:
                                                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                                                        else:
                                                                            if not mem[(32 * idx) + 224]:
                                                                                if mem[_1323 + 18 len 14] < mem[(32 * idx) + 224]:
                                                                                    revert with 0, 17
                                                                                else:
                                                                                    if mem[_1323 + 18 len 14] - mem[(32 * idx) + 224] > mem[_1323 + 18 len 14]:
                                                                                        revert with 0, 'ds-math-sub-underflow'
                                                                                    else:
                                                                                        if mem[_1323 + 18 len 14] - mem[(32 * idx) + 224] and 997 > -1 / mem[_1323 + 18 len 14] - mem[(32 * idx) + 224]:
                                                                                            revert with 0, 17
                                                                                        else:
                                                                                            if (997 * mem[_1323 + 18 len 14]) - (997 * mem[(32 * idx) + 224]) / 997 != mem[_1323 + 18 len 14] - mem[(32 * idx) + 224]:
                                                                                                revert with 0, 'ds-math-mul-overflow'
                                                                                            else:
                                                                                                if not (997 * mem[_1323 + 18 len 14]) - (997 * mem[(32 * idx) + 224]):
                                                                                                    revert with 0, 18
                                                                                                else:
                                                                                                    if 0 / (997 * mem[_1323 + 18 len 14]) - (997 * mem[(32 * idx) + 224]) > -2:
                                                                                                        revert with 0, 17
                                                                                                    else:
                                                                                                        if (0 / (997 * mem[_1323 + 18 len 14]) - (997 * mem[(32 * idx) + 224])) + 1 < 0 / (997 * mem[_1323 + 18 len 14]) - (997 * mem[(32 * idx) + 224]):
                                                                                                            revert with 0, 'ds-math-add-overflow'
                                                                                                        else:
                                                                                                            if idx < 1:
                                                                                                                revert with 0, 17
                                                                                                            else:
                                                                                                                if idx - 1 >= mem[192]:
                                                                                                                    revert with 0, 50
                                                                                                                else:
                                                                                                                    mem[(32 * idx - 1) + 224] = (0 / (997 * mem[_1323 + 18 len 14]) - (997 * mem[(32 * idx) + 224])) + 1
                                                                                                                    if not idx:
                                                                                                                        revert with 0, 17
                                                                                                                    else:
                                                                                                                        idx = idx - 1
                                                                                                                        continue 
                                                                            else:
                                                                                if mem[_1323 + 50 len 14] and mem[(32 * idx) + 224] > -1 / mem[_1323 + 50 len 14]:
                                                                                    revert with 0, 17
                                                                                else:
                                                                                    if not mem[(32 * idx) + 224]:
                                                                                        revert with 0, 18
                                                                                    else:
                                                                                        if mem[_1323 + 50 len 14] * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != mem[_1323 + 50 len 14]:
                                                                                            revert with 0, 'ds-math-mul-overflow'
                                                                                        else:
                                                                                            if mem[_1323 + 50 len 14] * mem[(32 * idx) + 224] and 1000 > -1 / mem[_1323 + 50 len 14] * mem[(32 * idx) + 224]:
                                                                                                revert with 0, 17
                                                                                            else:
                                                                                                if 1000 * mem[_1323 + 50 len 14] * mem[(32 * idx) + 224] / 1000 != mem[_1323 + 50 len 14] * mem[(32 * idx) + 224]:
                                                                                                    revert with 0, 'ds-math-mul-overflow'
                                                                                                else:
                                                                                                    if mem[_1323 + 18 len 14] < mem[(32 * idx) + 224]:
                                                                                                        revert with 0, 17
                                                                                                    else:
                                                                                                        if mem[_1323 + 18 len 14] - mem[(32 * idx) + 224] > mem[_1323 + 18 len 14]:
                                                                                                            revert with 0, 'ds-math-sub-underflow'
                                                                                                        else:
                                                                                                            if mem[_1323 + 18 len 14] - mem[(32 * idx) + 224] and 997 > -1 / mem[_1323 + 18 len 14] - mem[(32 * idx) + 224]:
                                                                                                                revert with 0, 17
                                                                                                            else:
                                                                                                                if (997 * mem[_1323 + 18 len 14]) - (997 * mem[(32 * idx) + 224]) / 997 != mem[_1323 + 18 len 14] - mem[(32 * idx) + 224]:
                                                                                                                    revert with 0, 'ds-math-mul-overflow'
                                                                                                                else:
                                                                                                                    if not (997 * mem[_1323 + 18 len 14]) - (997 * mem[(32 * idx) + 224]):
                                                                                                                        revert with 0, 18
                                                                                                                    else:
                                                                                                                        if 1000 * mem[_1323 + 50 len 14] * mem[(32 * idx) + 224] / (997 * mem[_1323 + 18 len 14]) - (997 * mem[(32 * idx) + 224]) > -2:
                                                                                                                            revert with 0, 17
                                                                                                                        else:
                                                                                                                            if (1000 * mem[_1323 + 50 len 14] * mem[(32 * idx) + 224] / (997 * mem[_1323 + 18 len 14]) - (997 * mem[(32 * idx) + 224])) + 1 < 1000 * mem[_1323 + 50 len 14] * mem[(32 * idx) + 224] / (997 * mem[_1323 + 18 len 14]) - (997 * mem[(32 * idx) + 224]):
                                                                                                                                revert with 0, 'ds-math-add-overflow'
                                                                                                                            else:
                                                                                                                                if idx < 1:
                                                                                                                                    revert with 0, 17
                                                                                                                                else:
                                                                                                                                    if idx - 1 >= mem[192]:
                                                                                                                                        revert with 0, 50
                                                                                                                                    else:
                                                                                                                                        mem[(32 * idx - 1) + 224] = (1000 * mem[_1323 + 50 len 14] * mem[(32 * idx) + 224] / (997 * mem[_1323 + 18 len 14]) - (997 * mem[(32 * idx) + 224])) + 1
                                                                                                                                        if not idx:
                                                                                                                                            revert with 0, 17
                                                                                                                                        else:
                                                                                                                                            idx = idx - 1
                                                                                                                                            continue 
                                            else:
                                                if not mem[(32 * idx) + 140 len 20]:
                                                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                                                else:
                                                    require ext_code.size(address(cd[4]))
                                                    staticcall address(cd[4]).getReserves() with:
                                                            gas gas_remaining wei
                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        _1324 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 96
                                                        require mem[_1324] == mem[_1324 + 18 len 14]
                                                        require mem[_1324 + 32] == mem[_1324 + 50 len 14]
                                                        require mem[_1324 + 64] == mem[_1324 + 92 len 4]
                                                        if address(_1179) == address(_1190):
                                                            if idx >= mem[192]:
                                                                revert with 0, 50
                                                            else:
                                                                if mem[(32 * idx) + 224] <= 0:
                                                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_OUTPUT_AMOUNT'
                                                                else:
                                                                    if mem[_1324 + 18 len 14] <= 0:
                                                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                                                    else:
                                                                        if mem[_1324 + 50 len 14] <= 0:
                                                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                                                        else:
                                                                            if not mem[(32 * idx) + 224]:
                                                                                if mem[_1324 + 50 len 14] < mem[(32 * idx) + 224]:
                                                                                    revert with 0, 17
                                                                                else:
                                                                                    if mem[_1324 + 50 len 14] - mem[(32 * idx) + 224] > mem[_1324 + 50 len 14]:
                                                                                        revert with 0, 'ds-math-sub-underflow'
                                                                                    else:
                                                                                        if mem[_1324 + 50 len 14] - mem[(32 * idx) + 224] and 997 > -1 / mem[_1324 + 50 len 14] - mem[(32 * idx) + 224]:
                                                                                            revert with 0, 17
                                                                                        else:
                                                                                            if (997 * mem[_1324 + 50 len 14]) - (997 * mem[(32 * idx) + 224]) / 997 != mem[_1324 + 50 len 14] - mem[(32 * idx) + 224]:
                                                                                                revert with 0, 'ds-math-mul-overflow'
                                                                                            else:
                                                                                                if not (997 * mem[_1324 + 50 len 14]) - (997 * mem[(32 * idx) + 224]):
                                                                                                    revert with 0, 18
                                                                                                else:
                                                                                                    if 0 / (997 * mem[_1324 + 50 len 14]) - (997 * mem[(32 * idx) + 224]) > -2:
                                                                                                        revert with 0, 17
                                                                                                    else:
                                                                                                        if (0 / (997 * mem[_1324 + 50 len 14]) - (997 * mem[(32 * idx) + 224])) + 1 < 0 / (997 * mem[_1324 + 50 len 14]) - (997 * mem[(32 * idx) + 224]):
                                                                                                            revert with 0, 'ds-math-add-overflow'
                                                                                                        else:
                                                                                                            if idx < 1:
                                                                                                                revert with 0, 17
                                                                                                            else:
                                                                                                                if idx - 1 >= mem[192]:
                                                                                                                    revert with 0, 50
                                                                                                                else:
                                                                                                                    mem[(32 * idx - 1) + 224] = (0 / (997 * mem[_1324 + 50 len 14]) - (997 * mem[(32 * idx) + 224])) + 1
                                                                                                                    if not idx:
                                                                                                                        revert with 0, 17
                                                                                                                    else:
                                                                                                                        idx = idx - 1
                                                                                                                        continue 
                                                                            else:
                                                                                if mem[_1324 + 18 len 14] and mem[(32 * idx) + 224] > -1 / mem[_1324 + 18 len 14]:
                                                                                    revert with 0, 17
                                                                                else:
                                                                                    if not mem[(32 * idx) + 224]:
                                                                                        revert with 0, 18
                                                                                    else:
                                                                                        if mem[_1324 + 18 len 14] * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != mem[_1324 + 18 len 14]:
                                                                                            revert with 0, 'ds-math-mul-overflow'
                                                                                        else:
                                                                                            if mem[_1324 + 18 len 14] * mem[(32 * idx) + 224] and 1000 > -1 / mem[_1324 + 18 len 14] * mem[(32 * idx) + 224]:
                                                                                                revert with 0, 17
                                                                                            else:
                                                                                                if 1000 * mem[_1324 + 18 len 14] * mem[(32 * idx) + 224] / 1000 != mem[_1324 + 18 len 14] * mem[(32 * idx) + 224]:
                                                                                                    revert with 0, 'ds-math-mul-overflow'
                                                                                                else:
                                                                                                    if mem[_1324 + 50 len 14] < mem[(32 * idx) + 224]:
                                                                                                        revert with 0, 17
                                                                                                    else:
                                                                                                        if mem[_1324 + 50 len 14] - mem[(32 * idx) + 224] > mem[_1324 + 50 len 14]:
                                                                                                            revert with 0, 'ds-math-sub-underflow'
                                                                                                        else:
                                                                                                            if mem[_1324 + 50 len 14] - mem[(32 * idx) + 224] and 997 > -1 / mem[_1324 + 50 len 14] - mem[(32 * idx) + 224]:
                                                                                                                revert with 0, 17
                                                                                                            else:
                                                                                                                if (997 * mem[_1324 + 50 len 14]) - (997 * mem[(32 * idx) + 224]) / 997 != mem[_1324 + 50 len 14] - mem[(32 * idx) + 224]:
                                                                                                                    revert with 0, 'ds-math-mul-overflow'
                                                                                                                else:
                                                                                                                    if not (997 * mem[_1324 + 50 len 14]) - (997 * mem[(32 * idx) + 224]):
                                                                                                                        revert with 0, 18
                                                                                                                    else:
                                                                                                                        if 1000 * mem[_1324 + 18 len 14] * mem[(32 * idx) + 224] / (997 * mem[_1324 + 50 len 14]) - (997 * mem[(32 * idx) + 224]) > -2:
                                                                                                                            revert with 0, 17
                                                                                                                        else:
                                                                                                                            if (1000 * mem[_1324 + 18 len 14] * mem[(32 * idx) + 224] / (997 * mem[_1324 + 50 len 14]) - (997 * mem[(32 * idx) + 224])) + 1 < 1000 * mem[_1324 + 18 len 14] * mem[(32 * idx) + 224] / (997 * mem[_1324 + 50 len 14]) - (997 * mem[(32 * idx) + 224]):
                                                                                                                                revert with 0, 'ds-math-add-overflow'
                                                                                                                            else:
                                                                                                                                if idx < 1:
                                                                                                                                    revert with 0, 17
                                                                                                                                else:
                                                                                                                                    if idx - 1 >= mem[192]:
                                                                                                                                        revert with 0, 50
                                                                                                                                    else:
                                                                                                                                        mem[(32 * idx - 1) + 224] = (1000 * mem[_1324 + 18 len 14] * mem[(32 * idx) + 224] / (997 * mem[_1324 + 50 len 14]) - (997 * mem[(32 * idx) + 224])) + 1
                                                                                                                                        if not idx:
                                                                                                                                            revert with 0, 17
                                                                                                                                        else:
                                                                                                                                            idx = idx - 1
                                                                                                                                            continue 
                                                        else:
                                                            if idx >= mem[192]:
                                                                revert with 0, 50
                                                            else:
                                                                if mem[(32 * idx) + 224] <= 0:
                                                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_OUTPUT_AMOUNT'
                                                                else:
                                                                    if mem[_1324 + 50 len 14] <= 0:
                                                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                                                    else:
                                                                        if mem[_1324 + 18 len 14] <= 0:
                                                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                                                        else:
                                                                            if not mem[(32 * idx) + 224]:
                                                                                if mem[_1324 + 18 len 14] < mem[(32 * idx) + 224]:
                                                                                    revert with 0, 17
                                                                                else:
                                                                                    if mem[_1324 + 18 len 14] - mem[(32 * idx) + 224] > mem[_1324 + 18 len 14]:
                                                                                        revert with 0, 'ds-math-sub-underflow'
                                                                                    else:
                                                                                        if mem[_1324 + 18 len 14] - mem[(32 * idx) + 224] and 997 > -1 / mem[_1324 + 18 len 14] - mem[(32 * idx) + 224]:
                                                                                            revert with 0, 17
                                                                                        else:
                                                                                            if (997 * mem[_1324 + 18 len 14]) - (997 * mem[(32 * idx) + 224]) / 997 != mem[_1324 + 18 len 14] - mem[(32 * idx) + 224]:
                                                                                                revert with 0, 'ds-math-mul-overflow'
                                                                                            else:
                                                                                                if not (997 * mem[_1324 + 18 len 14]) - (997 * mem[(32 * idx) + 224]):
                                                                                                    revert with 0, 18
                                                                                                else:
                                                                                                    if 0 / (997 * mem[_1324 + 18 len 14]) - (997 * mem[(32 * idx) + 224]) > -2:
                                                                                                        revert with 0, 17
                                                                                                    else:
                                                                                                        if (0 / (997 * mem[_1324 + 18 len 14]) - (997 * mem[(32 * idx) + 224])) + 1 < 0 / (997 * mem[_1324 + 18 len 14]) - (997 * mem[(32 * idx) + 224]):
                                                                                                            revert with 0, 'ds-math-add-overflow'
                                                                                                        else:
                                                                                                            if idx < 1:
                                                                                                                revert with 0, 17
                                                                                                            else:
                                                                                                                if idx - 1 >= mem[192]:
                                                                                                                    revert with 0, 50
                                                                                                                else:
                                                                                                                    mem[(32 * idx - 1) + 224] = (0 / (997 * mem[_1324 + 18 len 14]) - (997 * mem[(32 * idx) + 224])) + 1
                                                                                                                    if not idx:
                                                                                                                        revert with 0, 17
                                                                                                                    else:
                                                                                                                        idx = idx - 1
                                                                                                                        continue 
                                                                            else:
                                                                                if mem[_1324 + 50 len 14] and mem[(32 * idx) + 224] > -1 / mem[_1324 + 50 len 14]:
                                                                                    revert with 0, 17
                                                                                else:
                                                                                    if not mem[(32 * idx) + 224]:
                                                                                        revert with 0, 18
                                                                                    else:
                                                                                        if mem[_1324 + 50 len 14] * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != mem[_1324 + 50 len 14]:
                                                                                            revert with 0, 'ds-math-mul-overflow'
                                                                                        else:
                                                                                            if mem[_1324 + 50 len 14] * mem[(32 * idx) + 224] and 1000 > -1 / mem[_1324 + 50 len 14] * mem[(32 * idx) + 224]:
                                                                                                revert with 0, 17
                                                                                            else:
                                                                                                if 1000 * mem[_1324 + 50 len 14] * mem[(32 * idx) + 224] / 1000 != mem[_1324 + 50 len 14] * mem[(32 * idx) + 224]:
                                                                                                    revert with 0, 'ds-math-mul-overflow'
                                                                                                else:
                                                                                                    if mem[_1324 + 18 len 14] < mem[(32 * idx) + 224]:
                                                                                                        revert with 0, 17
                                                                                                    else:
                                                                                                        if mem[_1324 + 18 len 14] - mem[(32 * idx) + 224] > mem[_1324 + 18 len 14]:
                                                                                                            revert with 0, 'ds-math-sub-underflow'
                                                                                                        else:
                                                                                                            if mem[_1324 + 18 len 14] - mem[(32 * idx) + 224] and 997 > -1 / mem[_1324 + 18 len 14] - mem[(32 * idx) + 224]:
                                                                                                                revert with 0, 17
                                                                                                            else:
                                                                                                                if (997 * mem[_1324 + 18 len 14]) - (997 * mem[(32 * idx) + 224]) / 997 != mem[_1324 + 18 len 14] - mem[(32 * idx) + 224]:
                                                                                                                    revert with 0, 'ds-math-mul-overflow'
                                                                                                                else:
                                                                                                                    if not (997 * mem[_1324 + 18 len 14]) - (997 * mem[(32 * idx) + 224]):
                                                                                                                        revert with 0, 18
                                                                                                                    else:
                                                                                                                        if 1000 * mem[_1324 + 50 len 14] * mem[(32 * idx) + 224] / (997 * mem[_1324 + 18 len 14]) - (997 * mem[(32 * idx) + 224]) > -2:
                                                                                                                            revert with 0, 17
                                                                                                                        else:
                                                                                                                            if (1000 * mem[_1324 + 50 len 14] * mem[(32 * idx) + 224] / (997 * mem[_1324 + 18 len 14]) - (997 * mem[(32 * idx) + 224])) + 1 < 1000 * mem[_1324 + 50 len 14] * mem[(32 * idx) + 224] / (997 * mem[_1324 + 18 len 14]) - (997 * mem[(32 * idx) + 224]):
                                                                                                                                revert with 0, 'ds-math-add-overflow'
                                                                                                                            else:
                                                                                                                                if idx < 1:
                                                                                                                                    revert with 0, 17
                                                                                                                                else:
                                                                                                                                    if idx - 1 >= mem[192]:
                                                                                                                                        revert with 0, 50
                                                                                                                                    else:
                                                                                                                                        mem[(32 * idx - 1) + 224] = (1000 * mem[_1324 + 50 len 14] * mem[(32 * idx) + 224] / (997 * mem[_1324 + 18 len 14]) - (997 * mem[(32 * idx) + 224])) + 1
                                                                                                                                        if not idx:
                                                                                                                                            revert with 0, 17
                                                                                                                                        else:
                                                                                                                                            idx = idx - 1
                                                                                                                                            continue 
                        if 0 >= mem[192]:
                            revert with 0, 50
                        else:
                            _1155 = mem[224]
                            _1156 = mem[64]
                            mem[mem[64] + 32] = address(cd[132])
                            mem[mem[64] + 64] = _1155
                            mem[mem[64] + 96] = cd[164] % 16777216
                            mem[mem[64] + 128] = 128
                            mem[mem[64] + 160] = ('cd', 196).length
                            idx = 0
                            s = mem[64] + 192
                            t = cd[196] + 36
                            while idx < ('cd', 196).length:
                                require cd[t] == address(cd[t])
                                mem[s] = address(cd[t])
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            _2214 = mem[64]
                            mem[mem[64]] = _1156 + (32 * ('cd', 196).length) + -mem[64] + 160
                            mem[64] = _1156 + (32 * ('cd', 196).length) + 192
                            mem[_1156 + (32 * ('cd', 196).length) + 192] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1156 + (32 * ('cd', 196).length) + 196] = 0
                            mem[_1156 + (32 * ('cd', 196).length) + 228] = cd[100]
                            mem[_1156 + (32 * ('cd', 196).length) + 260] = this.address
                            mem[_1156 + (32 * ('cd', 196).length) + 292] = 128
                            _2222 = mem[_2214]
                            mem[_1156 + (32 * ('cd', 196).length) + 324] = mem[_2214]
                            mem[_1156 + (32 * ('cd', 196).length) + 356 len ceil32(_2222)] = mem[_2214 + 32 len ceil32(_2222)]
                            if ceil32(_2222) <= _2222:
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, cd[100], address(this.address), 128, mem[_1156 + (32 * ('cd', 196).length) + 324 len ceil32(_2222) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                            else:
                                mem[_1156 + (32 * ('cd', 196).length) + _2222 + 356] = 0
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, cd[100], address(this.address), 128, mem[_1156 + (32 * ('cd', 196).length) + 324 len ceil32(_2222) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                    else:
                        mem[96] = 2
                        mem[128] = address(cd[36])
                        mem[160] = address(cd[68])
                        mem[192] = 2
                        mem[64] = 288
                        mem[224 len 64] = call.data[calldata.size len 64]
                        mem[256] = cd[100]
                        idx = mem[96] - 1
                        while idx:
                            if idx < 1:
                                revert with 0, 17
                            else:
                                if idx - 1 >= mem[96]:
                                    revert with 0, 50
                                else:
                                    _1183 = mem[(32 * idx - 1) + 128]
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    else:
                                        _1192 = mem[(32 * idx) + 128]
                                        if mem[(32 * idx - 1) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                                            revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                                        else:
                                            if mem[(32 * idx - 1) + 140 len 20] < mem[(32 * idx) + 140 len 20]:
                                                if not mem[(32 * idx - 1) + 140 len 20]:
                                                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                                                else:
                                                    require ext_code.size(address(cd[4]))
                                                    staticcall address(cd[4]).getReserves() with:
                                                            gas gas_remaining wei
                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        _1327 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 96
                                                        require mem[_1327] == mem[_1327 + 18 len 14]
                                                        require mem[_1327 + 32] == mem[_1327 + 50 len 14]
                                                        require mem[_1327 + 64] == mem[_1327 + 92 len 4]
                                                        if address(_1183) == address(_1183):
                                                            if idx >= mem[192]:
                                                                revert with 0, 50
                                                            else:
                                                                if mem[(32 * idx) + 224] <= 0:
                                                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_OUTPUT_AMOUNT'
                                                                else:
                                                                    if mem[_1327 + 18 len 14] <= 0:
                                                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                                                    else:
                                                                        if mem[_1327 + 50 len 14] <= 0:
                                                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                                                        else:
                                                                            if not mem[(32 * idx) + 224]:
                                                                                if mem[_1327 + 50 len 14] < mem[(32 * idx) + 224]:
                                                                                    revert with 0, 17
                                                                                else:
                                                                                    if mem[_1327 + 50 len 14] - mem[(32 * idx) + 224] > mem[_1327 + 50 len 14]:
                                                                                        revert with 0, 'ds-math-sub-underflow'
                                                                                    else:
                                                                                        if mem[_1327 + 50 len 14] - mem[(32 * idx) + 224] and 997 > -1 / mem[_1327 + 50 len 14] - mem[(32 * idx) + 224]:
                                                                                            revert with 0, 17
                                                                                        else:
                                                                                            if (997 * mem[_1327 + 50 len 14]) - (997 * mem[(32 * idx) + 224]) / 997 != mem[_1327 + 50 len 14] - mem[(32 * idx) + 224]:
                                                                                                revert with 0, 'ds-math-mul-overflow'
                                                                                            else:
                                                                                                if not (997 * mem[_1327 + 50 len 14]) - (997 * mem[(32 * idx) + 224]):
                                                                                                    revert with 0, 18
                                                                                                else:
                                                                                                    if 0 / (997 * mem[_1327 + 50 len 14]) - (997 * mem[(32 * idx) + 224]) > -2:
                                                                                                        revert with 0, 17
                                                                                                    else:
                                                                                                        if (0 / (997 * mem[_1327 + 50 len 14]) - (997 * mem[(32 * idx) + 224])) + 1 < 0 / (997 * mem[_1327 + 50 len 14]) - (997 * mem[(32 * idx) + 224]):
                                                                                                            revert with 0, 'ds-math-add-overflow'
                                                                                                        else:
                                                                                                            if idx < 1:
                                                                                                                revert with 0, 17
                                                                                                            else:
                                                                                                                if idx - 1 >= mem[192]:
                                                                                                                    revert with 0, 50
                                                                                                                else:
                                                                                                                    mem[(32 * idx - 1) + 224] = (0 / (997 * mem[_1327 + 50 len 14]) - (997 * mem[(32 * idx) + 224])) + 1
                                                                                                                    if not idx:
                                                                                                                        revert with 0, 17
                                                                                                                    else:
                                                                                                                        idx = idx - 1
                                                                                                                        continue 
                                                                            else:
                                                                                if mem[_1327 + 18 len 14] and mem[(32 * idx) + 224] > -1 / mem[_1327 + 18 len 14]:
                                                                                    revert with 0, 17
                                                                                else:
                                                                                    if not mem[(32 * idx) + 224]:
                                                                                        revert with 0, 18
                                                                                    else:
                                                                                        if mem[_1327 + 18 len 14] * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != mem[_1327 + 18 len 14]:
                                                                                            revert with 0, 'ds-math-mul-overflow'
                                                                                        else:
                                                                                            if mem[_1327 + 18 len 14] * mem[(32 * idx) + 224] and 1000 > -1 / mem[_1327 + 18 len 14] * mem[(32 * idx) + 224]:
                                                                                                revert with 0, 17
                                                                                            else:
                                                                                                if 1000 * mem[_1327 + 18 len 14] * mem[(32 * idx) + 224] / 1000 != mem[_1327 + 18 len 14] * mem[(32 * idx) + 224]:
                                                                                                    revert with 0, 'ds-math-mul-overflow'
                                                                                                else:
                                                                                                    if mem[_1327 + 50 len 14] < mem[(32 * idx) + 224]:
                                                                                                        revert with 0, 17
                                                                                                    else:
                                                                                                        if mem[_1327 + 50 len 14] - mem[(32 * idx) + 224] > mem[_1327 + 50 len 14]:
                                                                                                            revert with 0, 'ds-math-sub-underflow'
                                                                                                        else:
                                                                                                            if mem[_1327 + 50 len 14] - mem[(32 * idx) + 224] and 997 > -1 / mem[_1327 + 50 len 14] - mem[(32 * idx) + 224]:
                                                                                                                revert with 0, 17
                                                                                                            else:
                                                                                                                if (997 * mem[_1327 + 50 len 14]) - (997 * mem[(32 * idx) + 224]) / 997 != mem[_1327 + 50 len 14] - mem[(32 * idx) + 224]:
                                                                                                                    revert with 0, 'ds-math-mul-overflow'
                                                                                                                else:
                                                                                                                    if not (997 * mem[_1327 + 50 len 14]) - (997 * mem[(32 * idx) + 224]):
                                                                                                                        revert with 0, 18
                                                                                                                    else:
                                                                                                                        if 1000 * mem[_1327 + 18 len 14] * mem[(32 * idx) + 224] / (997 * mem[_1327 + 50 len 14]) - (997 * mem[(32 * idx) + 224]) > -2:
                                                                                                                            revert with 0, 17
                                                                                                                        else:
                                                                                                                            if (1000 * mem[_1327 + 18 len 14] * mem[(32 * idx) + 224] / (997 * mem[_1327 + 50 len 14]) - (997 * mem[(32 * idx) + 224])) + 1 < 1000 * mem[_1327 + 18 len 14] * mem[(32 * idx) + 224] / (997 * mem[_1327 + 50 len 14]) - (997 * mem[(32 * idx) + 224]):
                                                                                                                                revert with 0, 'ds-math-add-overflow'
                                                                                                                            else:
                                                                                                                                if idx < 1:
                                                                                                                                    revert with 0, 17
                                                                                                                                else:
                                                                                                                                    if idx - 1 >= mem[192]:
                                                                                                                                        revert with 0, 50
                                                                                                                                    else:
                                                                                                                                        mem[(32 * idx - 1) + 224] = (1000 * mem[_1327 + 18 len 14] * mem[(32 * idx) + 224] / (997 * mem[_1327 + 50 len 14]) - (997 * mem[(32 * idx) + 224])) + 1
                                                                                                                                        if not idx:
                                                                                                                                            revert with 0, 17
                                                                                                                                        else:
                                                                                                                                            idx = idx - 1
                                                                                                                                            continue 
                                                        else:
                                                            if idx >= mem[192]:
                                                                revert with 0, 50
                                                            else:
                                                                if mem[(32 * idx) + 224] <= 0:
                                                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_OUTPUT_AMOUNT'
                                                                else:
                                                                    if mem[_1327 + 50 len 14] <= 0:
                                                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                                                    else:
                                                                        if mem[_1327 + 18 len 14] <= 0:
                                                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                                                        else:
                                                                            if not mem[(32 * idx) + 224]:
                                                                                if mem[_1327 + 18 len 14] < mem[(32 * idx) + 224]:
                                                                                    revert with 0, 17
                                                                                else:
                                                                                    if mem[_1327 + 18 len 14] - mem[(32 * idx) + 224] > mem[_1327 + 18 len 14]:
                                                                                        revert with 0, 'ds-math-sub-underflow'
                                                                                    else:
                                                                                        if mem[_1327 + 18 len 14] - mem[(32 * idx) + 224] and 997 > -1 / mem[_1327 + 18 len 14] - mem[(32 * idx) + 224]:
                                                                                            revert with 0, 17
                                                                                        else:
                                                                                            if (997 * mem[_1327 + 18 len 14]) - (997 * mem[(32 * idx) + 224]) / 997 != mem[_1327 + 18 len 14] - mem[(32 * idx) + 224]:
                                                                                                revert with 0, 'ds-math-mul-overflow'
                                                                                            else:
                                                                                                if not (997 * mem[_1327 + 18 len 14]) - (997 * mem[(32 * idx) + 224]):
                                                                                                    revert with 0, 18
                                                                                                else:
                                                                                                    if 0 / (997 * mem[_1327 + 18 len 14]) - (997 * mem[(32 * idx) + 224]) > -2:
                                                                                                        revert with 0, 17
                                                                                                    else:
                                                                                                        if (0 / (997 * mem[_1327 + 18 len 14]) - (997 * mem[(32 * idx) + 224])) + 1 < 0 / (997 * mem[_1327 + 18 len 14]) - (997 * mem[(32 * idx) + 224]):
                                                                                                            revert with 0, 'ds-math-add-overflow'
                                                                                                        else:
                                                                                                            if idx < 1:
                                                                                                                revert with 0, 17
                                                                                                            else:
                                                                                                                if idx - 1 >= mem[192]:
                                                                                                                    revert with 0, 50
                                                                                                                else:
                                                                                                                    mem[(32 * idx - 1) + 224] = (0 / (997 * mem[_1327 + 18 len 14]) - (997 * mem[(32 * idx) + 224])) + 1
                                                                                                                    if not idx:
                                                                                                                        revert with 0, 17
                                                                                                                    else:
                                                                                                                        idx = idx - 1
                                                                                                                        continue 
                                                                            else:
                                                                                if mem[_1327 + 50 len 14] and mem[(32 * idx) + 224] > -1 / mem[_1327 + 50 len 14]:
                                                                                    revert with 0, 17
                                                                                else:
                                                                                    if not mem[(32 * idx) + 224]:
                                                                                        revert with 0, 18
                                                                                    else:
                                                                                        if mem[_1327 + 50 len 14] * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != mem[_1327 + 50 len 14]:
                                                                                            revert with 0, 'ds-math-mul-overflow'
                                                                                        else:
                                                                                            if mem[_1327 + 50 len 14] * mem[(32 * idx) + 224] and 1000 > -1 / mem[_1327 + 50 len 14] * mem[(32 * idx) + 224]:
                                                                                                revert with 0, 17
                                                                                            else:
                                                                                                if 1000 * mem[_1327 + 50 len 14] * mem[(32 * idx) + 224] / 1000 != mem[_1327 + 50 len 14] * mem[(32 * idx) + 224]:
                                                                                                    revert with 0, 'ds-math-mul-overflow'
                                                                                                else:
                                                                                                    if mem[_1327 + 18 len 14] < mem[(32 * idx) + 224]:
                                                                                                        revert with 0, 17
                                                                                                    else:
                                                                                                        if mem[_1327 + 18 len 14] - mem[(32 * idx) + 224] > mem[_1327 + 18 len 14]:
                                                                                                            revert with 0, 'ds-math-sub-underflow'
                                                                                                        else:
                                                                                                            if mem[_1327 + 18 len 14] - mem[(32 * idx) + 224] and 997 > -1 / mem[_1327 + 18 len 14] - mem[(32 * idx) + 224]:
                                                                                                                revert with 0, 17
                                                                                                            else:
                                                                                                                if (997 * mem[_1327 + 18 len 14]) - (997 * mem[(32 * idx) + 224]) / 997 != mem[_1327 + 18 len 14] - mem[(32 * idx) + 224]:
                                                                                                                    revert with 0, 'ds-math-mul-overflow'
                                                                                                                else:
                                                                                                                    if not (997 * mem[_1327 + 18 len 14]) - (997 * mem[(32 * idx) + 224]):
                                                                                                                        revert with 0, 18
                                                                                                                    else:
                                                                                                                        if 1000 * mem[_1327 + 50 len 14] * mem[(32 * idx) + 224] / (997 * mem[_1327 + 18 len 14]) - (997 * mem[(32 * idx) + 224]) > -2:
                                                                                                                            revert with 0, 17
                                                                                                                        else:
                                                                                                                            if (1000 * mem[_1327 + 50 len 14] * mem[(32 * idx) + 224] / (997 * mem[_1327 + 18 len 14]) - (997 * mem[(32 * idx) + 224])) + 1 < 1000 * mem[_1327 + 50 len 14] * mem[(32 * idx) + 224] / (997 * mem[_1327 + 18 len 14]) - (997 * mem[(32 * idx) + 224]):
                                                                                                                                revert with 0, 'ds-math-add-overflow'
                                                                                                                            else:
                                                                                                                                if idx < 1:
                                                                                                                                    revert with 0, 17
                                                                                                                                else:
                                                                                                                                    if idx - 1 >= mem[192]:
                                                                                                                                        revert with 0, 50
                                                                                                                                    else:
                                                                                                                                        mem[(32 * idx - 1) + 224] = (1000 * mem[_1327 + 50 len 14] * mem[(32 * idx) + 224] / (997 * mem[_1327 + 18 len 14]) - (997 * mem[(32 * idx) + 224])) + 1
                                                                                                                                        if not idx:
                                                                                                                                            revert with 0, 17
                                                                                                                                        else:
                                                                                                                                            idx = idx - 1
                                                                                                                                            continue 
                                            else:
                                                if not mem[(32 * idx) + 140 len 20]:
                                                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                                                else:
                                                    require ext_code.size(address(cd[4]))
                                                    staticcall address(cd[4]).getReserves() with:
                                                            gas gas_remaining wei
                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        _1328 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 96
                                                        require mem[_1328] == mem[_1328 + 18 len 14]
                                                        require mem[_1328 + 32] == mem[_1328 + 50 len 14]
                                                        require mem[_1328 + 64] == mem[_1328 + 92 len 4]
                                                        if address(_1183) == address(_1192):
                                                            if idx >= mem[192]:
                                                                revert with 0, 50
                                                            else:
                                                                if mem[(32 * idx) + 224] <= 0:
                                                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_OUTPUT_AMOUNT'
                                                                else:
                                                                    if mem[_1328 + 18 len 14] <= 0:
                                                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                                                    else:
                                                                        if mem[_1328 + 50 len 14] <= 0:
                                                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                                                        else:
                                                                            if not mem[(32 * idx) + 224]:
                                                                                if mem[_1328 + 50 len 14] < mem[(32 * idx) + 224]:
                                                                                    revert with 0, 17
                                                                                else:
                                                                                    if mem[_1328 + 50 len 14] - mem[(32 * idx) + 224] > mem[_1328 + 50 len 14]:
                                                                                        revert with 0, 'ds-math-sub-underflow'
                                                                                    else:
                                                                                        if mem[_1328 + 50 len 14] - mem[(32 * idx) + 224] and 997 > -1 / mem[_1328 + 50 len 14] - mem[(32 * idx) + 224]:
                                                                                            revert with 0, 17
                                                                                        else:
                                                                                            if (997 * mem[_1328 + 50 len 14]) - (997 * mem[(32 * idx) + 224]) / 997 != mem[_1328 + 50 len 14] - mem[(32 * idx) + 224]:
                                                                                                revert with 0, 'ds-math-mul-overflow'
                                                                                            else:
                                                                                                if not (997 * mem[_1328 + 50 len 14]) - (997 * mem[(32 * idx) + 224]):
                                                                                                    revert with 0, 18
                                                                                                else:
                                                                                                    if 0 / (997 * mem[_1328 + 50 len 14]) - (997 * mem[(32 * idx) + 224]) > -2:
                                                                                                        revert with 0, 17
                                                                                                    else:
                                                                                                        if (0 / (997 * mem[_1328 + 50 len 14]) - (997 * mem[(32 * idx) + 224])) + 1 < 0 / (997 * mem[_1328 + 50 len 14]) - (997 * mem[(32 * idx) + 224]):
                                                                                                            revert with 0, 'ds-math-add-overflow'
                                                                                                        else:
                                                                                                            if idx < 1:
                                                                                                                revert with 0, 17
                                                                                                            else:
                                                                                                                if idx - 1 >= mem[192]:
                                                                                                                    revert with 0, 50
                                                                                                                else:
                                                                                                                    mem[(32 * idx - 1) + 224] = (0 / (997 * mem[_1328 + 50 len 14]) - (997 * mem[(32 * idx) + 224])) + 1
                                                                                                                    if not idx:
                                                                                                                        revert with 0, 17
                                                                                                                    else:
                                                                                                                        idx = idx - 1
                                                                                                                        continue 
                                                                            else:
                                                                                if mem[_1328 + 18 len 14] and mem[(32 * idx) + 224] > -1 / mem[_1328 + 18 len 14]:
                                                                                    revert with 0, 17
                                                                                else:
                                                                                    if not mem[(32 * idx) + 224]:
                                                                                        revert with 0, 18
                                                                                    else:
                                                                                        if mem[_1328 + 18 len 14] * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != mem[_1328 + 18 len 14]:
                                                                                            revert with 0, 'ds-math-mul-overflow'
                                                                                        else:
                                                                                            if mem[_1328 + 18 len 14] * mem[(32 * idx) + 224] and 1000 > -1 / mem[_1328 + 18 len 14] * mem[(32 * idx) + 224]:
                                                                                                revert with 0, 17
                                                                                            else:
                                                                                                if 1000 * mem[_1328 + 18 len 14] * mem[(32 * idx) + 224] / 1000 != mem[_1328 + 18 len 14] * mem[(32 * idx) + 224]:
                                                                                                    revert with 0, 'ds-math-mul-overflow'
                                                                                                else:
                                                                                                    if mem[_1328 + 50 len 14] < mem[(32 * idx) + 224]:
                                                                                                        revert with 0, 17
                                                                                                    else:
                                                                                                        if mem[_1328 + 50 len 14] - mem[(32 * idx) + 224] > mem[_1328 + 50 len 14]:
                                                                                                            revert with 0, 'ds-math-sub-underflow'
                                                                                                        else:
                                                                                                            if mem[_1328 + 50 len 14] - mem[(32 * idx) + 224] and 997 > -1 / mem[_1328 + 50 len 14] - mem[(32 * idx) + 224]:
                                                                                                                revert with 0, 17
                                                                                                            else:
                                                                                                                if (997 * mem[_1328 + 50 len 14]) - (997 * mem[(32 * idx) + 224]) / 997 != mem[_1328 + 50 len 14] - mem[(32 * idx) + 224]:
                                                                                                                    revert with 0, 'ds-math-mul-overflow'
                                                                                                                else:
                                                                                                                    if not (997 * mem[_1328 + 50 len 14]) - (997 * mem[(32 * idx) + 224]):
                                                                                                                        revert with 0, 18
                                                                                                                    else:
                                                                                                                        if 1000 * mem[_1328 + 18 len 14] * mem[(32 * idx) + 224] / (997 * mem[_1328 + 50 len 14]) - (997 * mem[(32 * idx) + 224]) > -2:
                                                                                                                            revert with 0, 17
                                                                                                                        else:
                                                                                                                            if (1000 * mem[_1328 + 18 len 14] * mem[(32 * idx) + 224] / (997 * mem[_1328 + 50 len 14]) - (997 * mem[(32 * idx) + 224])) + 1 < 1000 * mem[_1328 + 18 len 14] * mem[(32 * idx) + 224] / (997 * mem[_1328 + 50 len 14]) - (997 * mem[(32 * idx) + 224]):
                                                                                                                                revert with 0, 'ds-math-add-overflow'
                                                                                                                            else:
                                                                                                                                if idx < 1:
                                                                                                                                    revert with 0, 17
                                                                                                                                else:
                                                                                                                                    if idx - 1 >= mem[192]:
                                                                                                                                        revert with 0, 50
                                                                                                                                    else:
                                                                                                                                        mem[(32 * idx - 1) + 224] = (1000 * mem[_1328 + 18 len 14] * mem[(32 * idx) + 224] / (997 * mem[_1328 + 50 len 14]) - (997 * mem[(32 * idx) + 224])) + 1
                                                                                                                                        if not idx:
                                                                                                                                            revert with 0, 17
                                                                                                                                        else:
                                                                                                                                            idx = idx - 1
                                                                                                                                            continue 
                                                        else:
                                                            if idx >= mem[192]:
                                                                revert with 0, 50
                                                            else:
                                                                if mem[(32 * idx) + 224] <= 0:
                                                                    revert with 0, 'UniswapV2Library: INSUFFICIENT_OUTPUT_AMOUNT'
                                                                else:
                                                                    if mem[_1328 + 50 len 14] <= 0:
                                                                        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                                                    else:
                                                                        if mem[_1328 + 18 len 14] <= 0:
                                                                            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                                                                        else:
                                                                            if not mem[(32 * idx) + 224]:
                                                                                if mem[_1328 + 18 len 14] < mem[(32 * idx) + 224]:
                                                                                    revert with 0, 17
                                                                                else:
                                                                                    if mem[_1328 + 18 len 14] - mem[(32 * idx) + 224] > mem[_1328 + 18 len 14]:
                                                                                        revert with 0, 'ds-math-sub-underflow'
                                                                                    else:
                                                                                        if mem[_1328 + 18 len 14] - mem[(32 * idx) + 224] and 997 > -1 / mem[_1328 + 18 len 14] - mem[(32 * idx) + 224]:
                                                                                            revert with 0, 17
                                                                                        else:
                                                                                            if (997 * mem[_1328 + 18 len 14]) - (997 * mem[(32 * idx) + 224]) / 997 != mem[_1328 + 18 len 14] - mem[(32 * idx) + 224]:
                                                                                                revert with 0, 'ds-math-mul-overflow'
                                                                                            else:
                                                                                                if not (997 * mem[_1328 + 18 len 14]) - (997 * mem[(32 * idx) + 224]):
                                                                                                    revert with 0, 18
                                                                                                else:
                                                                                                    if 0 / (997 * mem[_1328 + 18 len 14]) - (997 * mem[(32 * idx) + 224]) > -2:
                                                                                                        revert with 0, 17
                                                                                                    else:
                                                                                                        if (0 / (997 * mem[_1328 + 18 len 14]) - (997 * mem[(32 * idx) + 224])) + 1 < 0 / (997 * mem[_1328 + 18 len 14]) - (997 * mem[(32 * idx) + 224]):
                                                                                                            revert with 0, 'ds-math-add-overflow'
                                                                                                        else:
                                                                                                            if idx < 1:
                                                                                                                revert with 0, 17
                                                                                                            else:
                                                                                                                if idx - 1 >= mem[192]:
                                                                                                                    revert with 0, 50
                                                                                                                else:
                                                                                                                    mem[(32 * idx - 1) + 224] = (0 / (997 * mem[_1328 + 18 len 14]) - (997 * mem[(32 * idx) + 224])) + 1
                                                                                                                    if not idx:
                                                                                                                        revert with 0, 17
                                                                                                                    else:
                                                                                                                        idx = idx - 1
                                                                                                                        continue 
                                                                            else:
                                                                                if mem[_1328 + 50 len 14] and mem[(32 * idx) + 224] > -1 / mem[_1328 + 50 len 14]:
                                                                                    revert with 0, 17
                                                                                else:
                                                                                    if not mem[(32 * idx) + 224]:
                                                                                        revert with 0, 18
                                                                                    else:
                                                                                        if mem[_1328 + 50 len 14] * mem[(32 * idx) + 224] / mem[(32 * idx) + 224] != mem[_1328 + 50 len 14]:
                                                                                            revert with 0, 'ds-math-mul-overflow'
                                                                                        else:
                                                                                            if mem[_1328 + 50 len 14] * mem[(32 * idx) + 224] and 1000 > -1 / mem[_1328 + 50 len 14] * mem[(32 * idx) + 224]:
                                                                                                revert with 0, 17
                                                                                            else:
                                                                                                if 1000 * mem[_1328 + 50 len 14] * mem[(32 * idx) + 224] / 1000 != mem[_1328 + 50 len 14] * mem[(32 * idx) + 224]:
                                                                                                    revert with 0, 'ds-math-mul-overflow'
                                                                                                else:
                                                                                                    if mem[_1328 + 18 len 14] < mem[(32 * idx) + 224]:
                                                                                                        revert with 0, 17
                                                                                                    else:
                                                                                                        if mem[_1328 + 18 len 14] - mem[(32 * idx) + 224] > mem[_1328 + 18 len 14]:
                                                                                                            revert with 0, 'ds-math-sub-underflow'
                                                                                                        else:
                                                                                                            if mem[_1328 + 18 len 14] - mem[(32 * idx) + 224] and 997 > -1 / mem[_1328 + 18 len 14] - mem[(32 * idx) + 224]:
                                                                                                                revert with 0, 17
                                                                                                            else:
                                                                                                                if (997 * mem[_1328 + 18 len 14]) - (997 * mem[(32 * idx) + 224]) / 997 != mem[_1328 + 18 len 14] - mem[(32 * idx) + 224]:
                                                                                                                    revert with 0, 'ds-math-mul-overflow'
                                                                                                                else:
                                                                                                                    if not (997 * mem[_1328 + 18 len 14]) - (997 * mem[(32 * idx) + 224]):
                                                                                                                        revert with 0, 18
                                                                                                                    else:
                                                                                                                        if 1000 * mem[_1328 + 50 len 14] * mem[(32 * idx) + 224] / (997 * mem[_1328 + 18 len 14]) - (997 * mem[(32 * idx) + 224]) > -2:
                                                                                                                            revert with 0, 17
                                                                                                                        else:
                                                                                                                            if (1000 * mem[_1328 + 50 len 14] * mem[(32 * idx) + 224] / (997 * mem[_1328 + 18 len 14]) - (997 * mem[(32 * idx) + 224])) + 1 < 1000 * mem[_1328 + 50 len 14] * mem[(32 * idx) + 224] / (997 * mem[_1328 + 18 len 14]) - (997 * mem[(32 * idx) + 224]):
                                                                                                                                revert with 0, 'ds-math-add-overflow'
                                                                                                                            else:
                                                                                                                                if idx < 1:
                                                                                                                                    revert with 0, 17
                                                                                                                                else:
                                                                                                                                    if idx - 1 >= mem[192]:
                                                                                                                                        revert with 0, 50
                                                                                                                                    else:
                                                                                                                                        mem[(32 * idx - 1) + 224] = (1000 * mem[_1328 + 50 len 14] * mem[(32 * idx) + 224] / (997 * mem[_1328 + 18 len 14]) - (997 * mem[(32 * idx) + 224])) + 1
                                                                                                                                        if not idx:
                                                                                                                                            revert with 0, 17
                                                                                                                                        else:
                                                                                                                                            idx = idx - 1
                                                                                                                                            continue 
                        if 0 >= mem[192]:
                            revert with 0, 50
                        else:
                            _1159 = mem[224]
                            _1160 = mem[64]
                            mem[mem[64] + 32] = address(cd[132])
                            mem[mem[64] + 64] = _1159
                            mem[mem[64] + 96] = cd[164] % 16777216
                            mem[mem[64] + 128] = 128
                            mem[mem[64] + 160] = ('cd', 196).length
                            idx = 0
                            s = mem[64] + 192
                            t = cd[196] + 36
                            while idx < ('cd', 196).length:
                                require cd[t] == address(cd[t])
                                mem[s] = address(cd[t])
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            _2216 = mem[64]
                            mem[mem[64]] = _1160 + (32 * ('cd', 196).length) + -mem[64] + 160
                            mem[64] = _1160 + (32 * ('cd', 196).length) + 192
                            mem[_1160 + (32 * ('cd', 196).length) + 192] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1160 + (32 * ('cd', 196).length) + 196] = cd[100]
                            mem[_1160 + (32 * ('cd', 196).length) + 228] = 0
                            mem[_1160 + (32 * ('cd', 196).length) + 260] = this.address
                            mem[_1160 + (32 * ('cd', 196).length) + 292] = 128
                            _2224 = mem[_2216]
                            mem[_1160 + (32 * ('cd', 196).length) + 324] = mem[_2216]
                            mem[_1160 + (32 * ('cd', 196).length) + 356 len ceil32(_2224)] = mem[_2216 + 32 len ceil32(_2224)]
                            if ceil32(_2224) <= _2224:
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args cd[100], 0, address(this.address), 128, mem[_1160 + (32 * ('cd', 196).length) + 324 len ceil32(_2224) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                            else:
                                mem[_1160 + (32 * ('cd', 196).length) + _2224 + 356] = 0
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args cd[100], 0, address(this.address), 128, mem[_1160 + (32 * ('cd', 196).length) + 324 len ceil32(_2224) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
}



}
