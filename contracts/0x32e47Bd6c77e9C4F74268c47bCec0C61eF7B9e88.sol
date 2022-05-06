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

function sub_0adfe61c(?) payable {
    require calldata.size - 4 >= 224
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require cd[68] == address(cd[68])
    require cd[164] == address(cd[164])
    require cd[196] <= test266151307()
    require cd[196] + 35 < calldata.size
    require ('cd', 196).length <= test266151307()
    require cd[196] + (32 * ('cd', 196).length) + 36 <= calldata.size
    if stor0 != msg.sender:
        revert with 0, 'Owner only'
    if address(cd[36]) == address(cd[68]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UniswapV2Library: IDENTICAL_ADDRESSES'
    if address(cd[36]) < address(cd[68]):
        if not address(cd[36]):
            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
        mem[128] = address(cd[164])
        mem[160] = cd[100]
        mem[192] = 96
        mem[224] = ('cd', 196).length
        idx = 0
        s = 256
        t = cd[196] + 36
        while idx < ('cd', 196).length:
            require cd[t] == address(cd[t])
            mem[s] = address(cd[t])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(address(cd[4]))
        if address(cd[36]) == address(cd[36]):
            call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, cd[132], address(this.address), 128, (32 * ('cd', 196).length) + 128, mem[128 len floor32(('cd', 196).length) + 4]
        else:
            call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args cd[132], 0, address(this.address), 128, (32 * ('cd', 196).length) + 128, mem[128 len floor32(('cd', 196).length) + 4]
    else:
        if not address(cd[68]):
            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
        mem[128] = address(cd[164])
        mem[160] = cd[100]
        mem[192] = 96
        mem[224] = ('cd', 196).length
        idx = 0
        s = 256
        t = cd[196] + 36
        while idx < ('cd', 196).length:
            require cd[t] == address(cd[t])
            mem[s] = address(cd[t])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(address(cd[4]))
        if address(cd[68]) == address(cd[36]):
            call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, cd[132], address(this.address), 128, (32 * ('cd', 196).length) + 128, mem[128 len floor32(('cd', 196).length) + 4]
        else:
            call address(cd[4]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args cd[132], 0, address(this.address), 128, (32 * ('cd', 196).length) + 128, mem[128 len floor32(('cd', 196).length) + 4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function joeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    require arg4.length >= 96
    require cd[(arg4 + 36)] == address(cd[(arg4 + 36)])
    require cd[(arg4 + 100)] <= test266151307()
    require arg4 + arg4.length + 36 > arg4 + cd[(arg4 + 100)] + 67
    if cd[(arg4 + cd[(arg4 + 100)] + 36)] > test266151307():
        revert with 0, 65
    if ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 97 < 96 or ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 97 > test266151307():
        revert with 0, 65
    mem[96] = cd[(arg4 + cd[(arg4 + 100)] + 36)]
    require cd[(arg4 + 100)] + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 68 <= arg4.length + 36
    s = 128
    idx = arg4 + cd[(arg4 + 100)] + 68
    while idx < arg4 + cd[(arg4 + 100)] + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 68:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    if 0 >= cd[(arg4 + cd[(arg4 + 100)] + 36)]:
        revert with 0, 50
    if not arg2:
        _65 = mem[128]
        if 1 >= cd[(arg4 + cd[(arg4 + 100)] + 36)]:
            revert with 0, 50
        _69 = mem[160]
        if 300 > !block.timestamp:
            revert with 0, 17
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 101] = address(cd[(arg4 + 36)])
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 133] = arg3
        require ext_code.size(address(_65))
        call address(_65).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[(arg4 + 36)]), arg3
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 97] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 97] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 101] = arg3
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 133] = cd[(arg4 + 68)]
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 165] = 160
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 261] = cd[(arg4 + cd[(arg4 + 100)] + 36)]
        idx = 0
        s = ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 293
        t = 128
        while idx < cd[(arg4 + cd[(arg4 + 100)] + 36)]:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 197] = this.address
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 229] = block.timestamp + 300
        require ext_code.size(address(cd[(arg4 + 36)]))
        call address(cd[(arg4 + 36)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg3, cd[(arg4 + 68)], Array(len=cd[(arg4 + cd[(arg4 + 100)] + 36)], data=mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 293 len 32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]]), address(this.address), block.timestamp + 300
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (2 * ceil32(return_data.size)) + 97
        require return_data.size >= 32
        _129 = mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, arg3) >> 32
        require mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
        require ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + return_data.size + 97 > ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, arg3) >> 32 + 128
        _131 = mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97]
        if mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97]) + 1 < 0 or ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97]) + 98 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97]) + 98
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (2 * ceil32(return_data.size)) + 97] = _131
        require _129 + (32 * _131) + 32 <= return_data.size
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (2 * ceil32(return_data.size)) + 129 len ceil32(32 * _131)] = mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + _129 + 129 len ceil32(32 * _131)]
        if _131 < 1:
            revert with 0, 17
        if _131 - 1 >= _131:
            revert with 0, 50
        _169 = mem[(32 * _131 - 1) + ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (2 * ceil32(return_data.size)) + 129]
        if mem[(32 * _131 - 1) + ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (2 * ceil32(return_data.size)) + 129] <= cd[(arg4 + 68)]:
            revert with 0, 'No profit'
        if mem[(32 * _131 - 1) + ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (2 * ceil32(return_data.size)) + 129] < cd[(arg4 + 68)]:
            revert with 0, 17
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = cd[(arg4 + 68)]
        require ext_code.size(address(_69))
        call address(_69).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, cd[(arg4 + 68)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _179 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_179] == bool(mem[_179])
        mem[mem[64] + 4] = stor0
        mem[mem[64] + 36] = _169 - cd[(arg4 + 68)]
        require ext_code.size(address(_69))
        call address(_69).0xa9059cbb with:
             gas gas_remaining wei
            args stor0, _169 - cd[(arg4 + 68)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _187 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_187] == bool(mem[_187])
    else:
        _67 = mem[128]
        if 1 >= cd[(arg4 + cd[(arg4 + 100)] + 36)]:
            revert with 0, 50
        _70 = mem[160]
        if 300 > !block.timestamp:
            revert with 0, 17
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 101] = address(cd[(arg4 + 36)])
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 133] = arg2
        require ext_code.size(address(_67))
        call address(_67).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[(arg4 + 36)]), arg2
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 97] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 97] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 101] = arg2
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 133] = cd[(arg4 + 68)]
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 165] = 160
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 261] = cd[(arg4 + cd[(arg4 + 100)] + 36)]
        idx = 0
        s = ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 293
        t = 128
        while idx < cd[(arg4 + cd[(arg4 + 100)] + 36)]:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 197] = this.address
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 229] = block.timestamp + 300
        require ext_code.size(address(cd[(arg4 + 36)]))
        call address(cd[(arg4 + 36)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg2, cd[(arg4 + 68)], Array(len=cd[(arg4 + cd[(arg4 + 100)] + 36)], data=mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 293 len 32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]]), address(this.address), block.timestamp + 300
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (2 * ceil32(return_data.size)) + 97
        require return_data.size >= 32
        _130 = mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, arg2) >> 32
        require mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
        require ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + return_data.size + 97 > ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, arg2) >> 32 + 128
        _132 = mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97]
        if mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97]) + 1 < 0 or ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97]) + 98 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97]) + 98
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (2 * ceil32(return_data.size)) + 97] = _132
        require _130 + (32 * _132) + 32 <= return_data.size
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (2 * ceil32(return_data.size)) + 129 len ceil32(32 * _132)] = mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + _130 + 129 len ceil32(32 * _132)]
        if _132 < 1:
            revert with 0, 17
        if _132 - 1 >= _132:
            revert with 0, 50
        _170 = mem[(32 * _132 - 1) + ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (2 * ceil32(return_data.size)) + 129]
        if mem[(32 * _132 - 1) + ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (2 * ceil32(return_data.size)) + 129] <= cd[(arg4 + 68)]:
            revert with 0, 'No profit'
        if mem[(32 * _132 - 1) + ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (2 * ceil32(return_data.size)) + 129] < cd[(arg4 + 68)]:
            revert with 0, 17
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = cd[(arg4 + 68)]
        require ext_code.size(address(_70))
        call address(_70).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, cd[(arg4 + 68)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _180 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_180] == bool(mem[_180])
        mem[mem[64] + 4] = stor0
        mem[mem[64] + 36] = _170 - cd[(arg4 + 68)]
        require ext_code.size(address(_70))
        call address(_70).0xa9059cbb with:
             gas gas_remaining wei
            args stor0, _170 - cd[(arg4 + 68)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _188 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_188] == bool(mem[_188])
}

function pangolinCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    require arg4.length >= 96
    require cd[(arg4 + 36)] == address(cd[(arg4 + 36)])
    require cd[(arg4 + 100)] <= test266151307()
    require arg4 + arg4.length + 36 > arg4 + cd[(arg4 + 100)] + 67
    if cd[(arg4 + cd[(arg4 + 100)] + 36)] > test266151307():
        revert with 0, 65
    if ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 97 < 96 or ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 97 > test266151307():
        revert with 0, 65
    mem[96] = cd[(arg4 + cd[(arg4 + 100)] + 36)]
    require cd[(arg4 + 100)] + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 68 <= arg4.length + 36
    s = 128
    idx = arg4 + cd[(arg4 + 100)] + 68
    while idx < arg4 + cd[(arg4 + 100)] + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 68:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    if 0 >= cd[(arg4 + cd[(arg4 + 100)] + 36)]:
        revert with 0, 50
    if not arg2:
        _65 = mem[128]
        if 1 >= cd[(arg4 + cd[(arg4 + 100)] + 36)]:
            revert with 0, 50
        _69 = mem[160]
        if 300 > !block.timestamp:
            revert with 0, 17
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 101] = address(cd[(arg4 + 36)])
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 133] = arg3
        require ext_code.size(address(_65))
        call address(_65).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[(arg4 + 36)]), arg3
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 97] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 97] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 101] = arg3
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 133] = cd[(arg4 + 68)]
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 165] = 160
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 261] = cd[(arg4 + cd[(arg4 + 100)] + 36)]
        idx = 0
        s = ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 293
        t = 128
        while idx < cd[(arg4 + cd[(arg4 + 100)] + 36)]:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 197] = this.address
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 229] = block.timestamp + 300
        require ext_code.size(address(cd[(arg4 + 36)]))
        call address(cd[(arg4 + 36)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg3, cd[(arg4 + 68)], Array(len=cd[(arg4 + cd[(arg4 + 100)] + 36)], data=mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 293 len 32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]]), address(this.address), block.timestamp + 300
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (2 * ceil32(return_data.size)) + 97
        require return_data.size >= 32
        _129 = mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, arg3) >> 32
        require mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
        require ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + return_data.size + 97 > ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, arg3) >> 32 + 128
        _131 = mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97]
        if mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97]) + 1 < 0 or ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97]) + 98 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97]) + 98
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (2 * ceil32(return_data.size)) + 97] = _131
        require _129 + (32 * _131) + 32 <= return_data.size
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (2 * ceil32(return_data.size)) + 129 len ceil32(32 * _131)] = mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + _129 + 129 len ceil32(32 * _131)]
        if _131 < 1:
            revert with 0, 17
        if _131 - 1 >= _131:
            revert with 0, 50
        _169 = mem[(32 * _131 - 1) + ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (2 * ceil32(return_data.size)) + 129]
        if mem[(32 * _131 - 1) + ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (2 * ceil32(return_data.size)) + 129] <= cd[(arg4 + 68)]:
            revert with 0, 'No profit'
        if mem[(32 * _131 - 1) + ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (2 * ceil32(return_data.size)) + 129] < cd[(arg4 + 68)]:
            revert with 0, 17
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = cd[(arg4 + 68)]
        require ext_code.size(address(_69))
        call address(_69).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, cd[(arg4 + 68)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _179 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_179] == bool(mem[_179])
        mem[mem[64] + 4] = stor0
        mem[mem[64] + 36] = _169 - cd[(arg4 + 68)]
        require ext_code.size(address(_69))
        call address(_69).0xa9059cbb with:
             gas gas_remaining wei
            args stor0, _169 - cd[(arg4 + 68)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _187 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_187] == bool(mem[_187])
    else:
        _67 = mem[128]
        if 1 >= cd[(arg4 + cd[(arg4 + 100)] + 36)]:
            revert with 0, 50
        _70 = mem[160]
        if 300 > !block.timestamp:
            revert with 0, 17
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 101] = address(cd[(arg4 + 36)])
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 133] = arg2
        require ext_code.size(address(_67))
        call address(_67).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[(arg4 + 36)]), arg2
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 97] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 97] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 101] = arg2
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 133] = cd[(arg4 + 68)]
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 165] = 160
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 261] = cd[(arg4 + cd[(arg4 + 100)] + 36)]
        idx = 0
        s = ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 293
        t = 128
        while idx < cd[(arg4 + cd[(arg4 + 100)] + 36)]:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 197] = this.address
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 229] = block.timestamp + 300
        require ext_code.size(address(cd[(arg4 + 36)]))
        call address(cd[(arg4 + 36)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg2, cd[(arg4 + 68)], Array(len=cd[(arg4 + cd[(arg4 + 100)] + 36)], data=mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 293 len 32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]]), address(this.address), block.timestamp + 300
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (2 * ceil32(return_data.size)) + 97
        require return_data.size >= 32
        _130 = mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, arg2) >> 32
        require mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
        require ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + return_data.size + 97 > ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, arg2) >> 32 + 128
        _132 = mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97]
        if mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97]) + 1 < 0 or ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97]) + 98 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97]) + 98
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (2 * ceil32(return_data.size)) + 97] = _132
        require _130 + (32 * _132) + 32 <= return_data.size
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (2 * ceil32(return_data.size)) + 129 len ceil32(32 * _132)] = mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + _130 + 129 len ceil32(32 * _132)]
        if _132 < 1:
            revert with 0, 17
        if _132 - 1 >= _132:
            revert with 0, 50
        _170 = mem[(32 * _132 - 1) + ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (2 * ceil32(return_data.size)) + 129]
        if mem[(32 * _132 - 1) + ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (2 * ceil32(return_data.size)) + 129] <= cd[(arg4 + 68)]:
            revert with 0, 'No profit'
        if mem[(32 * _132 - 1) + ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (2 * ceil32(return_data.size)) + 129] < cd[(arg4 + 68)]:
            revert with 0, 17
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = cd[(arg4 + 68)]
        require ext_code.size(address(_70))
        call address(_70).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, cd[(arg4 + 68)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _180 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_180] == bool(mem[_180])
        mem[mem[64] + 4] = stor0
        mem[mem[64] + 36] = _170 - cd[(arg4 + 68)]
        require ext_code.size(address(_70))
        call address(_70).0xa9059cbb with:
             gas gas_remaining wei
            args stor0, _170 - cd[(arg4 + 68)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _188 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_188] == bool(mem[_188])
}

function uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    require arg4.length >= 96
    require cd[(arg4 + 36)] == address(cd[(arg4 + 36)])
    require cd[(arg4 + 100)] <= test266151307()
    require arg4 + arg4.length + 36 > arg4 + cd[(arg4 + 100)] + 67
    if cd[(arg4 + cd[(arg4 + 100)] + 36)] > test266151307():
        revert with 0, 65
    if ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 97 < 96 or ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 97 > test266151307():
        revert with 0, 65
    mem[96] = cd[(arg4 + cd[(arg4 + 100)] + 36)]
    require cd[(arg4 + 100)] + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 68 <= arg4.length + 36
    s = 128
    idx = arg4 + cd[(arg4 + 100)] + 68
    while idx < arg4 + cd[(arg4 + 100)] + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 68:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    if 0 >= cd[(arg4 + cd[(arg4 + 100)] + 36)]:
        revert with 0, 50
    if not arg2:
        _65 = mem[128]
        if 1 >= cd[(arg4 + cd[(arg4 + 100)] + 36)]:
            revert with 0, 50
        _69 = mem[160]
        if 300 > !block.timestamp:
            revert with 0, 17
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 101] = address(cd[(arg4 + 36)])
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 133] = arg3
        require ext_code.size(address(_65))
        call address(_65).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[(arg4 + 36)]), arg3
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 97] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 97] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 101] = arg3
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 133] = cd[(arg4 + 68)]
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 165] = 160
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 261] = cd[(arg4 + cd[(arg4 + 100)] + 36)]
        idx = 0
        s = ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 293
        t = 128
        while idx < cd[(arg4 + cd[(arg4 + 100)] + 36)]:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 197] = this.address
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 229] = block.timestamp + 300
        require ext_code.size(address(cd[(arg4 + 36)]))
        call address(cd[(arg4 + 36)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg3, cd[(arg4 + 68)], Array(len=cd[(arg4 + cd[(arg4 + 100)] + 36)], data=mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 293 len 32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]]), address(this.address), block.timestamp + 300
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (2 * ceil32(return_data.size)) + 97
        require return_data.size >= 32
        _129 = mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, arg3) >> 32
        require mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
        require ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + return_data.size + 97 > ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, arg3) >> 32 + 128
        _131 = mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97]
        if mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97]) + 1 < 0 or ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97]) + 98 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, arg3) >> 32 + 97]) + 98
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (2 * ceil32(return_data.size)) + 97] = _131
        require _129 + (32 * _131) + 32 <= return_data.size
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (2 * ceil32(return_data.size)) + 129 len ceil32(32 * _131)] = mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + _129 + 129 len ceil32(32 * _131)]
        if _131 < 1:
            revert with 0, 17
        if _131 - 1 >= _131:
            revert with 0, 50
        _169 = mem[(32 * _131 - 1) + ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (2 * ceil32(return_data.size)) + 129]
        if mem[(32 * _131 - 1) + ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (2 * ceil32(return_data.size)) + 129] <= cd[(arg4 + 68)]:
            revert with 0, 'No profit'
        if mem[(32 * _131 - 1) + ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (2 * ceil32(return_data.size)) + 129] < cd[(arg4 + 68)]:
            revert with 0, 17
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = cd[(arg4 + 68)]
        require ext_code.size(address(_69))
        call address(_69).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, cd[(arg4 + 68)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _179 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_179] == bool(mem[_179])
        mem[mem[64] + 4] = stor0
        mem[mem[64] + 36] = _169 - cd[(arg4 + 68)]
        require ext_code.size(address(_69))
        call address(_69).0xa9059cbb with:
             gas gas_remaining wei
            args stor0, _169 - cd[(arg4 + 68)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _187 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_187] == bool(mem[_187])
    else:
        _67 = mem[128]
        if 1 >= cd[(arg4 + cd[(arg4 + 100)] + 36)]:
            revert with 0, 50
        _70 = mem[160]
        if 300 > !block.timestamp:
            revert with 0, 17
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 101] = address(cd[(arg4 + 36)])
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 133] = arg2
        require ext_code.size(address(_67))
        call address(_67).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[(arg4 + 36)]), arg2
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 97] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 97] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 101] = arg2
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 133] = cd[(arg4 + 68)]
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 165] = 160
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 261] = cd[(arg4 + cd[(arg4 + 100)] + 36)]
        idx = 0
        s = ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 293
        t = 128
        while idx < cd[(arg4 + cd[(arg4 + 100)] + 36)]:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 197] = this.address
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 229] = block.timestamp + 300
        require ext_code.size(address(cd[(arg4 + 36)]))
        call address(cd[(arg4 + 36)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg2, cd[(arg4 + 68)], Array(len=cd[(arg4 + cd[(arg4 + 100)] + 36)], data=mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 293 len 32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]]), address(this.address), block.timestamp + 300
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (2 * ceil32(return_data.size)) + 97
        require return_data.size >= 32
        _130 = mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, arg2) >> 32
        require mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
        require ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + return_data.size + 97 > ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, arg2) >> 32 + 128
        _132 = mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97]
        if mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97]) + 1 < 0 or ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97]) + 98 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, arg2) >> 32 + 97]) + 98
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (2 * ceil32(return_data.size)) + 97] = _132
        require _130 + (32 * _132) + 32 <= return_data.size
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (2 * ceil32(return_data.size)) + 129 len ceil32(32 * _132)] = mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + ceil32(return_data.size) + _130 + 129 len ceil32(32 * _132)]
        if _132 < 1:
            revert with 0, 17
        if _132 - 1 >= _132:
            revert with 0, 50
        _170 = mem[(32 * _132 - 1) + ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (2 * ceil32(return_data.size)) + 129]
        if mem[(32 * _132 - 1) + ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (2 * ceil32(return_data.size)) + 129] <= cd[(arg4 + 68)]:
            revert with 0, 'No profit'
        if mem[(32 * _132 - 1) + ceil32(32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + (2 * ceil32(return_data.size)) + 129] < cd[(arg4 + 68)]:
            revert with 0, 17
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = cd[(arg4 + 68)]
        require ext_code.size(address(_70))
        call address(_70).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, cd[(arg4 + 68)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _180 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_180] == bool(mem[_180])
        mem[mem[64] + 4] = stor0
        mem[mem[64] + 36] = _170 - cd[(arg4 + 68)]
        require ext_code.size(address(_70))
        call address(_70).0xa9059cbb with:
             gas gas_remaining wei
            args stor0, _170 - cd[(arg4 + 68)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _188 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_188] == bool(mem[_188])
}



}
