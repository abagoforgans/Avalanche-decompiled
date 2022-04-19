contract main {




// =====================  Runtime code  =====================


address owner;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function sub_092213c8(?) payable {
    require calldata.size - 4 >= 160
    require cd[36] == address(cd[36])
    require cd[68] == address(cd[68])
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    require ('cd', 132).length <= test266151307()
    require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'o'
    if 0 >= ('cd', 100).length:
        revert with 'NH{q', 50
    require ('cd', 100)[0] == address(('cd', 100)[0])
    if 0 >= ('cd', 132).length:
        revert with 'NH{q', 50
    require ('cd', 132)[0] == address(('cd', 132)[0])
    mem[100] = address(cd[36])
    mem[132] = -1
    require ext_code.size(address(('cd', 100)[0]))
    call address(('cd', 100)[0]).approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(cd[36]), -1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 100] = address(cd[68])
    mem[ceil32(return_data.size) + 132] = -1
    require ext_code.size(address(('cd', 132)[0]))
    call address(('cd', 132)[0]).approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(cd[68]), -1
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 100] = msg.sender
    mem[(2 * ceil32(return_data.size)) + 132] = this.address
    mem[(2 * ceil32(return_data.size)) + 164] = cd[4]
    require ext_code.size(address(('cd', 100)[0]))
    call address(('cd', 100)[0]).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, cd[4]
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(4 * ceil32(return_data.size)) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(4 * ceil32(return_data.size)) + 100] = cd[4]
    mem[(4 * ceil32(return_data.size)) + 132] = 0
    mem[(4 * ceil32(return_data.size)) + 164] = 160
    mem[(4 * ceil32(return_data.size)) + 260] = ('cd', 100).length
    idx = 0
    s = (4 * ceil32(return_data.size)) + 292
    t = cd[100] + 36
    while idx < ('cd', 100).length:
        require cd[t] == address(cd[t])
        mem[s] = address(cd[t])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(4 * ceil32(return_data.size)) + 196] = this.address
    mem[(4 * ceil32(return_data.size)) + 228] = block.timestamp
    require ext_code.size(address(cd[36]))
    call address(cd[36]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args cd[4], 0, 160, address(this.address), block.timestamp, ('cd', 100).length, mem[(4 * ceil32(return_data.size)) + 292 len 32 * ('cd', 100).length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(4 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (6 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _57 = mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32
    require mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 127 < (4 * ceil32(return_data.size)) + return_data.size + 96
    _58 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]
    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96] > test266151307():
        revert with 'NH{q', 65
    if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 97 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 97
    mem[(6 * ceil32(return_data.size)) + 96] = _58
    require (32 * _58) + _57 + 32 <= return_data.size
    mem[(6 * ceil32(return_data.size)) + 128 len ceil32(32 * _58)] = mem[(4 * ceil32(return_data.size)) + _57 + 128 len ceil32(32 * _58)]
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(('cd', 132)[0]))
    staticcall address(('cd', 132)[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _97 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _98 = mem[_97]
    _99 = mem[64]
    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _98
    mem[mem[64] + 36] = 0
    mem[mem[64] + 68] = 160
    mem[mem[64] + 164] = ('cd', 132).length
    idx = 0
    s = mem[64] + 196
    t = cd[132] + 36
    while idx < ('cd', 132).length:
        require cd[t] == address(cd[t])
        mem[s] = address(cd[t])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_99 + 100] = this.address
    mem[_99 + 132] = block.timestamp
    require ext_code.size(address(cd[68]))
    call address(cd[68]).mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _99 + (32 * ('cd', 132).length) + -mem[64] + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _129 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _130 = mem[_129]
    require mem[_129] <= test266151307()
    require _129 + mem[_129] + 31 < _129 + return_data.size
    _131 = mem[_129 + mem[_129]]
    if mem[_129 + mem[_129]] > test266151307():
        revert with 'NH{q', 65
    if _129 + ceil32(return_data.size) + ceil32(32 * mem[_129 + mem[_129]]) + 1 > test266151307() or ceil32(32 * mem[_129 + mem[_129]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _129 + ceil32(return_data.size) + ceil32(32 * mem[_129 + mem[_129]]) + 1
    mem[_129 + ceil32(return_data.size)] = _131
    require (32 * _131) + _130 + 32 <= return_data.size
    mem[_129 + ceil32(return_data.size) + 32 len ceil32(32 * _131)] = mem[_129 + _130 + 32 len ceil32(32 * _131)]
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(('cd', 100)[0]))
    staticcall address(('cd', 100)[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _159 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _160 = mem[_159]
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(('cd', 132)[0]))
    staticcall address(('cd', 132)[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _163 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _164 = mem[_163]
    if _160 <= cd[4]:
        revert with 0, 'p'
    if not _160:
        if mem[_163]:
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _164
            require ext_code.size(address(('cd', 132)[0]))
            call address(('cd', 132)[0]).transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args msg.sender, _164
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _172 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_172] == bool(mem[_172])
    else:
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = _160
        require ext_code.size(address(('cd', 100)[0]))
        call address(('cd', 100)[0]).transfer(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args msg.sender, _160
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _171 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_171] == bool(mem[_171])
        if _164:
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _164
            require ext_code.size(address(('cd', 132)[0]))
            call address(('cd', 132)[0]).transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args msg.sender, _164
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _177 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_177] == bool(mem[_177])
}



}
