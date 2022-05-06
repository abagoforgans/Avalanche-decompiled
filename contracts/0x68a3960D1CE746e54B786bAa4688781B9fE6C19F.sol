contract main {




// =====================  Runtime code  =====================


#
#  - sub_67da96fe(?)
#
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
                    if cd[(arg4 + 100)] % 16777216:
                        require ext_code.size(address(cd[(arg4 + 36)]))
                        call address(cd[(arg4 + 36)]).exactInputSingle(address arg1, address arg2, uint24 arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint160 arg8) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), address(ext_call.return_data[0]), cd[(arg4 + 100)] << 232, address(this.address), block.timestamp + 300, arg3, cd[(arg4 + 68)], 0
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
                        _1097 = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                        require (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + return_data.size + 97 > (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 128
                        _1105 = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97]
                        if mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97]) + 98 > test266151307():
                            revert with 0, 65
                        mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97]) + 98
                        mem[(6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97] = _1105
                        require _1097 + (32 * _1105) + 32 <= return_data.size
                        mem[(6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129 len ceil32(32 * _1105)] = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + _1097 + 129 len ceil32(32 * _1105)]
                        if _1105 < 1:
                            revert with 0, 17
                        if _1105 - 1 >= _1105:
                            revert with 0, 50
                        _1257 = mem[(32 * _1105 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129]
                        if mem[(32 * _1105 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129] <= cd[(arg4 + 68)]:
                            revert with 0, 'No profit'
                        if mem[(32 * _1105 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129] < cd[(arg4 + 68)]:
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
                        _1297 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1297] == bool(mem[_1297])
                        mem[mem[64] + 4] = stor0
                        mem[mem[64] + 36] = _1257 - cd[(arg4 + 68)]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args stor0, _1257 - cd[(arg4 + 68)]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1329 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1329] == bool(mem[_1329])
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
                    if cd[(arg4 + 100)] % 16777216:
                        require ext_code.size(address(cd[(arg4 + 36)]))
                        call address(cd[(arg4 + 36)]).exactInputSingle(address arg1, address arg2, uint24 arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint160 arg8) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), address(ext_call.return_data[0]), cd[(arg4 + 100)] << 232, address(this.address), block.timestamp + 300, arg2, cd[(arg4 + 68)], 0
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
                        _1098 = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                        require (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + return_data.size + 97 > (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 128
                        _1106 = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97]
                        if mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97]) + 98 > test266151307():
                            revert with 0, 65
                        mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97]) + 98
                        mem[(6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97] = _1106
                        require _1098 + (32 * _1106) + 32 <= return_data.size
                        mem[(6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129 len ceil32(32 * _1106)] = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + _1098 + 129 len ceil32(32 * _1106)]
                        if _1106 < 1:
                            revert with 0, 17
                        if _1106 - 1 >= _1106:
                            revert with 0, 50
                        _1258 = mem[(32 * _1106 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129]
                        if mem[(32 * _1106 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129] <= cd[(arg4 + 68)]:
                            revert with 0, 'No profit'
                        if mem[(32 * _1106 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129] < cd[(arg4 + 68)]:
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
                        _1298 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1298] == bool(mem[_1298])
                        mem[mem[64] + 4] = stor0
                        mem[mem[64] + 36] = _1258 - cd[(arg4 + 68)]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args stor0, _1258 - cd[(arg4 + 68)]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1330 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1330] == bool(mem[_1330])
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
                    if cd[(arg4 + 100)] % 16777216:
                        require ext_code.size(address(cd[(arg4 + 36)]))
                        call address(cd[(arg4 + 36)]).exactInputSingle(address arg1, address arg2, uint24 arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint160 arg8) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), address(ext_call.return_data[0]), cd[(arg4 + 100)] << 232, address(this.address), block.timestamp + 300, arg3, cd[(arg4 + 68)], 0
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
                        _1099 = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                        require (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + return_data.size + 97 > (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 128
                        _1107 = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97]
                        if mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97]) + 98 > test266151307():
                            revert with 0, 65
                        mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97]) + 98
                        mem[(6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97] = _1107
                        require _1099 + (32 * _1107) + 32 <= return_data.size
                        mem[(6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129 len ceil32(32 * _1107)] = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + _1099 + 129 len ceil32(32 * _1107)]
                        if _1107 < 1:
                            revert with 0, 17
                        if _1107 - 1 >= _1107:
                            revert with 0, 50
                        _1259 = mem[(32 * _1107 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129]
                        if mem[(32 * _1107 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129] <= cd[(arg4 + 68)]:
                            revert with 0, 'No profit'
                        if mem[(32 * _1107 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129] < cd[(arg4 + 68)]:
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
                        _1299 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1299] == bool(mem[_1299])
                        mem[mem[64] + 4] = stor0
                        mem[mem[64] + 36] = _1259 - cd[(arg4 + 68)]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args stor0, _1259 - cd[(arg4 + 68)]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1331 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1331] == bool(mem[_1331])
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
                    if cd[(arg4 + 100)] % 16777216:
                        require ext_code.size(address(cd[(arg4 + 36)]))
                        call address(cd[(arg4 + 36)]).exactInputSingle(address arg1, address arg2, uint24 arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint160 arg8) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), address(ext_call.return_data[0]), cd[(arg4 + 100)] << 232, address(this.address), block.timestamp + 300, arg2, cd[(arg4 + 68)], 0
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
                        _1100 = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                        require (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + return_data.size + 97 > (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 128
                        _1108 = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97]
                        if mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97]) + 98 > test266151307():
                            revert with 0, 65
                        mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97]) + 98
                        mem[(6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97] = _1108
                        require _1100 + (32 * _1108) + 32 <= return_data.size
                        mem[(6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129 len ceil32(32 * _1108)] = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + _1100 + 129 len ceil32(32 * _1108)]
                        if _1108 < 1:
                            revert with 0, 17
                        if _1108 - 1 >= _1108:
                            revert with 0, 50
                        _1260 = mem[(32 * _1108 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129]
                        if mem[(32 * _1108 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129] <= cd[(arg4 + 68)]:
                            revert with 0, 'No profit'
                        if mem[(32 * _1108 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129] < cd[(arg4 + 68)]:
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
                        _1300 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1300] == bool(mem[_1300])
                        mem[mem[64] + 4] = stor0
                        mem[mem[64] + 36] = _1260 - cd[(arg4 + 68)]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args stor0, _1260 - cd[(arg4 + 68)]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1332 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1332] == bool(mem[_1332])
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
                    if cd[(arg4 + 100)] % 16777216:
                        require ext_code.size(address(cd[(arg4 + 36)]))
                        call address(cd[(arg4 + 36)]).exactInputSingle(address arg1, address arg2, uint24 arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint160 arg8) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), address(ext_call.return_data[0]), cd[(arg4 + 100)] << 232, address(this.address), block.timestamp + 300, arg3, cd[(arg4 + 68)], 0
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
                        _1101 = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                        require (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + return_data.size + 97 > (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 128
                        _1109 = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97]
                        if mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97]) + 98 > test266151307():
                            revert with 0, 65
                        mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97]) + 98
                        mem[(6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97] = _1109
                        require _1101 + (32 * _1109) + 32 <= return_data.size
                        mem[(6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129 len ceil32(32 * _1109)] = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + _1101 + 129 len ceil32(32 * _1109)]
                        if _1109 < 1:
                            revert with 0, 17
                        if _1109 - 1 >= _1109:
                            revert with 0, 50
                        _1261 = mem[(32 * _1109 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129]
                        if mem[(32 * _1109 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129] <= cd[(arg4 + 68)]:
                            revert with 0, 'No profit'
                        if mem[(32 * _1109 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129] < cd[(arg4 + 68)]:
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
                        _1301 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1301] == bool(mem[_1301])
                        mem[mem[64] + 4] = stor0
                        mem[mem[64] + 36] = _1261 - cd[(arg4 + 68)]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args stor0, _1261 - cd[(arg4 + 68)]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1333 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1333] == bool(mem[_1333])
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
                    if cd[(arg4 + 100)] % 16777216:
                        require ext_code.size(address(cd[(arg4 + 36)]))
                        call address(cd[(arg4 + 36)]).exactInputSingle(address arg1, address arg2, uint24 arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint160 arg8) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), address(ext_call.return_data[0]), cd[(arg4 + 100)] << 232, address(this.address), block.timestamp + 300, arg2, cd[(arg4 + 68)], 0
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
                        _1102 = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                        require (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + return_data.size + 97 > (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 128
                        _1110 = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97]
                        if mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97]) + 98 > test266151307():
                            revert with 0, 65
                        mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97]) + 98
                        mem[(6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97] = _1110
                        require _1102 + (32 * _1110) + 32 <= return_data.size
                        mem[(6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129 len ceil32(32 * _1110)] = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + _1102 + 129 len ceil32(32 * _1110)]
                        if _1110 < 1:
                            revert with 0, 17
                        if _1110 - 1 >= _1110:
                            revert with 0, 50
                        _1262 = mem[(32 * _1110 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129]
                        if mem[(32 * _1110 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129] <= cd[(arg4 + 68)]:
                            revert with 0, 'No profit'
                        if mem[(32 * _1110 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129] < cd[(arg4 + 68)]:
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
                        _1302 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1302] == bool(mem[_1302])
                        mem[mem[64] + 4] = stor0
                        mem[mem[64] + 36] = _1262 - cd[(arg4 + 68)]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args stor0, _1262 - cd[(arg4 + 68)]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1334 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1334] == bool(mem[_1334])
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
                    if cd[(arg4 + 100)] % 16777216:
                        require ext_code.size(address(cd[(arg4 + 36)]))
                        call address(cd[(arg4 + 36)]).exactInputSingle(address arg1, address arg2, uint24 arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint160 arg8) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), address(ext_call.return_data[0]), cd[(arg4 + 100)] << 232, address(this.address), block.timestamp + 300, arg3, cd[(arg4 + 68)], 0
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
                        _1103 = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                        require (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + return_data.size + 97 > (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 128
                        _1111 = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97]
                        if mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97]) + 98 > test266151307():
                            revert with 0, 65
                        mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97]) + 98
                        mem[(6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97] = _1111
                        require _1103 + (32 * _1111) + 32 <= return_data.size
                        mem[(6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129 len ceil32(32 * _1111)] = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + _1103 + 129 len ceil32(32 * _1111)]
                        if _1111 < 1:
                            revert with 0, 17
                        if _1111 - 1 >= _1111:
                            revert with 0, 50
                        _1263 = mem[(32 * _1111 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129]
                        if mem[(32 * _1111 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129] <= cd[(arg4 + 68)]:
                            revert with 0, 'No profit'
                        if mem[(32 * _1111 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129] < cd[(arg4 + 68)]:
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
                        _1303 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1303] == bool(mem[_1303])
                        mem[mem[64] + 4] = stor0
                        mem[mem[64] + 36] = _1263 - cd[(arg4 + 68)]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args stor0, _1263 - cd[(arg4 + 68)]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1335 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1335] == bool(mem[_1335])
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
                    if cd[(arg4 + 100)] % 16777216:
                        require ext_code.size(address(cd[(arg4 + 36)]))
                        call address(cd[(arg4 + 36)]).exactInputSingle(address arg1, address arg2, uint24 arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint160 arg8) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), address(ext_call.return_data[0]), cd[(arg4 + 100)] << 232, address(this.address), block.timestamp + 300, arg2, cd[(arg4 + 68)], 0
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
                        _1104 = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                        require (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + return_data.size + 97 > (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 128
                        _1112 = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97]
                        if mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97]) + 98 > test266151307():
                            revert with 0, 65
                        mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97]) + 98
                        mem[(6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97] = _1112
                        require _1104 + (32 * _1112) + 32 <= return_data.size
                        mem[(6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129 len ceil32(32 * _1112)] = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + _1104 + 129 len ceil32(32 * _1112)]
                        if _1112 < 1:
                            revert with 0, 17
                        if _1112 - 1 >= _1112:
                            revert with 0, 50
                        _1264 = mem[(32 * _1112 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129]
                        if mem[(32 * _1112 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129] <= cd[(arg4 + 68)]:
                            revert with 0, 'No profit'
                        if mem[(32 * _1112 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129] < cd[(arg4 + 68)]:
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
                        _1304 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1304] == bool(mem[_1304])
                        mem[mem[64] + 4] = stor0
                        mem[mem[64] + 36] = _1264 - cd[(arg4 + 68)]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args stor0, _1264 - cd[(arg4 + 68)]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1336 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1336] == bool(mem[_1336])
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
                    if cd[(arg4 + 100)] % 16777216:
                        require ext_code.size(address(cd[(arg4 + 36)]))
                        call address(cd[(arg4 + 36)]).exactInputSingle(address arg1, address arg2, uint24 arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint160 arg8) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), address(ext_call.return_data[0]), cd[(arg4 + 100)] << 232, address(this.address), block.timestamp + 300, arg3, cd[(arg4 + 68)], 0
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
                        _1097 = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                        require (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + return_data.size + 97 > (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 128
                        _1105 = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97]
                        if mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97]) + 98 > test266151307():
                            revert with 0, 65
                        mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97]) + 98
                        mem[(6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97] = _1105
                        require _1097 + (32 * _1105) + 32 <= return_data.size
                        mem[(6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129 len ceil32(32 * _1105)] = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + _1097 + 129 len ceil32(32 * _1105)]
                        if _1105 < 1:
                            revert with 0, 17
                        if _1105 - 1 >= _1105:
                            revert with 0, 50
                        _1257 = mem[(32 * _1105 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129]
                        if mem[(32 * _1105 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129] <= cd[(arg4 + 68)]:
                            revert with 0, 'No profit'
                        if mem[(32 * _1105 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129] < cd[(arg4 + 68)]:
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
                        _1297 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1297] == bool(mem[_1297])
                        mem[mem[64] + 4] = stor0
                        mem[mem[64] + 36] = _1257 - cd[(arg4 + 68)]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args stor0, _1257 - cd[(arg4 + 68)]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1329 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1329] == bool(mem[_1329])
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
                    if cd[(arg4 + 100)] % 16777216:
                        require ext_code.size(address(cd[(arg4 + 36)]))
                        call address(cd[(arg4 + 36)]).exactInputSingle(address arg1, address arg2, uint24 arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint160 arg8) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), address(ext_call.return_data[0]), cd[(arg4 + 100)] << 232, address(this.address), block.timestamp + 300, arg2, cd[(arg4 + 68)], 0
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
                        _1098 = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                        require (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + return_data.size + 97 > (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 128
                        _1106 = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97]
                        if mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97]) + 98 > test266151307():
                            revert with 0, 65
                        mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97]) + 98
                        mem[(6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97] = _1106
                        require _1098 + (32 * _1106) + 32 <= return_data.size
                        mem[(6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129 len ceil32(32 * _1106)] = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + _1098 + 129 len ceil32(32 * _1106)]
                        if _1106 < 1:
                            revert with 0, 17
                        if _1106 - 1 >= _1106:
                            revert with 0, 50
                        _1258 = mem[(32 * _1106 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129]
                        if mem[(32 * _1106 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129] <= cd[(arg4 + 68)]:
                            revert with 0, 'No profit'
                        if mem[(32 * _1106 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129] < cd[(arg4 + 68)]:
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
                        _1298 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1298] == bool(mem[_1298])
                        mem[mem[64] + 4] = stor0
                        mem[mem[64] + 36] = _1258 - cd[(arg4 + 68)]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args stor0, _1258 - cd[(arg4 + 68)]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1330 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1330] == bool(mem[_1330])
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
                    if cd[(arg4 + 100)] % 16777216:
                        require ext_code.size(address(cd[(arg4 + 36)]))
                        call address(cd[(arg4 + 36)]).exactInputSingle(address arg1, address arg2, uint24 arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint160 arg8) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), address(ext_call.return_data[0]), cd[(arg4 + 100)] << 232, address(this.address), block.timestamp + 300, arg3, cd[(arg4 + 68)], 0
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
                        _1099 = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                        require (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + return_data.size + 97 > (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 128
                        _1107 = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97]
                        if mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97]) + 98 > test266151307():
                            revert with 0, 65
                        mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97]) + 98
                        mem[(6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97] = _1107
                        require _1099 + (32 * _1107) + 32 <= return_data.size
                        mem[(6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129 len ceil32(32 * _1107)] = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + _1099 + 129 len ceil32(32 * _1107)]
                        if _1107 < 1:
                            revert with 0, 17
                        if _1107 - 1 >= _1107:
                            revert with 0, 50
                        _1259 = mem[(32 * _1107 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129]
                        if mem[(32 * _1107 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129] <= cd[(arg4 + 68)]:
                            revert with 0, 'No profit'
                        if mem[(32 * _1107 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129] < cd[(arg4 + 68)]:
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
                        _1299 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1299] == bool(mem[_1299])
                        mem[mem[64] + 4] = stor0
                        mem[mem[64] + 36] = _1259 - cd[(arg4 + 68)]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args stor0, _1259 - cd[(arg4 + 68)]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1331 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1331] == bool(mem[_1331])
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
                    if cd[(arg4 + 100)] % 16777216:
                        require ext_code.size(address(cd[(arg4 + 36)]))
                        call address(cd[(arg4 + 36)]).exactInputSingle(address arg1, address arg2, uint24 arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint160 arg8) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), address(ext_call.return_data[0]), cd[(arg4 + 100)] << 232, address(this.address), block.timestamp + 300, arg2, cd[(arg4 + 68)], 0
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
                        _1100 = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                        require (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + return_data.size + 97 > (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 128
                        _1108 = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97]
                        if mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97]) + 98 > test266151307():
                            revert with 0, 65
                        mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97]) + 98
                        mem[(6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97] = _1108
                        require _1100 + (32 * _1108) + 32 <= return_data.size
                        mem[(6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129 len ceil32(32 * _1108)] = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + _1100 + 129 len ceil32(32 * _1108)]
                        if _1108 < 1:
                            revert with 0, 17
                        if _1108 - 1 >= _1108:
                            revert with 0, 50
                        _1260 = mem[(32 * _1108 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129]
                        if mem[(32 * _1108 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129] <= cd[(arg4 + 68)]:
                            revert with 0, 'No profit'
                        if mem[(32 * _1108 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129] < cd[(arg4 + 68)]:
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
                        _1300 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1300] == bool(mem[_1300])
                        mem[mem[64] + 4] = stor0
                        mem[mem[64] + 36] = _1260 - cd[(arg4 + 68)]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args stor0, _1260 - cd[(arg4 + 68)]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1332 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1332] == bool(mem[_1332])
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
                    if cd[(arg4 + 100)] % 16777216:
                        require ext_code.size(address(cd[(arg4 + 36)]))
                        call address(cd[(arg4 + 36)]).exactInputSingle(address arg1, address arg2, uint24 arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint160 arg8) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), address(ext_call.return_data[0]), cd[(arg4 + 100)] << 232, address(this.address), block.timestamp + 300, arg3, cd[(arg4 + 68)], 0
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
                        _1101 = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                        require (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + return_data.size + 97 > (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 128
                        _1109 = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97]
                        if mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97]) + 98 > test266151307():
                            revert with 0, 65
                        mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97]) + 98
                        mem[(6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97] = _1109
                        require _1101 + (32 * _1109) + 32 <= return_data.size
                        mem[(6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129 len ceil32(32 * _1109)] = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + _1101 + 129 len ceil32(32 * _1109)]
                        if _1109 < 1:
                            revert with 0, 17
                        if _1109 - 1 >= _1109:
                            revert with 0, 50
                        _1261 = mem[(32 * _1109 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129]
                        if mem[(32 * _1109 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129] <= cd[(arg4 + 68)]:
                            revert with 0, 'No profit'
                        if mem[(32 * _1109 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129] < cd[(arg4 + 68)]:
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
                        _1301 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1301] == bool(mem[_1301])
                        mem[mem[64] + 4] = stor0
                        mem[mem[64] + 36] = _1261 - cd[(arg4 + 68)]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args stor0, _1261 - cd[(arg4 + 68)]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1333 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1333] == bool(mem[_1333])
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
                    if cd[(arg4 + 100)] % 16777216:
                        require ext_code.size(address(cd[(arg4 + 36)]))
                        call address(cd[(arg4 + 36)]).exactInputSingle(address arg1, address arg2, uint24 arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint160 arg8) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), address(ext_call.return_data[0]), cd[(arg4 + 100)] << 232, address(this.address), block.timestamp + 300, arg2, cd[(arg4 + 68)], 0
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
                        _1102 = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                        require (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + return_data.size + 97 > (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 128
                        _1110 = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97]
                        if mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97]) + 98 > test266151307():
                            revert with 0, 65
                        mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97]) + 98
                        mem[(6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97] = _1110
                        require _1102 + (32 * _1110) + 32 <= return_data.size
                        mem[(6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129 len ceil32(32 * _1110)] = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + _1102 + 129 len ceil32(32 * _1110)]
                        if _1110 < 1:
                            revert with 0, 17
                        if _1110 - 1 >= _1110:
                            revert with 0, 50
                        _1262 = mem[(32 * _1110 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129]
                        if mem[(32 * _1110 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129] <= cd[(arg4 + 68)]:
                            revert with 0, 'No profit'
                        if mem[(32 * _1110 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129] < cd[(arg4 + 68)]:
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
                        _1302 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1302] == bool(mem[_1302])
                        mem[mem[64] + 4] = stor0
                        mem[mem[64] + 36] = _1262 - cd[(arg4 + 68)]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args stor0, _1262 - cd[(arg4 + 68)]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1334 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1334] == bool(mem[_1334])
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
                    if cd[(arg4 + 100)] % 16777216:
                        require ext_code.size(address(cd[(arg4 + 36)]))
                        call address(cd[(arg4 + 36)]).exactInputSingle(address arg1, address arg2, uint24 arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint160 arg8) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), address(ext_call.return_data[0]), cd[(arg4 + 100)] << 232, address(this.address), block.timestamp + 300, arg3, cd[(arg4 + 68)], 0
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
                        _1103 = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                        require (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + return_data.size + 97 > (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 128
                        _1111 = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97]
                        if mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97]) + 98 > test266151307():
                            revert with 0, 65
                        mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97]) + 98
                        mem[(6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97] = _1111
                        require _1103 + (32 * _1111) + 32 <= return_data.size
                        mem[(6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129 len ceil32(32 * _1111)] = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + _1103 + 129 len ceil32(32 * _1111)]
                        if _1111 < 1:
                            revert with 0, 17
                        if _1111 - 1 >= _1111:
                            revert with 0, 50
                        _1263 = mem[(32 * _1111 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129]
                        if mem[(32 * _1111 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129] <= cd[(arg4 + 68)]:
                            revert with 0, 'No profit'
                        if mem[(32 * _1111 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129] < cd[(arg4 + 68)]:
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
                        _1303 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1303] == bool(mem[_1303])
                        mem[mem[64] + 4] = stor0
                        mem[mem[64] + 36] = _1263 - cd[(arg4 + 68)]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args stor0, _1263 - cd[(arg4 + 68)]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1335 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1335] == bool(mem[_1335])
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
                    if cd[(arg4 + 100)] % 16777216:
                        require ext_code.size(address(cd[(arg4 + 36)]))
                        call address(cd[(arg4 + 36)]).exactInputSingle(address arg1, address arg2, uint24 arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint160 arg8) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), address(ext_call.return_data[0]), cd[(arg4 + 100)] << 232, address(this.address), block.timestamp + 300, arg2, cd[(arg4 + 68)], 0
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
                        _1104 = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                        require (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + return_data.size + 97 > (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 128
                        _1112 = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97]
                        if mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97]) + 98 > test266151307():
                            revert with 0, 65
                        mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97]) + 98
                        mem[(6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97] = _1112
                        require _1104 + (32 * _1112) + 32 <= return_data.size
                        mem[(6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129 len ceil32(32 * _1112)] = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + _1104 + 129 len ceil32(32 * _1112)]
                        if _1112 < 1:
                            revert with 0, 17
                        if _1112 - 1 >= _1112:
                            revert with 0, 50
                        _1264 = mem[(32 * _1112 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129]
                        if mem[(32 * _1112 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129] <= cd[(arg4 + 68)]:
                            revert with 0, 'No profit'
                        if mem[(32 * _1112 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129] < cd[(arg4 + 68)]:
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
                        _1304 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1304] == bool(mem[_1304])
                        mem[mem[64] + 4] = stor0
                        mem[mem[64] + 36] = _1264 - cd[(arg4 + 68)]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args stor0, _1264 - cd[(arg4 + 68)]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1336 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1336] == bool(mem[_1336])
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
                    if cd[(arg4 + 100)] % 16777216:
                        require ext_code.size(address(cd[(arg4 + 36)]))
                        call address(cd[(arg4 + 36)]).exactInputSingle(address arg1, address arg2, uint24 arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint160 arg8) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), address(ext_call.return_data[0]), cd[(arg4 + 100)] << 232, address(this.address), block.timestamp + 300, arg3, cd[(arg4 + 68)], 0
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
                        _1097 = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                        require (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + return_data.size + 97 > (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 128
                        _1105 = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97]
                        if mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97]) + 98 > test266151307():
                            revert with 0, 65
                        mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97]) + 98
                        mem[(6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97] = _1105
                        require _1097 + (32 * _1105) + 32 <= return_data.size
                        mem[(6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129 len ceil32(32 * _1105)] = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + _1097 + 129 len ceil32(32 * _1105)]
                        if _1105 < 1:
                            revert with 0, 17
                        if _1105 - 1 >= _1105:
                            revert with 0, 50
                        _1257 = mem[(32 * _1105 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129]
                        if mem[(32 * _1105 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129] <= cd[(arg4 + 68)]:
                            revert with 0, 'No profit'
                        if mem[(32 * _1105 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129] < cd[(arg4 + 68)]:
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
                        _1297 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1297] == bool(mem[_1297])
                        mem[mem[64] + 4] = stor0
                        mem[mem[64] + 36] = _1257 - cd[(arg4 + 68)]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args stor0, _1257 - cd[(arg4 + 68)]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1329 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1329] == bool(mem[_1329])
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
                    if cd[(arg4 + 100)] % 16777216:
                        require ext_code.size(address(cd[(arg4 + 36)]))
                        call address(cd[(arg4 + 36)]).exactInputSingle(address arg1, address arg2, uint24 arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint160 arg8) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), address(ext_call.return_data[0]), cd[(arg4 + 100)] << 232, address(this.address), block.timestamp + 300, arg2, cd[(arg4 + 68)], 0
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
                        _1098 = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                        require (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + return_data.size + 97 > (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 128
                        _1106 = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97]
                        if mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97]) + 98 > test266151307():
                            revert with 0, 65
                        mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97]) + 98
                        mem[(6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97] = _1106
                        require _1098 + (32 * _1106) + 32 <= return_data.size
                        mem[(6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129 len ceil32(32 * _1106)] = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + _1098 + 129 len ceil32(32 * _1106)]
                        if _1106 < 1:
                            revert with 0, 17
                        if _1106 - 1 >= _1106:
                            revert with 0, 50
                        _1258 = mem[(32 * _1106 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129]
                        if mem[(32 * _1106 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129] <= cd[(arg4 + 68)]:
                            revert with 0, 'No profit'
                        if mem[(32 * _1106 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129] < cd[(arg4 + 68)]:
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
                        _1298 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1298] == bool(mem[_1298])
                        mem[mem[64] + 4] = stor0
                        mem[mem[64] + 36] = _1258 - cd[(arg4 + 68)]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args stor0, _1258 - cd[(arg4 + 68)]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1330 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1330] == bool(mem[_1330])
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
                    if cd[(arg4 + 100)] % 16777216:
                        require ext_code.size(address(cd[(arg4 + 36)]))
                        call address(cd[(arg4 + 36)]).exactInputSingle(address arg1, address arg2, uint24 arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint160 arg8) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), address(ext_call.return_data[0]), cd[(arg4 + 100)] << 232, address(this.address), block.timestamp + 300, arg3, cd[(arg4 + 68)], 0
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
                        _1099 = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                        require (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + return_data.size + 97 > (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 128
                        _1107 = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97]
                        if mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97]) + 98 > test266151307():
                            revert with 0, 65
                        mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97]) + 98
                        mem[(6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97] = _1107
                        require _1099 + (32 * _1107) + 32 <= return_data.size
                        mem[(6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129 len ceil32(32 * _1107)] = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + _1099 + 129 len ceil32(32 * _1107)]
                        if _1107 < 1:
                            revert with 0, 17
                        if _1107 - 1 >= _1107:
                            revert with 0, 50
                        _1259 = mem[(32 * _1107 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129]
                        if mem[(32 * _1107 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129] <= cd[(arg4 + 68)]:
                            revert with 0, 'No profit'
                        if mem[(32 * _1107 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129] < cd[(arg4 + 68)]:
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
                        _1299 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1299] == bool(mem[_1299])
                        mem[mem[64] + 4] = stor0
                        mem[mem[64] + 36] = _1259 - cd[(arg4 + 68)]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args stor0, _1259 - cd[(arg4 + 68)]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1331 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1331] == bool(mem[_1331])
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
                    if cd[(arg4 + 100)] % 16777216:
                        require ext_code.size(address(cd[(arg4 + 36)]))
                        call address(cd[(arg4 + 36)]).exactInputSingle(address arg1, address arg2, uint24 arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint160 arg8) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), address(ext_call.return_data[0]), cd[(arg4 + 100)] << 232, address(this.address), block.timestamp + 300, arg2, cd[(arg4 + 68)], 0
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
                        _1100 = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                        require (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + return_data.size + 97 > (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 128
                        _1108 = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97]
                        if mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97]) + 98 > test266151307():
                            revert with 0, 65
                        mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97]) + 98
                        mem[(6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97] = _1108
                        require _1100 + (32 * _1108) + 32 <= return_data.size
                        mem[(6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129 len ceil32(32 * _1108)] = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + _1100 + 129 len ceil32(32 * _1108)]
                        if _1108 < 1:
                            revert with 0, 17
                        if _1108 - 1 >= _1108:
                            revert with 0, 50
                        _1260 = mem[(32 * _1108 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129]
                        if mem[(32 * _1108 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129] <= cd[(arg4 + 68)]:
                            revert with 0, 'No profit'
                        if mem[(32 * _1108 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129] < cd[(arg4 + 68)]:
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
                        _1300 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1300] == bool(mem[_1300])
                        mem[mem[64] + 4] = stor0
                        mem[mem[64] + 36] = _1260 - cd[(arg4 + 68)]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args stor0, _1260 - cd[(arg4 + 68)]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1332 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1332] == bool(mem[_1332])
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
                    if cd[(arg4 + 100)] % 16777216:
                        require ext_code.size(address(cd[(arg4 + 36)]))
                        call address(cd[(arg4 + 36)]).exactInputSingle(address arg1, address arg2, uint24 arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint160 arg8) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), address(ext_call.return_data[0]), cd[(arg4 + 100)] << 232, address(this.address), block.timestamp + 300, arg3, cd[(arg4 + 68)], 0
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
                        _1101 = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                        require (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + return_data.size + 97 > (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 128
                        _1109 = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97]
                        if mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97]) + 98 > test266151307():
                            revert with 0, 65
                        mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97]) + 98
                        mem[(6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97] = _1109
                        require _1101 + (32 * _1109) + 32 <= return_data.size
                        mem[(6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129 len ceil32(32 * _1109)] = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + _1101 + 129 len ceil32(32 * _1109)]
                        if _1109 < 1:
                            revert with 0, 17
                        if _1109 - 1 >= _1109:
                            revert with 0, 50
                        _1261 = mem[(32 * _1109 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129]
                        if mem[(32 * _1109 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129] <= cd[(arg4 + 68)]:
                            revert with 0, 'No profit'
                        if mem[(32 * _1109 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129] < cd[(arg4 + 68)]:
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
                        _1301 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1301] == bool(mem[_1301])
                        mem[mem[64] + 4] = stor0
                        mem[mem[64] + 36] = _1261 - cd[(arg4 + 68)]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args stor0, _1261 - cd[(arg4 + 68)]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1333 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1333] == bool(mem[_1333])
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
                    if cd[(arg4 + 100)] % 16777216:
                        require ext_code.size(address(cd[(arg4 + 36)]))
                        call address(cd[(arg4 + 36)]).exactInputSingle(address arg1, address arg2, uint24 arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint160 arg8) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), address(ext_call.return_data[0]), cd[(arg4 + 100)] << 232, address(this.address), block.timestamp + 300, arg2, cd[(arg4 + 68)], 0
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
                        _1102 = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                        require (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + return_data.size + 97 > (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 128
                        _1110 = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97]
                        if mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97]) + 98 > test266151307():
                            revert with 0, 65
                        mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97]) + 98
                        mem[(6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97] = _1110
                        require _1102 + (32 * _1110) + 32 <= return_data.size
                        mem[(6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129 len ceil32(32 * _1110)] = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + _1102 + 129 len ceil32(32 * _1110)]
                        if _1110 < 1:
                            revert with 0, 17
                        if _1110 - 1 >= _1110:
                            revert with 0, 50
                        _1262 = mem[(32 * _1110 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129]
                        if mem[(32 * _1110 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129] <= cd[(arg4 + 68)]:
                            revert with 0, 'No profit'
                        if mem[(32 * _1110 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129] < cd[(arg4 + 68)]:
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
                        _1302 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1302] == bool(mem[_1302])
                        mem[mem[64] + 4] = stor0
                        mem[mem[64] + 36] = _1262 - cd[(arg4 + 68)]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args stor0, _1262 - cd[(arg4 + 68)]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1334 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1334] == bool(mem[_1334])
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
                    if cd[(arg4 + 100)] % 16777216:
                        require ext_code.size(address(cd[(arg4 + 36)]))
                        call address(cd[(arg4 + 36)]).exactInputSingle(address arg1, address arg2, uint24 arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint160 arg8) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), address(ext_call.return_data[0]), cd[(arg4 + 100)] << 232, address(this.address), block.timestamp + 300, arg3, cd[(arg4 + 68)], 0
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
                        _1103 = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32
                        require mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                        require (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + return_data.size + 97 > (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 128
                        _1111 = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97]
                        if mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97]) + 98 > test266151307():
                            revert with 0, 65
                        mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97]) + 98
                        mem[(6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97] = _1111
                        require _1103 + (32 * _1111) + 32 <= return_data.size
                        mem[(6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129 len ceil32(32 * _1111)] = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + _1103 + 129 len ceil32(32 * _1111)]
                        if _1111 < 1:
                            revert with 0, 17
                        if _1111 - 1 >= _1111:
                            revert with 0, 50
                        _1263 = mem[(32 * _1111 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129]
                        if mem[(32 * _1111 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129] <= cd[(arg4 + 68)]:
                            revert with 0, 'No profit'
                        if mem[(32 * _1111 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129] < cd[(arg4 + 68)]:
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
                        _1303 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1303] == bool(mem[_1303])
                        mem[mem[64] + 4] = stor0
                        mem[mem[64] + 36] = _1263 - cd[(arg4 + 68)]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args stor0, _1263 - cd[(arg4 + 68)]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1335 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1335] == bool(mem[_1335])
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
                    if cd[(arg4 + 100)] % 16777216:
                        require ext_code.size(address(cd[(arg4 + 36)]))
                        call address(cd[(arg4 + 36)]).exactInputSingle(address arg1, address arg2, uint24 arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint160 arg8) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), address(ext_call.return_data[0]), cd[(arg4 + 100)] << 232, address(this.address), block.timestamp + 300, arg2, cd[(arg4 + 68)], 0
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
                        _1104 = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32
                        require mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                        require (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + return_data.size + 97 > (4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 128
                        _1112 = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97]
                        if mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97]) + 98 > test266151307():
                            revert with 0, 65
                        mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97]) + 98
                        mem[(6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 97] = _1112
                        require _1104 + (32 * _1112) + 32 <= return_data.size
                        mem[(6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129 len ceil32(32 * _1112)] = mem[(4 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + _1104 + 129 len ceil32(32 * _1112)]
                        if _1112 < 1:
                            revert with 0, 17
                        if _1112 - 1 >= _1112:
                            revert with 0, 50
                        _1264 = mem[(32 * _1112 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129]
                        if mem[(32 * _1112 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129] <= cd[(arg4 + 68)]:
                            revert with 0, 'No profit'
                        if mem[(32 * _1112 - 1) + (6 * ceil32(return_data.size)) + ceil32(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 129] < cd[(arg4 + 68)]:
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
                        _1304 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1304] == bool(mem[_1304])
                        mem[mem[64] + 4] = stor0
                        mem[mem[64] + 36] = _1264 - cd[(arg4 + 68)]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args stor0, _1264 - cd[(arg4 + 68)]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1336 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1336] == bool(mem[_1336])
}



}
