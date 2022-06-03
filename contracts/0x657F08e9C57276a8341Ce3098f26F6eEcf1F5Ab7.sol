contract main {




// =====================  Runtime code  =====================


#
#  - sub_6c63c178(?)
#
address owner;
address stor1;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function addOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if stor1 != msg.sender:
            revert with 0, 'O'
    if not arg1:
        revert with 0, 'OZ'
    if owner == arg1:
        revert with 0, 'OA'
    owner = arg1
}

function sub_02a9bc50(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        if stor1 != msg.sender:
            revert with 0, 'O'
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_a773a59b(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        if stor1 != msg.sender:
            revert with 0, 'O'
    staticcall address(arg1).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        call address(arg1).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg2), 9999
    else:
        if bool(bool(ext_call.return_data[0] < 78)) or bool(bool(ext_call.return_data[0] < 32)):
            if 10^ext_call.return_data[0] > 0x68de3aefe55f930916c2bbaab1388e59a900a3db3c16d66555be3390453ab:
                revert with 'NH{q', 17
            call address(arg1).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg2), 9999 * 10^ext_call.return_data[0]
        else:
            s = 10
            t = 1
            idx = ext_call.return_data[0]
            while idx > 1:
                if s > -1 / s:
                    revert with 'NH{q', 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 'NH{q', 17
            if s * t > 0x68de3aefe55f930916c2bbaab1388e59a900a3db3c16d66555be3390453ab:
                revert with 'NH{q', 17
            call address(arg1).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg2), 9999 * s * t
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_c6fe5d34(?) payable {
    require calldata.size - 4 >= 224
    require cd[68] == address(cd[68])
    require cd[100] == address(cd[100])
    require cd[132] == address(cd[132])
    require cd[164] <= test266151307()
    require cd[164] + 35 < calldata.size
    require ('cd', 164).length <= test266151307()
    require cd[164] + (32 * ('cd', 164).length) + 36 <= calldata.size
    require cd[196] <= test266151307()
    require cd[196] + 35 < calldata.size
    require ('cd', 196).length <= test266151307()
    require cd[196] + (32 * ('cd', 196).length) + 36 <= calldata.size
    if msg.sender == owner:
        if not ('cd', 164).length:
            revert with 'NH{q', 50
        require ('cd', 164)[0] == address(('cd', 164)[0])
        mem[100] = msg.sender
        mem[132] = address(cd[132])
        mem[164] = cd[4]
        call address(('cd', 164)[0]).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(cd[132]), cd[4]
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if 600 > !block.timestamp:
            revert with 'NH{q', 17
        mem[ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 100] = cd[4]
        if not ('cd', 196).length:
            mem[ceil32(return_data.size) + 132] = cd[36]
            mem[ceil32(return_data.size) + 164] = 160
            mem[ceil32(return_data.size) + 260] = ('cd', 164).length
            idx = 0
            s = cd[164] + 36
            t = ceil32(return_data.size) + 292
            while idx < ('cd', 164).length:
                require cd[s] == address(cd[s])
                mem[t] = address(cd[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(return_data.size) + 196] = msg.sender
            mem[ceil32(return_data.size) + 228] = block.timestamp + 600
            call address(cd[68]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args cd[4], cd[36], Array(len=('cd', 164).length, data=mem[ceil32(return_data.size) + 292 len 32 * ('cd', 164).length]), msg.sender, block.timestamp + 600
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
            require ceil32(return_data.size) + return_data.size + 96 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 127
            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96] > test266151307():
                revert with 'NH{q', 65
            if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 97 > test266151307():
                revert with 'NH{q', 65
            require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 32 <= return_data.size
        else:
            mem[ceil32(return_data.size) + 132] = 0
            mem[ceil32(return_data.size) + 164] = 160
            mem[ceil32(return_data.size) + 260] = ('cd', 164).length
            idx = 0
            s = cd[164] + 36
            t = ceil32(return_data.size) + 292
            while idx < ('cd', 164).length:
                require cd[s] == address(cd[s])
                mem[t] = address(cd[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(return_data.size) + 196] = address(cd[132])
            mem[ceil32(return_data.size) + 228] = block.timestamp + 600
            call address(cd[68]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args cd[4], 0, 160, address(cd[132]), block.timestamp + 600, ('cd', 164).length, mem[ceil32(return_data.size) + 292 len 32 * ('cd', 164).length]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            _70 = mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32
            require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
            require ceil32(return_data.size) + return_data.size + 96 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 127
            _74 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]
            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96] > test266151307():
                revert with 'NH{q', 65
            if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 97 > test266151307():
                revert with 'NH{q', 65
            mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 97
            mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]
            require _70 + (32 * _74) + 32 <= return_data.size
            mem[(2 * ceil32(return_data.size)) + 128 len ceil32(32 * _74)] = mem[ceil32(return_data.size) + _70 + 128 len ceil32(32 * _74)]
            if 0 >= ('cd', 196).length:
                revert with 'NH{q', 50
            require ('cd', 196)[0] == address(('cd', 196)[0])
            mem[mem[64] + 4] = address(cd[132])
            staticcall address(('cd', 196)[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(cd[132])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _115 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _117 = mem[_115]
            if 600 > !block.timestamp:
                revert with 'NH{q', 17
            _119 = mem[64]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _117
            mem[mem[64] + 36] = cd[36]
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = ('cd', 196).length
            idx = 0
            s = cd[196] + 36
            t = mem[64] + 196
            while idx < ('cd', 196).length:
                require cd[s] == address(cd[s])
                mem[t] = address(cd[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_119 + 100] = msg.sender
            mem[_119 + 132] = block.timestamp + 600
            call address(cd[100]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _119 + (32 * ('cd', 196).length) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _135 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_135] <= test266151307()
            require _135 + return_data.size > _135 + mem[_135] + 31
            if mem[_135 + mem[_135]] > test266151307():
                revert with 'NH{q', 65
            if ceil32(32 * mem[_135 + mem[_135]]) + 1 < 0 or _135 + ceil32(return_data.size) + ceil32(32 * mem[_135 + mem[_135]]) + 1 > test266151307():
                revert with 'NH{q', 65
            require mem[_135] + (32 * mem[_135 + mem[_135]]) + 32 <= return_data.size
    else:
        if stor1 != msg.sender:
            revert with 0, 'O'
        if not ('cd', 164).length:
            revert with 'NH{q', 50
        require ('cd', 164)[0] == address(('cd', 164)[0])
        mem[100] = msg.sender
        mem[132] = address(cd[132])
        mem[164] = cd[4]
        call address(('cd', 164)[0]).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(cd[132]), cd[4]
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if 600 > !block.timestamp:
            revert with 'NH{q', 17
        mem[ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 100] = cd[4]
        if not ('cd', 196).length:
            mem[ceil32(return_data.size) + 132] = cd[36]
            mem[ceil32(return_data.size) + 164] = 160
            mem[ceil32(return_data.size) + 260] = ('cd', 164).length
            idx = 0
            s = cd[164] + 36
            t = ceil32(return_data.size) + 292
            while idx < ('cd', 164).length:
                require cd[s] == address(cd[s])
                mem[t] = address(cd[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(return_data.size) + 196] = msg.sender
            mem[ceil32(return_data.size) + 228] = block.timestamp + 600
            call address(cd[68]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args cd[4], cd[36], Array(len=('cd', 164).length, data=mem[ceil32(return_data.size) + 292 len 32 * ('cd', 164).length]), msg.sender, block.timestamp + 600
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
            require ceil32(return_data.size) + return_data.size + 96 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 127
            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96] > test266151307():
                revert with 'NH{q', 65
            if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 97 > test266151307():
                revert with 'NH{q', 65
            require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 32 <= return_data.size
        else:
            mem[ceil32(return_data.size) + 132] = 0
            mem[ceil32(return_data.size) + 164] = 160
            mem[ceil32(return_data.size) + 260] = ('cd', 164).length
            idx = 0
            s = cd[164] + 36
            t = ceil32(return_data.size) + 292
            while idx < ('cd', 164).length:
                require cd[s] == address(cd[s])
                mem[t] = address(cd[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(return_data.size) + 196] = address(cd[132])
            mem[ceil32(return_data.size) + 228] = block.timestamp + 600
            call address(cd[68]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args cd[4], 0, 160, address(cd[132]), block.timestamp + 600, ('cd', 164).length, mem[ceil32(return_data.size) + 292 len 32 * ('cd', 164).length]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            _72 = mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32
            require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
            require ceil32(return_data.size) + return_data.size + 96 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 127
            _76 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]
            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96] > test266151307():
                revert with 'NH{q', 65
            if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 97 > test266151307():
                revert with 'NH{q', 65
            mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 97
            mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]
            require _72 + (32 * _76) + 32 <= return_data.size
            mem[(2 * ceil32(return_data.size)) + 128 len ceil32(32 * _76)] = mem[ceil32(return_data.size) + _72 + 128 len ceil32(32 * _76)]
            if 0 >= ('cd', 196).length:
                revert with 'NH{q', 50
            require ('cd', 196)[0] == address(('cd', 196)[0])
            mem[mem[64] + 4] = address(cd[132])
            staticcall address(('cd', 196)[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(cd[132])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _116 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _118 = mem[_116]
            if 600 > !block.timestamp:
                revert with 'NH{q', 17
            _120 = mem[64]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _118
            mem[mem[64] + 36] = cd[36]
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = ('cd', 196).length
            idx = 0
            s = cd[196] + 36
            t = mem[64] + 196
            while idx < ('cd', 196).length:
                require cd[s] == address(cd[s])
                mem[t] = address(cd[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_120 + 100] = msg.sender
            mem[_120 + 132] = block.timestamp + 600
            call address(cd[100]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _120 + (32 * ('cd', 196).length) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _136 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_136] <= test266151307()
            require _136 + return_data.size > _136 + mem[_136] + 31
            if mem[_136 + mem[_136]] > test266151307():
                revert with 'NH{q', 65
            if ceil32(32 * mem[_136 + mem[_136]]) + 1 < 0 or _136 + ceil32(return_data.size) + ceil32(32 * mem[_136 + mem[_136]]) + 1 > test266151307():
                revert with 'NH{q', 65
            require mem[_136] + (32 * mem[_136 + mem[_136]]) + 32 <= return_data.size
}



}
