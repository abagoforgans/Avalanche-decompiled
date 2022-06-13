contract main {




// =====================  Runtime code  =====================


#
#  - sub_3c82bb47(?)
#
address stor0;
address stor1;
address stor2;

function _fallback() payable {
    revert
}

function sub_b4782a85(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] == cd[4]
    require cd[36] == address(cd[36])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] == address(cd[100])
    mem[100] = msg.sender
    mem[132] = this.address
    mem[164] = cd[4]
    require ext_code.size(stor0)
    call stor0.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), cd[4]
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ('cd', 68).length < 1:
        revert with 'NH{q', 17
    if ('cd', 68).length - 1 >= ('cd', 68).length:
        revert with 'NH{q', 50
    require cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)] == address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)])
    require address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)])
    mem[ceil32(return_data.size) + 100] = address(cd[36])
    mem[ceil32(return_data.size) + 132] = cd[4]
    require ext_code.size(stor0)
    call stor0.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[36]), cd[4]
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if block.timestamp > -61:
        revert with 'NH{q', 17
    mem[(2 * ceil32(return_data.size)) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 100] = cd[4]
    mem[(2 * ceil32(return_data.size)) + 132] = 0
    mem[(2 * ceil32(return_data.size)) + 164] = 160
    mem[(2 * ceil32(return_data.size)) + 260] = ('cd', 68).length
    idx = 0
    s = cd[68] + 36
    t = (2 * ceil32(return_data.size)) + 292
    while idx < ('cd', 68).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(2 * ceil32(return_data.size)) + 196] = this.address
    mem[(2 * ceil32(return_data.size)) + 228] = block.timestamp + 60
    require ext_code.size(address(cd[36]))
    call address(cd[36]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args cd[4], 0, 160, address(this.address), block.timestamp + 60, ('cd', 68).length, mem[(2 * ceil32(return_data.size)) + 292 len 32 * ('cd', 68).length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _19 = mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32
    require mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
    _20 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]
    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96] > test266151307():
        revert with 'NH{q', 65
    if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 97
    mem[(4 * ceil32(return_data.size)) + 96] = _20
    require _19 + (32 * _20) + 32 <= return_data.size
    idx = 0
    s = (2 * ceil32(return_data.size)) + _19 + 128
    t = (4 * ceil32(return_data.size)) + 128
    while idx < _20:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if ('cd', 68).length < 1:
        revert with 'NH{q', 17
    if ('cd', 68).length - 1 >= ('cd', 68).length:
        revert with 'NH{q', 50
    require cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)] == address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)])
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]))
    staticcall address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _53 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _54 = mem[_53]
    require mem[_53] == mem[_53]
    mem[mem[64] + 4] = address(cd[100])
    mem[mem[64] + 36] = _54
    require ext_code.size(address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]))
    call address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[100]), _54
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _57 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_57] == bool(mem[_57])
    require ext_code.size(address(cd[100]))
    staticcall address(cd[100]).bondPrice() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _61 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _62 = mem[_61]
    require mem[_61] == mem[_61]
    require ext_code.size(address(cd[100]))
    staticcall address(cd[100]).bondInfo(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _65 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 128
    _66 = mem[_65]
    require mem[_65] == mem[_65]
    require mem[_65 + 32] == mem[_65 + 32]
    require mem[_65 + 64] == mem[_65 + 92 len 4]
    require mem[_65 + 96] == mem[_65 + 124 len 4]
    mem[mem[64] + 4] = _54
    mem[mem[64] + 36] = _62
    mem[mem[64] + 68] = msg.sender
    require ext_code.size(address(cd[100]))
    call address(cd[100]).deposit(uint256 arg1, uint256 arg2, address arg3) with:
         gas gas_remaining wei
        args _54, _62, msg.sender
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _72 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_72] == mem[_72]
    require ext_code.size(address(cd[100]))
    staticcall address(cd[100]).bondInfo(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _76 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 128
    require mem[_76] == mem[_76]
    require mem[_76 + 32] == mem[_76 + 32]
    require mem[_76 + 64] == mem[_76 + 92 len 4]
    require mem[_76 + 96] == mem[_76 + 124 len 4]
    if mem[_76] < _66:
        revert with 'NH{q', 17
    mem[mem[64]] = mem[_76] - _66
    return memory
      from mem[64]
       len 32
}

function sub_7fb2582c(?) payable {
    require calldata.size - 4 >= 160
    require cd[4] == cd[4]
    require cd[36] == address(cd[36])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] == address(cd[100])
    require cd[132] == cd[132]
    mem[100] = msg.sender
    mem[132] = this.address
    mem[164] = cd[4]
    require ext_code.size(stor0)
    call stor0.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), cd[4]
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ('cd', 68).length < 1:
        revert with 'NH{q', 17
    if ('cd', 68).length - 1 >= ('cd', 68).length:
        revert with 'NH{q', 50
    require cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)] == address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)])
    require address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)])
    mem[ceil32(return_data.size) + 100] = address(cd[36])
    mem[ceil32(return_data.size) + 132] = cd[4]
    require ext_code.size(stor0)
    call stor0.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[36]), cd[4]
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if block.timestamp > -61:
        revert with 'NH{q', 17
    mem[(2 * ceil32(return_data.size)) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 100] = cd[4]
    mem[(2 * ceil32(return_data.size)) + 132] = 0
    mem[(2 * ceil32(return_data.size)) + 164] = 160
    mem[(2 * ceil32(return_data.size)) + 260] = ('cd', 68).length
    idx = 0
    s = cd[68] + 36
    t = (2 * ceil32(return_data.size)) + 292
    while idx < ('cd', 68).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(2 * ceil32(return_data.size)) + 196] = this.address
    mem[(2 * ceil32(return_data.size)) + 228] = block.timestamp + 60
    require ext_code.size(address(cd[36]))
    call address(cd[36]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args cd[4], 0, 160, address(this.address), block.timestamp + 60, ('cd', 68).length, mem[(2 * ceil32(return_data.size)) + 292 len 32 * ('cd', 68).length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _18 = mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32
    require mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
    _19 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]
    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96] > test266151307():
        revert with 'NH{q', 65
    if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 97
    mem[(4 * ceil32(return_data.size)) + 96] = _19
    require _18 + (32 * _19) + 32 <= return_data.size
    idx = 0
    s = (2 * ceil32(return_data.size)) + _18 + 128
    t = (4 * ceil32(return_data.size)) + 128
    while idx < _19:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if ('cd', 68).length < 1:
        revert with 'NH{q', 17
    if ('cd', 68).length - 1 >= ('cd', 68).length:
        revert with 'NH{q', 50
    require cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)] == address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)])
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]))
    staticcall address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _52 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _53 = mem[_52]
    require mem[_52] == mem[_52]
    mem[mem[64] + 4] = address(cd[100])
    mem[mem[64] + 36] = _53
    require ext_code.size(address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]))
    call address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[100]), _53
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _56 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_56] == bool(mem[_56])
    require ext_code.size(address(cd[100]))
    staticcall address(cd[100]).bondPrice() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _60 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _61 = mem[_60]
    require mem[_60] == mem[_60]
    require ext_code.size(address(cd[100]))
    staticcall address(cd[100]).bondInfo(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _64 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 128
    _65 = mem[_64]
    require mem[_64] == mem[_64]
    require mem[_64 + 32] == mem[_64 + 32]
    require mem[_64 + 64] == mem[_64 + 92 len 4]
    require mem[_64 + 96] == mem[_64 + 124 len 4]
    mem[mem[64] + 4] = _53
    mem[mem[64] + 36] = _61
    mem[mem[64] + 68] = msg.sender
    require ext_code.size(address(cd[100]))
    call address(cd[100]).deposit(uint256 arg1, uint256 arg2, address arg3) with:
         gas gas_remaining wei
        args _53, _61, msg.sender
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _71 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_71] == mem[_71]
    require ext_code.size(address(cd[100]))
    staticcall address(cd[100]).bondInfo(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _75 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 128
    require mem[_75] == mem[_75]
    require mem[_75 + 32] == mem[_75 + 32]
    require mem[_75 + 64] == mem[_75 + 92 len 4]
    require mem[_75 + 96] == mem[_75 + 124 len 4]
    if mem[_75] < _65:
        revert with 'NH{q', 17
    if mem[_75] - _65 < cd[132]:
        revert with 0, 'insufficient profit, either ROI plummeted or your slippage is too tight'
    if ('cd', 68).length < 1:
        revert with 'NH{q', 17
    if ('cd', 68).length - 1 >= ('cd', 68).length:
        revert with 'NH{q', 50
    require cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)] == address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)])
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]))
    staticcall address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _84 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _85 = mem[_84]
    require mem[_84] == mem[_84]
    if mem[_84] <= 0:
        mem[mem[64] + 4] = this.address
        require ext_code.size(stor0)
        staticcall stor0.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _89 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _92 = mem[_89]
        require mem[_89] == mem[_89]
        if mem[_89] > 0:
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _92
            require ext_code.size(stor0)
            call stor0.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, _92
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _98 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_98] == bool(mem[_98])
    else:
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = _85
        require ext_code.size(address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]))
        call address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, _85
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _91 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_91] == bool(mem[_91])
        mem[mem[64] + 4] = this.address
        require ext_code.size(stor0)
        staticcall stor0.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _99 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _101 = mem[_99]
        require mem[_99] == mem[_99]
        if mem[_99] > 0:
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _101
            require ext_code.size(stor0)
            call stor0.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, _101
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _104 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_104] == bool(mem[_104])
}

function sub_066693d9(?) payable {
    require calldata.size - 4 >= 256
    require cd[4] == cd[4]
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
    require cd[164] == address(cd[164])
    require cd[196] == address(cd[196])
    require cd[228] == address(cd[228])
    mem[100] = msg.sender
    mem[132] = this.address
    mem[164] = cd[4]
    require ext_code.size(stor0)
    call stor0.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), cd[4]
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ('cd', 100).length < 1:
        revert with 'NH{q', 17
    if ('cd', 100).length - 1 >= ('cd', 100).length:
        revert with 'NH{q', 50
    require cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)] == address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)])
    require address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)])
    mem[ceil32(return_data.size) + 100] = address(cd[36])
    mem[ceil32(return_data.size) + 132] = cd[4] / 2
    require ext_code.size(stor0)
    call stor0.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[36]), cd[4] / 2
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if block.timestamp > -61:
        revert with 'NH{q', 17
    mem[(2 * ceil32(return_data.size)) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 100] = cd[4] / 2
    mem[(2 * ceil32(return_data.size)) + 132] = 0
    mem[(2 * ceil32(return_data.size)) + 164] = 160
    mem[(2 * ceil32(return_data.size)) + 260] = ('cd', 100).length
    idx = 0
    s = cd[100] + 36
    t = (2 * ceil32(return_data.size)) + 292
    while idx < ('cd', 100).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(2 * ceil32(return_data.size)) + 196] = this.address
    mem[(2 * ceil32(return_data.size)) + 228] = block.timestamp + 60
    require ext_code.size(address(cd[36]))
    call address(cd[36]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args Mask(255, 1, cd[4]), 0, 160, address(this.address), block.timestamp + 60, ('cd', 100).length, mem[(2 * ceil32(return_data.size)) + 292 len 32 * ('cd', 100).length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _16 = mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32
    require mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
    _17 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]
    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96] > test266151307():
        revert with 'NH{q', 65
    if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 97
    mem[(4 * ceil32(return_data.size)) + 96] = _17
    require _16 + (32 * _17) + 32 <= return_data.size
    idx = 0
    s = (2 * ceil32(return_data.size)) + _16 + 128
    t = (4 * ceil32(return_data.size)) + 128
    while idx < _17:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if ('cd', 132).length < 1:
        revert with 'NH{q', 17
    if ('cd', 132).length - 1 >= ('cd', 132).length:
        revert with 'NH{q', 50
    require cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)] == address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)])
    require address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)])
    mem[mem[64] + 4] = address(cd[68])
    mem[mem[64] + 36] = cd[4] / 2
    require ext_code.size(stor0)
    call stor0.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[68]), cd[4] / 2
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _39 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_39] == bool(mem[_39])
    if block.timestamp > -61:
        revert with 'NH{q', 17
    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = cd[4] / 2
    mem[mem[64] + 36] = 0
    mem[mem[64] + 68] = 160
    mem[mem[64] + 164] = ('cd', 132).length
    idx = 0
    s = cd[132] + 36
    t = mem[64] + 196
    while idx < ('cd', 132).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 100] = this.address
    mem[mem[64] + 132] = block.timestamp + 60
    require ext_code.size(address(cd[68]))
    call address(cd[68]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args Mask(255, 1, cd[4]), 0, 160, address(this.address), block.timestamp + 60, ('cd', 132).length, mem[mem[64] + 196 len 32 * ('cd', 132).length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _60 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _61 = mem[_60]
    require mem[_60] <= test266151307()
    require _60 + mem[_60] + 31 < _60 + return_data.size
    _62 = mem[_60 + mem[_60]]
    if mem[_60 + mem[_60]] > test266151307():
        revert with 'NH{q', 65
    if _60 + ceil32(return_data.size) + floor32(mem[_60 + mem[_60]]) + 1 > test266151307() or floor32(mem[_60 + mem[_60]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _60 + ceil32(return_data.size) + floor32(mem[_60 + mem[_60]]) + 1
    mem[_60 + ceil32(return_data.size)] = _62
    require _61 + (32 * _62) + 32 <= return_data.size
    idx = 0
    s = _60 + _61 + 32
    t = _60 + ceil32(return_data.size) + 32
    while idx < _62:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if ('cd', 132).length < 1:
        revert with 'NH{q', 17
    if ('cd', 132).length - 1 >= ('cd', 132).length:
        revert with 'NH{q', 50
    require cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)] == address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)])
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]))
    staticcall address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _85 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _86 = mem[_85]
    require mem[_85] == mem[_85]
    mem[mem[64] + 4] = this.address
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _89 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _90 = mem[_89]
    require mem[_89] == mem[_89]
    mem[mem[64] + 4] = address(cd[164])
    mem[mem[64] + 36] = _86
    require ext_code.size(address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]))
    call address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[164]), _86
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _93 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_93] == bool(mem[_93])
    mem[mem[64] + 4] = address(cd[164])
    mem[mem[64] + 36] = _90
    require ext_code.size(stor1)
    call stor1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[164]), _90
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _97 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_97] == bool(mem[_97])
    if block.timestamp > -61:
        revert with 'NH{q', 17
    mem[mem[64] + 68] = _90
    mem[mem[64] + 100] = _86
    mem[mem[64] + 132] = 0
    mem[mem[64] + 164] = 0
    mem[mem[64] + 196] = this.address
    mem[mem[64] + 228] = block.timestamp + 60
    require ext_code.size(address(cd[164]))
    call address(cd[164]).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
         gas gas_remaining wei
        args stor1, address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]), _90, _86, 0, 0, address(this.address), block.timestamp + 60
    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _101 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 96
    require mem[_101] == mem[_101]
    require mem[_101 + 32] == mem[_101 + 32]
    require mem[_101 + 64] == mem[_101 + 64]
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(cd[196]))
    staticcall address(cd[196]).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _107 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _108 = mem[_107]
    require mem[_107] == mem[_107]
    mem[mem[64] + 4] = address(cd[228])
    mem[mem[64] + 36] = _108
    require ext_code.size(address(cd[196]))
    call address(cd[196]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[228]), _108
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _111 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_111] == bool(mem[_111])
    require ext_code.size(address(cd[228]))
    staticcall address(cd[228]).bondPrice() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _115 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _116 = mem[_115]
    require mem[_115] == mem[_115]
    require ext_code.size(address(cd[228]))
    staticcall address(cd[228]).bondInfo(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _119 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 128
    _120 = mem[_119]
    require mem[_119] == mem[_119]
    require mem[_119 + 32] == mem[_119 + 32]
    require mem[_119 + 64] == mem[_119 + 92 len 4]
    require mem[_119 + 96] == mem[_119 + 124 len 4]
    mem[mem[64] + 4] = _108
    mem[mem[64] + 36] = _116
    mem[mem[64] + 68] = msg.sender
    require ext_code.size(address(cd[228]))
    call address(cd[228]).deposit(uint256 arg1, uint256 arg2, address arg3) with:
         gas gas_remaining wei
        args _108, _116, msg.sender
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _126 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_126] == mem[_126]
    require ext_code.size(address(cd[228]))
    staticcall address(cd[228]).bondInfo(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _130 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 128
    require mem[_130] == mem[_130]
    require mem[_130 + 32] == mem[_130 + 32]
    require mem[_130 + 64] == mem[_130 + 92 len 4]
    require mem[_130 + 96] == mem[_130 + 124 len 4]
    if mem[_130] < _120:
        revert with 'NH{q', 17
    mem[mem[64]] = mem[_130] - _120
    return memory
      from mem[64]
       len 32
}

function sub_f04dc2b2(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == address(arg2)
    require arg3 == arg3
    require arg4 == address(arg4)
    mem[100] = msg.sender
    mem[132] = this.address
    mem[164] = arg1
    require ext_code.size(stor0)
    call stor0.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 100] = stor2
    mem[ceil32(return_data.size) + 132] = arg1
    require ext_code.size(stor0)
    call stor0.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor2, arg1
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 96] = 0x4c09cf4e00000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 100] = arg1
    mem[(2 * ceil32(return_data.size)) + 132] = stor0
    mem[(2 * ceil32(return_data.size)) + 164] = address(arg2)
    mem[(2 * ceil32(return_data.size)) + 196] = arg3
    require ext_code.size(stor2)
    staticcall stor2.findBestPath(uint256 arg1, address arg2, address arg3, uint256 arg4) with:
            gas gas_remaining wei
           args arg1, stor0, address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _12 = mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32
    require mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require return_data.size - mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 >= 96
    if not bool((4 * ceil32(return_data.size)) + 192 <= test266151307()):
        revert with 'NH{q', 65
    mem[64] = (4 * ceil32(return_data.size)) + 192
    _14 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96]
    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] <= test266151307()
    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
    _15 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] + 96]
    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] + 96] > test266151307():
        revert with 'NH{q', 65
    if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] + 96]) + 193 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] + 96]) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] + 96]) + 193
    mem[(4 * ceil32(return_data.size)) + 192] = _15
    require mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + _14 + (32 * _15) + 32 <= return_data.size
    idx = 0
    s = (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96] + _14 + 128
    t = (4 * ceil32(return_data.size)) + 224
    while idx < _15:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(4 * ceil32(return_data.size)) + 96] = (4 * ceil32(return_data.size)) + 192
    _34 = mem[(2 * ceil32(return_data.size)) + _12 + 128]
    require mem[(2 * ceil32(return_data.size)) + _12 + 128] <= test266151307()
    require (2 * ceil32(return_data.size)) + _12 + mem[(2 * ceil32(return_data.size)) + _12 + 128] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
    _35 = mem[(2 * ceil32(return_data.size)) + _12 + mem[(2 * ceil32(return_data.size)) + _12 + 128] + 96]
    if mem[(2 * ceil32(return_data.size)) + _12 + mem[(2 * ceil32(return_data.size)) + _12 + 128] + 96] > test266151307():
        revert with 'NH{q', 65
    _36 = mem[64]
    if mem[64] + floor32(mem[(2 * ceil32(return_data.size)) + _12 + mem[(2 * ceil32(return_data.size)) + _12 + 128] + 96]) + 1 > test266151307() or mem[64] + floor32(mem[(2 * ceil32(return_data.size)) + _12 + mem[(2 * ceil32(return_data.size)) + _12 + 128] + 96]) + 1 < mem[64]:
        revert with 'NH{q', 65
    mem[64] = mem[64] + floor32(mem[(2 * ceil32(return_data.size)) + _12 + mem[(2 * ceil32(return_data.size)) + _12 + 128] + 96]) + 1
    mem[_36] = mem[(2 * ceil32(return_data.size)) + _12 + mem[(2 * ceil32(return_data.size)) + _12 + 128] + 96]
    require _12 + _34 + (32 * _35) + 32 <= return_data.size
    idx = 0
    s = (2 * ceil32(return_data.size)) + _12 + _34 + 128
    t = _36 + 32
    while idx < _35:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(4 * ceil32(return_data.size)) + 128] = _36
    _106 = mem[(2 * ceil32(return_data.size)) + _12 + 160]
    require mem[(2 * ceil32(return_data.size)) + _12 + 160] <= test266151307()
    require (2 * ceil32(return_data.size)) + _12 + mem[(2 * ceil32(return_data.size)) + _12 + 160] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
    _107 = mem[(2 * ceil32(return_data.size)) + _12 + mem[(2 * ceil32(return_data.size)) + _12 + 160] + 96]
    if mem[(2 * ceil32(return_data.size)) + _12 + mem[(2 * ceil32(return_data.size)) + _12 + 160] + 96] > test266151307():
        revert with 'NH{q', 65
    _108 = mem[64]
    if mem[64] + floor32(mem[(2 * ceil32(return_data.size)) + _12 + mem[(2 * ceil32(return_data.size)) + _12 + 160] + 96]) + 1 > test266151307() or mem[64] + floor32(mem[(2 * ceil32(return_data.size)) + _12 + mem[(2 * ceil32(return_data.size)) + _12 + 160] + 96]) + 1 < mem[64]:
        revert with 'NH{q', 65
    mem[64] = mem[64] + floor32(mem[(2 * ceil32(return_data.size)) + _12 + mem[(2 * ceil32(return_data.size)) + _12 + 160] + 96]) + 1
    mem[_108] = mem[(2 * ceil32(return_data.size)) + _12 + mem[(2 * ceil32(return_data.size)) + _12 + 160] + 96]
    require _12 + _106 + (32 * _107) + 32 <= return_data.size
    idx = 0
    s = (2 * ceil32(return_data.size)) + _12 + _106 + 128
    t = _108 + 32
    while idx < _107:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(4 * ceil32(return_data.size)) + 160] = _108
    _180 = mem[64]
    mem[64] = mem[64] + 128
    mem[_180] = arg1
    mem[_180 + 32] = 0
    mem[_180 + 64] = _108
    mem[_180 + 96] = mem[(4 * ceil32(return_data.size)) + 128]
    if address(arg2):
        mem[mem[64]] = 0x6bf2df8600000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 96
        mem[mem[64] + 100] = arg1
        mem[mem[64] + 132] = 0
        mem[mem[64] + 164] = 128
        _191 = mem[_108]
        mem[mem[64] + 228] = mem[_108]
        idx = 0
        s = _108 + 32
        t = mem[64] + 260
        while idx < _191:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        _259 = mem[_180 + 96]
        mem[mem[64] + 196] = (32 * _191) + 160
        _261 = mem[_259]
        mem[mem[64] + (32 * _191) + 260] = mem[_259]
        idx = 0
        s = _259 + 32
        t = mem[64] + (32 * _191) + 292
        while idx < _261:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 36] = this.address
        mem[mem[64] + 68] = 0
        require ext_code.size(stor2)
        call stor2.swapNoSplit(uint256 arg1, uint256 arg2, address[] arg3, address[] arg4, address arg5, uint256 arg6) with:
             gas gas_remaining wei
            args 96, address(this.address), 0, arg1, 0, 128, (32 * _191) + 160, mem[mem[64] + 228 len (32 * _191) + (32 * _261) + 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg2))
        staticcall address(arg2).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _335 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _337 = mem[_335]
        require mem[_335] == mem[_335]
        mem[mem[64] + 4] = address(arg4)
        mem[mem[64] + 36] = _337
        require ext_code.size(address(arg2))
        call address(arg2).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg4), _337
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _343 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_343] == bool(mem[_343])
        require ext_code.size(address(arg4))
        staticcall address(arg4).bondPrice() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _351 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _353 = mem[_351]
        require mem[_351] == mem[_351]
        require ext_code.size(address(arg4))
        staticcall address(arg4).bondInfo(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _359 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _361 = mem[_359]
        require mem[_359] == mem[_359]
        require mem[_359 + 32] == mem[_359 + 32]
        require mem[_359 + 64] == mem[_359 + 92 len 4]
        require mem[_359 + 96] == mem[_359 + 124 len 4]
        mem[mem[64] + 4] = _337
        mem[mem[64] + 36] = _353
        mem[mem[64] + 68] = msg.sender
        require ext_code.size(address(arg4))
        call address(arg4).deposit(uint256 arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args _337, _353, msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _373 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_373] == mem[_373]
        require ext_code.size(address(arg4))
        staticcall address(arg4).bondInfo(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _381 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        require mem[_381] == mem[_381]
        require mem[_381 + 32] == mem[_381 + 32]
        require mem[_381 + 64] == mem[_381 + 92 len 4]
        require mem[_381 + 96] == mem[_381 + 124 len 4]
        if mem[_381] < _361:
            revert with 'NH{q', 17
        mem[mem[64]] = mem[_381] - _361
    else:
        _184 = mem[64]
        mem[mem[64]] = 0xf035038200000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 96
        mem[mem[64] + 100] = arg1
        mem[mem[64] + 132] = 0
        mem[mem[64] + 164] = 128
        _192 = mem[_108]
        mem[mem[64] + 228] = mem[_108]
        idx = 0
        s = _108 + 32
        t = mem[64] + 260
        while idx < _192:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        _260 = mem[_180 + 96]
        mem[mem[64] + 196] = (32 * _192) + 160
        _262 = mem[_260]
        mem[mem[64] + (32 * _192) + 260] = mem[_260]
        idx = 0
        s = _260 + 32
        t = mem[64] + (32 * _192) + 292
        while idx < _262:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_184 + 36] = this.address
        mem[_184 + 68] = 0
        require ext_code.size(stor2)
        call stor2.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _184 + (32 * _192) + (32 * _262) + -mem[64] + 288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg2))
        staticcall address(arg2).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _336 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _338 = mem[_336]
        require mem[_336] == mem[_336]
        mem[mem[64] + 4] = address(arg4)
        mem[mem[64] + 36] = _338
        require ext_code.size(address(arg2))
        call address(arg2).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg4), _338
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _344 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_344] == bool(mem[_344])
        require ext_code.size(address(arg4))
        staticcall address(arg4).bondPrice() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _352 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _354 = mem[_352]
        require mem[_352] == mem[_352]
        require ext_code.size(address(arg4))
        staticcall address(arg4).bondInfo(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _360 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _362 = mem[_360]
        require mem[_360] == mem[_360]
        require mem[_360 + 32] == mem[_360 + 32]
        require mem[_360 + 64] == mem[_360 + 92 len 4]
        require mem[_360 + 96] == mem[_360 + 124 len 4]
        mem[mem[64] + 4] = _338
        mem[mem[64] + 36] = _354
        mem[mem[64] + 68] = msg.sender
        require ext_code.size(address(arg4))
        call address(arg4).deposit(uint256 arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args _338, _354, msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _374 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_374] == mem[_374]
        require ext_code.size(address(arg4))
        staticcall address(arg4).bondInfo(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _382 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        require mem[_382] == mem[_382]
        require mem[_382 + 32] == mem[_382 + 32]
        require mem[_382 + 64] == mem[_382 + 92 len 4]
        require mem[_382 + 96] == mem[_382 + 124 len 4]
        if mem[_382] < _362:
            revert with 'NH{q', 17
        mem[mem[64]] = mem[_382] - _362
    return memory
      from mem[64]
       len 32
}

function sub_eb9711a3(?) payable {
    require calldata.size - 4 >= 288
    require cd[4] == cd[4]
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
    require cd[164] == address(cd[164])
    require cd[196] == address(cd[196])
    require cd[228] == address(cd[228])
    require cd[260] == cd[260]
    mem[100] = msg.sender
    mem[132] = this.address
    mem[164] = cd[4]
    require ext_code.size(stor0)
    call stor0.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), cd[4]
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ('cd', 100).length < 1:
        revert with 'NH{q', 17
    if ('cd', 100).length - 1 >= ('cd', 100).length:
        revert with 'NH{q', 50
    require cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)] == address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)])
    require address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)])
    mem[ceil32(return_data.size) + 100] = address(cd[36])
    mem[ceil32(return_data.size) + 132] = cd[4] / 2
    require ext_code.size(stor0)
    call stor0.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[36]), cd[4] / 2
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if block.timestamp > -61:
        revert with 'NH{q', 17
    mem[(2 * ceil32(return_data.size)) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 100] = cd[4] / 2
    mem[(2 * ceil32(return_data.size)) + 132] = 0
    mem[(2 * ceil32(return_data.size)) + 164] = 160
    mem[(2 * ceil32(return_data.size)) + 260] = ('cd', 100).length
    idx = 0
    s = cd[100] + 36
    t = (2 * ceil32(return_data.size)) + 292
    while idx < ('cd', 100).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(2 * ceil32(return_data.size)) + 196] = this.address
    mem[(2 * ceil32(return_data.size)) + 228] = block.timestamp + 60
    require ext_code.size(address(cd[36]))
    call address(cd[36]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args Mask(255, 1, cd[4]), 0, 160, address(this.address), block.timestamp + 60, ('cd', 100).length, mem[(2 * ceil32(return_data.size)) + 292 len 32 * ('cd', 100).length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _37 = mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32
    require mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
    _38 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]
    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96] > test266151307():
        revert with 'NH{q', 65
    if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 97
    mem[(4 * ceil32(return_data.size)) + 96] = _38
    require _37 + (32 * _38) + 32 <= return_data.size
    idx = 0
    s = (2 * ceil32(return_data.size)) + _37 + 128
    t = (4 * ceil32(return_data.size)) + 128
    while idx < _38:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if ('cd', 132).length < 1:
        revert with 'NH{q', 17
    if ('cd', 132).length - 1 >= ('cd', 132).length:
        revert with 'NH{q', 50
    require cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)] == address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)])
    require address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)])
    mem[mem[64] + 4] = address(cd[68])
    mem[mem[64] + 36] = cd[4] / 2
    require ext_code.size(stor0)
    call stor0.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[68]), cd[4] / 2
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _60 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_60] == bool(mem[_60])
    if block.timestamp > -61:
        revert with 'NH{q', 17
    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = cd[4] / 2
    mem[mem[64] + 36] = 0
    mem[mem[64] + 68] = 160
    mem[mem[64] + 164] = ('cd', 132).length
    idx = 0
    s = cd[132] + 36
    t = mem[64] + 196
    while idx < ('cd', 132).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 100] = this.address
    mem[mem[64] + 132] = block.timestamp + 60
    require ext_code.size(address(cd[68]))
    call address(cd[68]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args Mask(255, 1, cd[4]), 0, 160, address(this.address), block.timestamp + 60, ('cd', 132).length, mem[mem[64] + 196 len 32 * ('cd', 132).length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _81 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _82 = mem[_81]
    require mem[_81] <= test266151307()
    require _81 + mem[_81] + 31 < _81 + return_data.size
    _83 = mem[_81 + mem[_81]]
    if mem[_81 + mem[_81]] > test266151307():
        revert with 'NH{q', 65
    if _81 + ceil32(return_data.size) + floor32(mem[_81 + mem[_81]]) + 1 > test266151307() or floor32(mem[_81 + mem[_81]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _81 + ceil32(return_data.size) + floor32(mem[_81 + mem[_81]]) + 1
    mem[_81 + ceil32(return_data.size)] = _83
    require _82 + (32 * _83) + 32 <= return_data.size
    idx = 0
    s = _81 + _82 + 32
    t = _81 + ceil32(return_data.size) + 32
    while idx < _83:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if ('cd', 132).length < 1:
        revert with 'NH{q', 17
    if ('cd', 132).length - 1 >= ('cd', 132).length:
        revert with 'NH{q', 50
    require cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)] == address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)])
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]))
    staticcall address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _106 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _107 = mem[_106]
    require mem[_106] == mem[_106]
    mem[mem[64] + 4] = this.address
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _110 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _111 = mem[_110]
    require mem[_110] == mem[_110]
    mem[mem[64] + 4] = address(cd[164])
    mem[mem[64] + 36] = _107
    require ext_code.size(address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]))
    call address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[164]), _107
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _114 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_114] == bool(mem[_114])
    mem[mem[64] + 4] = address(cd[164])
    mem[mem[64] + 36] = _111
    require ext_code.size(stor1)
    call stor1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[164]), _111
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _118 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_118] == bool(mem[_118])
    if block.timestamp > -61:
        revert with 'NH{q', 17
    mem[mem[64] + 68] = _111
    mem[mem[64] + 100] = _107
    mem[mem[64] + 132] = 0
    mem[mem[64] + 164] = 0
    mem[mem[64] + 196] = this.address
    mem[mem[64] + 228] = block.timestamp + 60
    require ext_code.size(address(cd[164]))
    call address(cd[164]).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
         gas gas_remaining wei
        args stor1, address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]), _111, _107, 0, 0, address(this.address), block.timestamp + 60
    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _122 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 96
    require mem[_122] == mem[_122]
    require mem[_122 + 32] == mem[_122 + 32]
    require mem[_122 + 64] == mem[_122 + 64]
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(cd[196]))
    staticcall address(cd[196]).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _128 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _129 = mem[_128]
    require mem[_128] == mem[_128]
    mem[mem[64] + 4] = address(cd[228])
    mem[mem[64] + 36] = _129
    require ext_code.size(address(cd[196]))
    call address(cd[196]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[228]), _129
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _132 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_132] == bool(mem[_132])
    require ext_code.size(address(cd[228]))
    staticcall address(cd[228]).bondPrice() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _136 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _137 = mem[_136]
    require mem[_136] == mem[_136]
    require ext_code.size(address(cd[228]))
    staticcall address(cd[228]).bondInfo(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _140 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 128
    _141 = mem[_140]
    require mem[_140] == mem[_140]
    require mem[_140 + 32] == mem[_140 + 32]
    require mem[_140 + 64] == mem[_140 + 92 len 4]
    require mem[_140 + 96] == mem[_140 + 124 len 4]
    mem[mem[64] + 4] = _129
    mem[mem[64] + 36] = _137
    mem[mem[64] + 68] = msg.sender
    require ext_code.size(address(cd[228]))
    call address(cd[228]).deposit(uint256 arg1, uint256 arg2, address arg3) with:
         gas gas_remaining wei
        args _129, _137, msg.sender
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _147 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_147] == mem[_147]
    require ext_code.size(address(cd[228]))
    staticcall address(cd[228]).bondInfo(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _151 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 128
    require mem[_151] == mem[_151]
    require mem[_151 + 32] == mem[_151 + 32]
    require mem[_151 + 64] == mem[_151 + 92 len 4]
    require mem[_151 + 96] == mem[_151 + 124 len 4]
    if mem[_151] < _141:
        revert with 'NH{q', 17
    if mem[_151] - _141 < cd[260]:
        revert with 0, 'insufficient profit, either ROI plummeted or your slippage is too tight'
    if ('cd', 132).length < 1:
        revert with 'NH{q', 17
    if ('cd', 132).length - 1 >= ('cd', 132).length:
        revert with 'NH{q', 50
    require cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)] == address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)])
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]))
    staticcall address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _160 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _161 = mem[_160]
    require mem[_160] == mem[_160]
    if mem[_160] <= 0:
        mem[mem[64] + 4] = this.address
        require ext_code.size(stor1)
        staticcall stor1.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _165 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _168 = mem[_165]
        require mem[_165] == mem[_165]
        if mem[_165] > 0:
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _168
            require ext_code.size(stor1)
            call stor1.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, _168
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _174 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_174] == bool(mem[_174])
    else:
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = _161
        require ext_code.size(address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]))
        call address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, _161
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _167 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_167] == bool(mem[_167])
        mem[mem[64] + 4] = this.address
        require ext_code.size(stor1)
        staticcall stor1.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _175 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _177 = mem[_175]
        require mem[_175] == mem[_175]
        if mem[_175] > 0:
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _177
            require ext_code.size(stor1)
            call stor1.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, _177
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _180 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_180] == bool(mem[_180])
}

function sub_9c910c7e(?) payable {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg2 == address(arg2)
    require arg3 == arg3
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    require arg6 == address(arg6)
    mem[100] = msg.sender
    mem[132] = this.address
    mem[164] = arg1
    require ext_code.size(stor0)
    call stor0.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 100] = stor2
    mem[ceil32(return_data.size) + 132] = arg1 / 2
    require ext_code.size(stor0)
    call stor0.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor2, arg1 / 2
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 96] = 0x4c09cf4e00000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 100] = arg1 / 2
    mem[(2 * ceil32(return_data.size)) + 132] = stor0
    mem[(2 * ceil32(return_data.size)) + 164] = address(arg2)
    mem[(2 * ceil32(return_data.size)) + 196] = arg3
    require ext_code.size(stor2)
    staticcall stor2.findBestPath(uint256 arg1, address arg2, address arg3, uint256 arg4) with:
            gas gas_remaining wei
           args Mask(255, 1, arg1), stor0, address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _12 = mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32
    require mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require return_data.size - mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 >= 96
    if not bool((4 * ceil32(return_data.size)) + 192 <= test266151307()):
        revert with 'NH{q', 65
    mem[64] = (4 * ceil32(return_data.size)) + 192
    _14 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96]
    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] <= test266151307()
    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
    _15 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] + 96]
    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] + 96] > test266151307():
        revert with 'NH{q', 65
    if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] + 96]) + 193 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] + 96]) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] + 96]) + 193
    mem[(4 * ceil32(return_data.size)) + 192] = _15
    require mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + _14 + (32 * _15) + 32 <= return_data.size
    idx = 0
    s = (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96] + _14 + 128
    t = (4 * ceil32(return_data.size)) + 224
    while idx < _15:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(4 * ceil32(return_data.size)) + 96] = (4 * ceil32(return_data.size)) + 192
    _25 = mem[(2 * ceil32(return_data.size)) + _12 + 128]
    require mem[(2 * ceil32(return_data.size)) + _12 + 128] <= test266151307()
    require (2 * ceil32(return_data.size)) + _12 + mem[(2 * ceil32(return_data.size)) + _12 + 128] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
    _26 = mem[(2 * ceil32(return_data.size)) + _12 + mem[(2 * ceil32(return_data.size)) + _12 + 128] + 96]
    if mem[(2 * ceil32(return_data.size)) + _12 + mem[(2 * ceil32(return_data.size)) + _12 + 128] + 96] > test266151307():
        revert with 'NH{q', 65
    _27 = mem[64]
    if mem[64] + floor32(mem[(2 * ceil32(return_data.size)) + _12 + mem[(2 * ceil32(return_data.size)) + _12 + 128] + 96]) + 1 > test266151307() or mem[64] + floor32(mem[(2 * ceil32(return_data.size)) + _12 + mem[(2 * ceil32(return_data.size)) + _12 + 128] + 96]) + 1 < mem[64]:
        revert with 'NH{q', 65
    mem[64] = mem[64] + floor32(mem[(2 * ceil32(return_data.size)) + _12 + mem[(2 * ceil32(return_data.size)) + _12 + 128] + 96]) + 1
    mem[_27] = mem[(2 * ceil32(return_data.size)) + _12 + mem[(2 * ceil32(return_data.size)) + _12 + 128] + 96]
    require _12 + _25 + (32 * _26) + 32 <= return_data.size
    idx = 0
    s = (2 * ceil32(return_data.size)) + _12 + _25 + 128
    t = _27 + 32
    while idx < _26:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(4 * ceil32(return_data.size)) + 128] = _27
    _91 = mem[(2 * ceil32(return_data.size)) + _12 + 160]
    require mem[(2 * ceil32(return_data.size)) + _12 + 160] <= test266151307()
    require (2 * ceil32(return_data.size)) + _12 + mem[(2 * ceil32(return_data.size)) + _12 + 160] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
    _92 = mem[(2 * ceil32(return_data.size)) + _12 + mem[(2 * ceil32(return_data.size)) + _12 + 160] + 96]
    if mem[(2 * ceil32(return_data.size)) + _12 + mem[(2 * ceil32(return_data.size)) + _12 + 160] + 96] > test266151307():
        revert with 'NH{q', 65
    _93 = mem[64]
    if mem[64] + floor32(mem[(2 * ceil32(return_data.size)) + _12 + mem[(2 * ceil32(return_data.size)) + _12 + 160] + 96]) + 1 > test266151307() or mem[64] + floor32(mem[(2 * ceil32(return_data.size)) + _12 + mem[(2 * ceil32(return_data.size)) + _12 + 160] + 96]) + 1 < mem[64]:
        revert with 'NH{q', 65
    mem[64] = mem[64] + floor32(mem[(2 * ceil32(return_data.size)) + _12 + mem[(2 * ceil32(return_data.size)) + _12 + 160] + 96]) + 1
    mem[_93] = mem[(2 * ceil32(return_data.size)) + _12 + mem[(2 * ceil32(return_data.size)) + _12 + 160] + 96]
    require _12 + _91 + (32 * _92) + 32 <= return_data.size
    idx = 0
    s = (2 * ceil32(return_data.size)) + _12 + _91 + 128
    t = _93 + 32
    while idx < _92:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(4 * ceil32(return_data.size)) + 160] = _93
    _153 = mem[64]
    mem[64] = mem[64] + 128
    mem[_153] = arg1 / 2
    mem[_153 + 32] = 0
    mem[_153 + 64] = _93
    mem[_153 + 96] = mem[(4 * ceil32(return_data.size)) + 128]
    if address(arg2):
        mem[mem[64]] = 0x6bf2df8600000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 96
        mem[mem[64] + 100] = arg1 / 2
        mem[mem[64] + 132] = 0
        mem[mem[64] + 164] = 128
        _164 = mem[_93]
        mem[mem[64] + 228] = mem[_93]
        idx = 0
        s = _93 + 32
        t = mem[64] + 260
        while idx < _164:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        _218 = mem[_153 + 96]
        mem[mem[64] + 196] = (32 * _164) + 160
        _220 = mem[_218]
        mem[mem[64] + (32 * _164) + 260] = mem[_218]
        idx = 0
        s = _218 + 32
        t = mem[64] + (32 * _164) + 292
        while idx < _220:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 36] = this.address
        mem[mem[64] + 68] = 0
        require ext_code.size(stor2)
        call stor2.swapNoSplit(uint256 arg1, uint256 arg2, address[] arg3, address[] arg4, address arg5, uint256 arg6) with:
             gas gas_remaining wei
            args 96, address(this.address), 0, Mask(255, 1, arg1), 0, 128, (32 * _164) + 160, mem[mem[64] + 228 len (32 * _164) + (32 * _220) + 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg2))
        staticcall address(arg2).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _280 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _282 = mem[_280]
        require mem[_280] == mem[_280]
        mem[mem[64] + 4] = this.address
        require ext_code.size(stor0)
        staticcall stor0.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _288 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _290 = mem[_288]
        require mem[_288] == mem[_288]
        mem[mem[64] + 4] = address(arg4)
        mem[mem[64] + 36] = _282
        require ext_code.size(address(arg2))
        call address(arg2).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg4), _282
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _296 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_296] == bool(mem[_296])
        mem[mem[64] + 4] = address(arg4)
        mem[mem[64] + 36] = _290
        require ext_code.size(stor0)
        call stor0.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg4), _290
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _304 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_304] == bool(mem[_304])
        if block.timestamp > -61:
            revert with 'NH{q', 17
        mem[mem[64] + 68] = _290
        mem[mem[64] + 100] = _282
        mem[mem[64] + 132] = 0
        mem[mem[64] + 164] = 0
        mem[mem[64] + 196] = this.address
        mem[mem[64] + 228] = block.timestamp + 60
        require ext_code.size(address(arg4))
        call address(arg4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
             gas gas_remaining wei
            args stor0, address(arg2), _290, _282, 0, 0, address(this.address), block.timestamp + 60
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _312 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        require mem[_312] == mem[_312]
        require mem[_312 + 32] == mem[_312 + 32]
        require mem[_312 + 64] == mem[_312 + 64]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg5))
        staticcall address(arg5).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _324 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _326 = mem[_324]
        require mem[_324] == mem[_324]
        mem[mem[64] + 4] = address(arg6)
        mem[mem[64] + 36] = _326
        require ext_code.size(address(arg5))
        call address(arg5).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg6), _326
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _332 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_332] == bool(mem[_332])
        require ext_code.size(address(arg6))
        staticcall address(arg6).bondPrice() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _340 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _342 = mem[_340]
        require mem[_340] == mem[_340]
        require ext_code.size(address(arg6))
        staticcall address(arg6).bondInfo(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _348 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _350 = mem[_348]
        require mem[_348] == mem[_348]
        require mem[_348 + 32] == mem[_348 + 32]
        require mem[_348 + 64] == mem[_348 + 92 len 4]
        require mem[_348 + 96] == mem[_348 + 124 len 4]
        mem[mem[64] + 4] = _326
        mem[mem[64] + 36] = _342
        mem[mem[64] + 68] = msg.sender
        require ext_code.size(address(arg6))
        call address(arg6).deposit(uint256 arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args _326, _342, msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _362 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_362] == mem[_362]
        require ext_code.size(address(arg6))
        staticcall address(arg6).bondInfo(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _370 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        require mem[_370] == mem[_370]
        require mem[_370 + 32] == mem[_370 + 32]
        require mem[_370 + 64] == mem[_370 + 92 len 4]
        require mem[_370 + 96] == mem[_370 + 124 len 4]
        if mem[_370] < _350:
            revert with 'NH{q', 17
        mem[mem[64]] = mem[_370] - _350
    else:
        mem[mem[64]] = 0xf035038200000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 96
        mem[mem[64] + 100] = arg1 / 2
        mem[mem[64] + 132] = 0
        mem[mem[64] + 164] = 128
        _165 = mem[_93]
        mem[mem[64] + 228] = mem[_93]
        idx = 0
        s = _93 + 32
        t = mem[64] + 260
        while idx < _165:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        _219 = mem[_153 + 96]
        mem[mem[64] + 196] = (32 * _165) + 160
        _221 = mem[_219]
        mem[mem[64] + (32 * _165) + 260] = mem[_219]
        idx = 0
        s = _219 + 32
        t = mem[64] + (32 * _165) + 292
        while idx < _221:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 36] = this.address
        mem[mem[64] + 68] = 0
        require ext_code.size(stor2)
        call stor2.swapNoSplitToAVAX(uint256 arg1, uint256 arg2, address[] arg3, address[] arg4, address arg5, uint256 arg6) with:
             gas gas_remaining wei
            args 96, address(this.address), 0, Mask(255, 1, arg1), 0, 128, (32 * _165) + 160, mem[mem[64] + 228 len (32 * _165) + (32 * _221) + 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg2))
        staticcall address(arg2).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _281 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _283 = mem[_281]
        require mem[_281] == mem[_281]
        mem[mem[64] + 4] = this.address
        require ext_code.size(stor0)
        staticcall stor0.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _289 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _291 = mem[_289]
        require mem[_289] == mem[_289]
        mem[mem[64] + 4] = address(arg4)
        mem[mem[64] + 36] = _283
        require ext_code.size(address(arg2))
        call address(arg2).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg4), _283
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _297 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_297] == bool(mem[_297])
        mem[mem[64] + 4] = address(arg4)
        mem[mem[64] + 36] = _291
        require ext_code.size(stor0)
        call stor0.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg4), _291
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _305 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_305] == bool(mem[_305])
        if block.timestamp > -61:
            revert with 'NH{q', 17
        mem[mem[64] + 68] = _291
        mem[mem[64] + 100] = _283
        mem[mem[64] + 132] = 0
        mem[mem[64] + 164] = 0
        mem[mem[64] + 196] = this.address
        mem[mem[64] + 228] = block.timestamp + 60
        require ext_code.size(address(arg4))
        call address(arg4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
             gas gas_remaining wei
            args stor0, address(arg2), _291, _283, 0, 0, address(this.address), block.timestamp + 60
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _313 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        require mem[_313] == mem[_313]
        require mem[_313 + 32] == mem[_313 + 32]
        require mem[_313 + 64] == mem[_313 + 64]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg5))
        staticcall address(arg5).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _325 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _327 = mem[_325]
        require mem[_325] == mem[_325]
        mem[mem[64] + 4] = address(arg6)
        mem[mem[64] + 36] = _327
        require ext_code.size(address(arg5))
        call address(arg5).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg6), _327
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _333 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_333] == bool(mem[_333])
        require ext_code.size(address(arg6))
        staticcall address(arg6).bondPrice() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _341 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _343 = mem[_341]
        require mem[_341] == mem[_341]
        require ext_code.size(address(arg6))
        staticcall address(arg6).bondInfo(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _349 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _351 = mem[_349]
        require mem[_349] == mem[_349]
        require mem[_349 + 32] == mem[_349 + 32]
        require mem[_349 + 64] == mem[_349 + 92 len 4]
        require mem[_349 + 96] == mem[_349 + 124 len 4]
        mem[mem[64] + 4] = _327
        mem[mem[64] + 36] = _343
        mem[mem[64] + 68] = msg.sender
        require ext_code.size(address(arg6))
        call address(arg6).deposit(uint256 arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args _327, _343, msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _363 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_363] == mem[_363]
        require ext_code.size(address(arg6))
        staticcall address(arg6).bondInfo(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _371 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        require mem[_371] == mem[_371]
        require mem[_371 + 32] == mem[_371 + 32]
        require mem[_371 + 64] == mem[_371 + 92 len 4]
        require mem[_371 + 96] == mem[_371 + 124 len 4]
        if mem[_371] < _351:
            revert with 'NH{q', 17
        mem[mem[64]] = mem[_371] - _351
    return memory
      from mem[64]
       len 32
}

function sub_180dc264(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == address(arg2)
    require arg3 == arg3
    require arg4 == address(arg4)
    require arg5 == arg5
    mem[100] = msg.sender
    mem[132] = this.address
    mem[164] = arg1
    require ext_code.size(stor0)
    call stor0.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 100] = stor2
    mem[ceil32(return_data.size) + 132] = arg1
    require ext_code.size(stor0)
    call stor0.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor2, arg1
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 96] = 0x4c09cf4e00000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 100] = arg1
    mem[(2 * ceil32(return_data.size)) + 132] = stor0
    mem[(2 * ceil32(return_data.size)) + 164] = address(arg2)
    mem[(2 * ceil32(return_data.size)) + 196] = arg3
    require ext_code.size(stor2)
    staticcall stor2.findBestPath(uint256 arg1, address arg2, address arg3, uint256 arg4) with:
            gas gas_remaining wei
           args arg1, stor0, address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _12 = mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32
    require mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require return_data.size - mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 >= 96
    if not bool((4 * ceil32(return_data.size)) + 192 <= test266151307()):
        revert with 'NH{q', 65
    mem[64] = (4 * ceil32(return_data.size)) + 192
    _14 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96]
    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] <= test266151307()
    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
    _15 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] + 96]
    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] + 96] > test266151307():
        revert with 'NH{q', 65
    if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] + 96]) + 193 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] + 96]) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] + 96]) + 193
    mem[(4 * ceil32(return_data.size)) + 192] = _15
    require mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + _14 + (32 * _15) + 32 <= return_data.size
    idx = 0
    s = (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96] + _14 + 128
    t = (4 * ceil32(return_data.size)) + 224
    while idx < _15:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(4 * ceil32(return_data.size)) + 96] = (4 * ceil32(return_data.size)) + 192
    _27 = mem[(2 * ceil32(return_data.size)) + _12 + 128]
    require mem[(2 * ceil32(return_data.size)) + _12 + 128] <= test266151307()
    require (2 * ceil32(return_data.size)) + _12 + mem[(2 * ceil32(return_data.size)) + _12 + 128] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
    _28 = mem[(2 * ceil32(return_data.size)) + _12 + mem[(2 * ceil32(return_data.size)) + _12 + 128] + 96]
    if mem[(2 * ceil32(return_data.size)) + _12 + mem[(2 * ceil32(return_data.size)) + _12 + 128] + 96] > test266151307():
        revert with 'NH{q', 65
    _29 = mem[64]
    if mem[64] + floor32(mem[(2 * ceil32(return_data.size)) + _12 + mem[(2 * ceil32(return_data.size)) + _12 + 128] + 96]) + 1 > test266151307() or mem[64] + floor32(mem[(2 * ceil32(return_data.size)) + _12 + mem[(2 * ceil32(return_data.size)) + _12 + 128] + 96]) + 1 < mem[64]:
        revert with 'NH{q', 65
    mem[64] = mem[64] + floor32(mem[(2 * ceil32(return_data.size)) + _12 + mem[(2 * ceil32(return_data.size)) + _12 + 128] + 96]) + 1
    mem[_29] = mem[(2 * ceil32(return_data.size)) + _12 + mem[(2 * ceil32(return_data.size)) + _12 + 128] + 96]
    require _12 + _27 + (32 * _28) + 32 <= return_data.size
    idx = 0
    s = (2 * ceil32(return_data.size)) + _12 + _27 + 128
    t = _29 + 32
    while idx < _28:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(4 * ceil32(return_data.size)) + 128] = _29
    _99 = mem[(2 * ceil32(return_data.size)) + _12 + 160]
    require mem[(2 * ceil32(return_data.size)) + _12 + 160] <= test266151307()
    require (2 * ceil32(return_data.size)) + _12 + mem[(2 * ceil32(return_data.size)) + _12 + 160] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
    _100 = mem[(2 * ceil32(return_data.size)) + _12 + mem[(2 * ceil32(return_data.size)) + _12 + 160] + 96]
    if mem[(2 * ceil32(return_data.size)) + _12 + mem[(2 * ceil32(return_data.size)) + _12 + 160] + 96] > test266151307():
        revert with 'NH{q', 65
    _101 = mem[64]
    if mem[64] + floor32(mem[(2 * ceil32(return_data.size)) + _12 + mem[(2 * ceil32(return_data.size)) + _12 + 160] + 96]) + 1 > test266151307() or mem[64] + floor32(mem[(2 * ceil32(return_data.size)) + _12 + mem[(2 * ceil32(return_data.size)) + _12 + 160] + 96]) + 1 < mem[64]:
        revert with 'NH{q', 65
    mem[64] = mem[64] + floor32(mem[(2 * ceil32(return_data.size)) + _12 + mem[(2 * ceil32(return_data.size)) + _12 + 160] + 96]) + 1
    mem[_101] = mem[(2 * ceil32(return_data.size)) + _12 + mem[(2 * ceil32(return_data.size)) + _12 + 160] + 96]
    require _12 + _99 + (32 * _100) + 32 <= return_data.size
    idx = 0
    s = (2 * ceil32(return_data.size)) + _12 + _99 + 128
    t = _101 + 32
    while idx < _100:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(4 * ceil32(return_data.size)) + 160] = _101
    _173 = mem[64]
    mem[64] = mem[64] + 128
    mem[_173] = arg1
    mem[_173 + 32] = 0
    mem[_173 + 64] = _101
    mem[_173 + 96] = mem[(4 * ceil32(return_data.size)) + 128]
    if address(arg2):
        mem[mem[64]] = 0x6bf2df8600000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 96
        mem[mem[64] + 100] = arg1
        mem[mem[64] + 132] = 0
        mem[mem[64] + 164] = 128
        _184 = mem[_101]
        mem[mem[64] + 228] = mem[_101]
        idx = 0
        s = _101 + 32
        t = mem[64] + 260
        while idx < _184:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        _252 = mem[_173 + 96]
        mem[mem[64] + 196] = (32 * _184) + 160
        _254 = mem[_252]
        mem[mem[64] + (32 * _184) + 260] = mem[_252]
        idx = 0
        s = _252 + 32
        t = mem[64] + (32 * _184) + 292
        while idx < _254:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 36] = this.address
        mem[mem[64] + 68] = 0
        require ext_code.size(stor2)
        call stor2.swapNoSplit(uint256 arg1, uint256 arg2, address[] arg3, address[] arg4, address arg5, uint256 arg6) with:
             gas gas_remaining wei
            args 96, address(this.address), 0, arg1, 0, 128, (32 * _184) + 160, mem[mem[64] + 228 len (32 * _184) + (32 * _254) + 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg2))
        staticcall address(arg2).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _328 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _330 = mem[_328]
        require mem[_328] == mem[_328]
        mem[mem[64] + 4] = address(arg4)
        mem[mem[64] + 36] = _330
        require ext_code.size(address(arg2))
        call address(arg2).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg4), _330
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _336 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_336] == bool(mem[_336])
        require ext_code.size(address(arg4))
        staticcall address(arg4).bondPrice() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _344 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _346 = mem[_344]
        require mem[_344] == mem[_344]
        require ext_code.size(address(arg4))
        staticcall address(arg4).bondInfo(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _352 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _354 = mem[_352]
        require mem[_352] == mem[_352]
        require mem[_352 + 32] == mem[_352 + 32]
        require mem[_352 + 64] == mem[_352 + 92 len 4]
        require mem[_352 + 96] == mem[_352 + 124 len 4]
        mem[mem[64] + 4] = _330
        mem[mem[64] + 36] = _346
        mem[mem[64] + 68] = msg.sender
        require ext_code.size(address(arg4))
        call address(arg4).deposit(uint256 arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args _330, _346, msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _366 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_366] == mem[_366]
        require ext_code.size(address(arg4))
        staticcall address(arg4).bondInfo(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _374 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        require mem[_374] == mem[_374]
        require mem[_374 + 32] == mem[_374 + 32]
        require mem[_374 + 64] == mem[_374 + 92 len 4]
        require mem[_374 + 96] == mem[_374 + 124 len 4]
        if mem[_374] < _354:
            revert with 'NH{q', 17
        if mem[_374] - _354 < arg5:
            revert with 0, 'insufficient profit, either ROI plummeted or your slippage is too tight'
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg2))
        staticcall address(arg2).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _392 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _394 = mem[_392]
        require mem[_392] == mem[_392]
        if mem[_392] <= 0:
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor0)
            staticcall stor0.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _402 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _408 = mem[_402]
            require mem[_402] == mem[_402]
            if mem[_402] > 0:
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = _408
                require ext_code.size(stor0)
                call stor0.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, _408
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _420 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_420] == bool(mem[_420])
        else:
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _394
            require ext_code.size(address(arg2))
            call address(arg2).0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, _394
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _406 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_406] == bool(mem[_406])
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor0)
            staticcall stor0.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _421 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _425 = mem[_421]
            require mem[_421] == mem[_421]
            if mem[_421] > 0:
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = _425
                require ext_code.size(stor0)
                call stor0.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, _425
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _432 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_432] == bool(mem[_432])
    else:
        mem[mem[64]] = 0xf035038200000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 96
        mem[mem[64] + 100] = arg1
        mem[mem[64] + 132] = 0
        mem[mem[64] + 164] = 128
        _185 = mem[_101]
        mem[mem[64] + 228] = mem[_101]
        idx = 0
        s = _101 + 32
        t = mem[64] + 260
        while idx < _185:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        _253 = mem[_173 + 96]
        mem[mem[64] + 196] = (32 * _185) + 160
        _255 = mem[_253]
        mem[mem[64] + (32 * _185) + 260] = mem[_253]
        idx = 0
        s = _253 + 32
        t = mem[64] + (32 * _185) + 292
        while idx < _255:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 36] = this.address
        mem[mem[64] + 68] = 0
        require ext_code.size(stor2)
        call stor2.swapNoSplitToAVAX(uint256 arg1, uint256 arg2, address[] arg3, address[] arg4, address arg5, uint256 arg6) with:
             gas gas_remaining wei
            args 96, address(this.address), 0, arg1, 0, 128, (32 * _185) + 160, mem[mem[64] + 228 len (32 * _185) + (32 * _255) + 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg2))
        staticcall address(arg2).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _329 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _331 = mem[_329]
        require mem[_329] == mem[_329]
        mem[mem[64] + 4] = address(arg4)
        mem[mem[64] + 36] = _331
        require ext_code.size(address(arg2))
        call address(arg2).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg4), _331
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _337 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_337] == bool(mem[_337])
        require ext_code.size(address(arg4))
        staticcall address(arg4).bondPrice() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _345 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _347 = mem[_345]
        require mem[_345] == mem[_345]
        require ext_code.size(address(arg4))
        staticcall address(arg4).bondInfo(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _353 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _355 = mem[_353]
        require mem[_353] == mem[_353]
        require mem[_353 + 32] == mem[_353 + 32]
        require mem[_353 + 64] == mem[_353 + 92 len 4]
        require mem[_353 + 96] == mem[_353 + 124 len 4]
        mem[mem[64] + 4] = _331
        mem[mem[64] + 36] = _347
        mem[mem[64] + 68] = msg.sender
        require ext_code.size(address(arg4))
        call address(arg4).deposit(uint256 arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args _331, _347, msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _367 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_367] == mem[_367]
        require ext_code.size(address(arg4))
        staticcall address(arg4).bondInfo(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _375 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        require mem[_375] == mem[_375]
        require mem[_375 + 32] == mem[_375 + 32]
        require mem[_375 + 64] == mem[_375 + 92 len 4]
        require mem[_375 + 96] == mem[_375 + 124 len 4]
        if mem[_375] < _355:
            revert with 'NH{q', 17
        if mem[_375] - _355 < arg5:
            revert with 0, 'insufficient profit, either ROI plummeted or your slippage is too tight'
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg2))
        staticcall address(arg2).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _393 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _395 = mem[_393]
        require mem[_393] == mem[_393]
        if mem[_393] <= 0:
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor0)
            staticcall stor0.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _404 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _409 = mem[_404]
            require mem[_404] == mem[_404]
            if mem[_404] > 0:
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = _409
                require ext_code.size(stor0)
                call stor0.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, _409
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _422 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_422] == bool(mem[_422])
        else:
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _395
            require ext_code.size(address(arg2))
            call address(arg2).0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, _395
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _407 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_407] == bool(mem[_407])
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor0)
            staticcall stor0.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _423 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _427 = mem[_423]
            require mem[_423] == mem[_423]
            if mem[_423] > 0:
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = _427
                require ext_code.size(stor0)
                call stor0.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, _427
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _433 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_433] == bool(mem[_433])
}

function sub_dcedcdb3(?) payable {
    require calldata.size - 4 >= 224
    require arg1 == arg1
    require arg2 == address(arg2)
    require arg3 == arg3
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    require arg6 == address(arg6)
    require arg7 == arg7
    mem[100] = msg.sender
    mem[132] = this.address
    mem[164] = arg1
    require ext_code.size(stor0)
    call stor0.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 100] = stor2
    mem[ceil32(return_data.size) + 132] = arg1 / 2
    require ext_code.size(stor0)
    call stor0.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor2, arg1 / 2
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 96] = 0x4c09cf4e00000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 100] = arg1 / 2
    mem[(2 * ceil32(return_data.size)) + 132] = stor0
    mem[(2 * ceil32(return_data.size)) + 164] = address(arg2)
    mem[(2 * ceil32(return_data.size)) + 196] = arg3
    require ext_code.size(stor2)
    staticcall stor2.findBestPath(uint256 arg1, address arg2, address arg3, uint256 arg4) with:
            gas gas_remaining wei
           args Mask(255, 1, arg1), stor0, address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _12 = mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32
    require mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require return_data.size - mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 >= 96
    if not bool((4 * ceil32(return_data.size)) + 192 <= test266151307()):
        revert with 'NH{q', 65
    mem[64] = (4 * ceil32(return_data.size)) + 192
    _14 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96]
    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] <= test266151307()
    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
    _15 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] + 96]
    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] + 96] > test266151307():
        revert with 'NH{q', 65
    if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] + 96]) + 193 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] + 96]) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] + 96]) + 193
    mem[(4 * ceil32(return_data.size)) + 192] = _15
    require mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg1) >> 32 + _14 + (32 * _15) + 32 <= return_data.size
    idx = 0
    s = (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96] + _14 + 128
    t = (4 * ceil32(return_data.size)) + 224
    while idx < _15:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(4 * ceil32(return_data.size)) + 96] = (4 * ceil32(return_data.size)) + 192
    _22 = mem[(2 * ceil32(return_data.size)) + _12 + 128]
    require mem[(2 * ceil32(return_data.size)) + _12 + 128] <= test266151307()
    require (2 * ceil32(return_data.size)) + _12 + mem[(2 * ceil32(return_data.size)) + _12 + 128] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
    _23 = mem[(2 * ceil32(return_data.size)) + _12 + mem[(2 * ceil32(return_data.size)) + _12 + 128] + 96]
    if mem[(2 * ceil32(return_data.size)) + _12 + mem[(2 * ceil32(return_data.size)) + _12 + 128] + 96] > test266151307():
        revert with 'NH{q', 65
    _24 = mem[64]
    if mem[64] + floor32(mem[(2 * ceil32(return_data.size)) + _12 + mem[(2 * ceil32(return_data.size)) + _12 + 128] + 96]) + 1 > test266151307() or mem[64] + floor32(mem[(2 * ceil32(return_data.size)) + _12 + mem[(2 * ceil32(return_data.size)) + _12 + 128] + 96]) + 1 < mem[64]:
        revert with 'NH{q', 65
    mem[64] = mem[64] + floor32(mem[(2 * ceil32(return_data.size)) + _12 + mem[(2 * ceil32(return_data.size)) + _12 + 128] + 96]) + 1
    mem[_24] = mem[(2 * ceil32(return_data.size)) + _12 + mem[(2 * ceil32(return_data.size)) + _12 + 128] + 96]
    require _12 + _22 + (32 * _23) + 32 <= return_data.size
    idx = 0
    s = (2 * ceil32(return_data.size)) + _12 + _22 + 128
    t = _24 + 32
    while idx < _23:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(4 * ceil32(return_data.size)) + 128] = _24
    _88 = mem[(2 * ceil32(return_data.size)) + _12 + 160]
    require mem[(2 * ceil32(return_data.size)) + _12 + 160] <= test266151307()
    require (2 * ceil32(return_data.size)) + _12 + mem[(2 * ceil32(return_data.size)) + _12 + 160] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
    _89 = mem[(2 * ceil32(return_data.size)) + _12 + mem[(2 * ceil32(return_data.size)) + _12 + 160] + 96]
    if mem[(2 * ceil32(return_data.size)) + _12 + mem[(2 * ceil32(return_data.size)) + _12 + 160] + 96] > test266151307():
        revert with 'NH{q', 65
    _90 = mem[64]
    if mem[64] + floor32(mem[(2 * ceil32(return_data.size)) + _12 + mem[(2 * ceil32(return_data.size)) + _12 + 160] + 96]) + 1 > test266151307() or mem[64] + floor32(mem[(2 * ceil32(return_data.size)) + _12 + mem[(2 * ceil32(return_data.size)) + _12 + 160] + 96]) + 1 < mem[64]:
        revert with 'NH{q', 65
    mem[64] = mem[64] + floor32(mem[(2 * ceil32(return_data.size)) + _12 + mem[(2 * ceil32(return_data.size)) + _12 + 160] + 96]) + 1
    mem[_90] = mem[(2 * ceil32(return_data.size)) + _12 + mem[(2 * ceil32(return_data.size)) + _12 + 160] + 96]
    require _12 + _88 + (32 * _89) + 32 <= return_data.size
    idx = 0
    s = (2 * ceil32(return_data.size)) + _12 + _88 + 128
    t = _90 + 32
    while idx < _89:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(4 * ceil32(return_data.size)) + 160] = _90
    _150 = mem[64]
    mem[64] = mem[64] + 128
    mem[_150] = arg1 / 2
    mem[_150 + 32] = 0
    mem[_150 + 64] = _90
    mem[_150 + 96] = mem[(4 * ceil32(return_data.size)) + 128]
    if address(arg2):
        mem[mem[64]] = 0x6bf2df8600000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 96
        mem[mem[64] + 100] = arg1 / 2
        mem[mem[64] + 132] = 0
        mem[mem[64] + 164] = 128
        _161 = mem[_90]
        mem[mem[64] + 228] = mem[_90]
        idx = 0
        s = _90 + 32
        t = mem[64] + 260
        while idx < _161:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        _215 = mem[_150 + 96]
        mem[mem[64] + 196] = (32 * _161) + 160
        _217 = mem[_215]
        mem[mem[64] + (32 * _161) + 260] = mem[_215]
        idx = 0
        s = _215 + 32
        t = mem[64] + (32 * _161) + 292
        while idx < _217:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 36] = this.address
        mem[mem[64] + 68] = 0
        require ext_code.size(stor2)
        call stor2.swapNoSplit(uint256 arg1, uint256 arg2, address[] arg3, address[] arg4, address arg5, uint256 arg6) with:
             gas gas_remaining wei
            args 96, address(this.address), 0, Mask(255, 1, arg1), 0, 128, (32 * _161) + 160, mem[mem[64] + 228 len (32 * _161) + (32 * _217) + 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg2))
        staticcall address(arg2).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _277 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _279 = mem[_277]
        require mem[_277] == mem[_277]
        mem[mem[64] + 4] = this.address
        require ext_code.size(stor0)
        staticcall stor0.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _285 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _287 = mem[_285]
        require mem[_285] == mem[_285]
        mem[mem[64] + 4] = address(arg4)
        mem[mem[64] + 36] = _279
        require ext_code.size(address(arg2))
        call address(arg2).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg4), _279
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _293 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_293] == bool(mem[_293])
        mem[mem[64] + 4] = address(arg4)
        mem[mem[64] + 36] = _287
        require ext_code.size(stor0)
        call stor0.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg4), _287
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _301 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_301] == bool(mem[_301])
        if block.timestamp > -61:
            revert with 'NH{q', 17
        mem[mem[64] + 68] = _287
        mem[mem[64] + 100] = _279
        mem[mem[64] + 132] = 0
        mem[mem[64] + 164] = 0
        mem[mem[64] + 196] = this.address
        mem[mem[64] + 228] = block.timestamp + 60
        require ext_code.size(address(arg4))
        call address(arg4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
             gas gas_remaining wei
            args stor0, address(arg2), _287, _279, 0, 0, address(this.address), block.timestamp + 60
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _309 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        require mem[_309] == mem[_309]
        require mem[_309 + 32] == mem[_309 + 32]
        require mem[_309 + 64] == mem[_309 + 64]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg5))
        staticcall address(arg5).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _321 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _323 = mem[_321]
        require mem[_321] == mem[_321]
        mem[mem[64] + 4] = address(arg6)
        mem[mem[64] + 36] = _323
        require ext_code.size(address(arg5))
        call address(arg5).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg6), _323
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _329 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_329] == bool(mem[_329])
        require ext_code.size(address(arg6))
        staticcall address(arg6).bondPrice() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _337 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _339 = mem[_337]
        require mem[_337] == mem[_337]
        require ext_code.size(address(arg6))
        staticcall address(arg6).bondInfo(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _345 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _347 = mem[_345]
        require mem[_345] == mem[_345]
        require mem[_345 + 32] == mem[_345 + 32]
        require mem[_345 + 64] == mem[_345 + 92 len 4]
        require mem[_345 + 96] == mem[_345 + 124 len 4]
        mem[mem[64] + 4] = _323
        mem[mem[64] + 36] = _339
        mem[mem[64] + 68] = msg.sender
        require ext_code.size(address(arg6))
        call address(arg6).deposit(uint256 arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args _323, _339, msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _359 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_359] == mem[_359]
        require ext_code.size(address(arg6))
        staticcall address(arg6).bondInfo(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _367 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        require mem[_367] == mem[_367]
        require mem[_367 + 32] == mem[_367 + 32]
        require mem[_367 + 64] == mem[_367 + 92 len 4]
        require mem[_367 + 96] == mem[_367 + 124 len 4]
        if mem[_367] < _347:
            revert with 'NH{q', 17
        if mem[_367] - _347 < arg7:
            revert with 0, 'insufficient profit, either ROI plummeted or your slippage is too tight'
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg2))
        staticcall address(arg2).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _385 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _387 = mem[_385]
        require mem[_385] == mem[_385]
        if mem[_385] <= 0:
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor0)
            staticcall stor0.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _395 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _401 = mem[_395]
            require mem[_395] == mem[_395]
            if mem[_395] > 0:
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = _401
                require ext_code.size(stor0)
                call stor0.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, _401
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _413 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_413] == bool(mem[_413])
        else:
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _387
            require ext_code.size(address(arg2))
            call address(arg2).0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, _387
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _399 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_399] == bool(mem[_399])
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor0)
            staticcall stor0.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _414 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _418 = mem[_414]
            require mem[_414] == mem[_414]
            if mem[_414] > 0:
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = _418
                require ext_code.size(stor0)
                call stor0.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, _418
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _425 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_425] == bool(mem[_425])
    else:
        mem[mem[64]] = 0xf035038200000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 96
        mem[mem[64] + 100] = arg1 / 2
        mem[mem[64] + 132] = 0
        mem[mem[64] + 164] = 128
        _162 = mem[_90]
        mem[mem[64] + 228] = mem[_90]
        idx = 0
        s = _90 + 32
        t = mem[64] + 260
        while idx < _162:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        _216 = mem[_150 + 96]
        mem[mem[64] + 196] = (32 * _162) + 160
        _218 = mem[_216]
        mem[mem[64] + (32 * _162) + 260] = mem[_216]
        idx = 0
        s = _216 + 32
        t = mem[64] + (32 * _162) + 292
        while idx < _218:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 36] = this.address
        mem[mem[64] + 68] = 0
        require ext_code.size(stor2)
        call stor2.swapNoSplitToAVAX(uint256 arg1, uint256 arg2, address[] arg3, address[] arg4, address arg5, uint256 arg6) with:
             gas gas_remaining wei
            args 96, address(this.address), 0, Mask(255, 1, arg1), 0, 128, (32 * _162) + 160, mem[mem[64] + 228 len (32 * _162) + (32 * _218) + 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg2))
        staticcall address(arg2).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _278 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _280 = mem[_278]
        require mem[_278] == mem[_278]
        mem[mem[64] + 4] = this.address
        require ext_code.size(stor0)
        staticcall stor0.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _286 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _288 = mem[_286]
        require mem[_286] == mem[_286]
        mem[mem[64] + 4] = address(arg4)
        mem[mem[64] + 36] = _280
        require ext_code.size(address(arg2))
        call address(arg2).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg4), _280
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _294 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_294] == bool(mem[_294])
        mem[mem[64] + 4] = address(arg4)
        mem[mem[64] + 36] = _288
        require ext_code.size(stor0)
        call stor0.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg4), _288
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _302 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_302] == bool(mem[_302])
        if block.timestamp > -61:
            revert with 'NH{q', 17
        mem[mem[64] + 68] = _288
        mem[mem[64] + 100] = _280
        mem[mem[64] + 132] = 0
        mem[mem[64] + 164] = 0
        mem[mem[64] + 196] = this.address
        mem[mem[64] + 228] = block.timestamp + 60
        require ext_code.size(address(arg4))
        call address(arg4).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
             gas gas_remaining wei
            args stor0, address(arg2), _288, _280, 0, 0, address(this.address), block.timestamp + 60
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _310 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        require mem[_310] == mem[_310]
        require mem[_310 + 32] == mem[_310 + 32]
        require mem[_310 + 64] == mem[_310 + 64]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg5))
        staticcall address(arg5).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _322 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _324 = mem[_322]
        require mem[_322] == mem[_322]
        mem[mem[64] + 4] = address(arg6)
        mem[mem[64] + 36] = _324
        require ext_code.size(address(arg5))
        call address(arg5).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg6), _324
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _330 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_330] == bool(mem[_330])
        require ext_code.size(address(arg6))
        staticcall address(arg6).bondPrice() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _338 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _340 = mem[_338]
        require mem[_338] == mem[_338]
        require ext_code.size(address(arg6))
        staticcall address(arg6).bondInfo(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _346 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _348 = mem[_346]
        require mem[_346] == mem[_346]
        require mem[_346 + 32] == mem[_346 + 32]
        require mem[_346 + 64] == mem[_346 + 92 len 4]
        require mem[_346 + 96] == mem[_346 + 124 len 4]
        mem[mem[64] + 4] = _324
        mem[mem[64] + 36] = _340
        mem[mem[64] + 68] = msg.sender
        require ext_code.size(address(arg6))
        call address(arg6).deposit(uint256 arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args _324, _340, msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _360 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_360] == mem[_360]
        require ext_code.size(address(arg6))
        staticcall address(arg6).bondInfo(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _368 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        require mem[_368] == mem[_368]
        require mem[_368 + 32] == mem[_368 + 32]
        require mem[_368 + 64] == mem[_368 + 92 len 4]
        require mem[_368 + 96] == mem[_368 + 124 len 4]
        if mem[_368] < _348:
            revert with 'NH{q', 17
        if mem[_368] - _348 < arg7:
            revert with 0, 'insufficient profit, either ROI plummeted or your slippage is too tight'
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg2))
        staticcall address(arg2).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _386 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _388 = mem[_386]
        require mem[_386] == mem[_386]
        if mem[_386] <= 0:
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor0)
            staticcall stor0.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _397 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _402 = mem[_397]
            require mem[_397] == mem[_397]
            if mem[_397] > 0:
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = _402
                require ext_code.size(stor0)
                call stor0.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, _402
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _415 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_415] == bool(mem[_415])
        else:
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _388
            require ext_code.size(address(arg2))
            call address(arg2).0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, _388
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _400 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_400] == bool(mem[_400])
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor0)
            staticcall stor0.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _416 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _420 = mem[_416]
            require mem[_416] == mem[_416]
            if mem[_416] > 0:
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = _420
                require ext_code.size(stor0)
                call stor0.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, _420
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _426 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_426] == bool(mem[_426])
}

function sub_d5600a9e(?) payable {
    require calldata.size - 4 >= 224
    require cd[4] == cd[4]
    require cd[36] == address(cd[36])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] == address(cd[100])
    require cd[132] == address(cd[132])
    require cd[164] == address(cd[164])
    require cd[196] == cd[196]
    mem[100] = msg.sender
    mem[132] = this.address
    mem[164] = cd[4]
    require ext_code.size(stor0)
    call stor0.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), cd[4]
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ('cd', 68).length < 1:
        revert with 'NH{q', 17
    if ('cd', 68).length - 1 >= ('cd', 68).length:
        revert with 'NH{q', 50
    require cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)] == address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)])
    require address(cd[132])
    require ext_code.size(address(cd[132]))
    staticcall address(cd[132]).getReserves() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(address(cd[132]))
    staticcall address(cd[132]).token0() with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(cd[132]))
    staticcall address(cd[132]).token1() with:
            gas gas_remaining wei
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if address(ext_call.return_data[0]) != address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]):
        if ext_call.return_data[12 len 20] != address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]):
            revert with 0, 'bad LP token'
        if address(ext_call.return_data[0]) != stor0:
            revert with 0, 'bad LP token'
        if Mask(112, 0, ext_call.return_data[0]) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        if Mask(112, 0, ext_call.return_data[0]) and cd[4] > -1 / Mask(112, 0, ext_call.return_data[0]):
            revert with 'NH{q', 17
        if cd[4] / 2 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        if Mask(255, 1, cd[4]) > -(2 * Mask(112, 0, ext_call.return_data[0])) - 1:
            revert with 'NH{q', 17
        if Mask(255, 1, cd[4]) and cd[4] / 2 > -1 / cd[4] / 2:
            revert with 'NH{q', 17
        if cd[4] / 2 * cd[4] / 2 > (-1 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) - 1:
            revert with 'NH{q', 17
        if not Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0])):
            revert with 'NH{q', 18
        if (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0])) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        if 2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0])) > -(2 * Mask(112, 0, ext_call.return_data[0])) - 1:
            revert with 'NH{q', 17
        if (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0])) and (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0])) > -1 / (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0])):
            revert with 'NH{q', 17
        if (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0])) > (-1 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) - 1:
            revert with 'NH{q', 17
        if not (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0])):
            revert with 'NH{q', 18
        if ((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0])) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        if 2 * ((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0])) > -(2 * Mask(112, 0, ext_call.return_data[0])) - 1:
            revert with 'NH{q', 17
        if ((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0])) and ((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0])) > -1 / ((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0])):
            revert with 'NH{q', 17
        if ((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0])) * ((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0])) > (-1 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) - 1:
            revert with 'NH{q', 17
        if not (2 * ((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0])):
            revert with 'NH{q', 18
        if ('cd', 68).length < 1:
            revert with 'NH{q', 17
        if ('cd', 68).length - 1 >= ('cd', 68).length:
            revert with 'NH{q', 50
        require cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)] == address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)])
        require address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)])
        mem[(6 * ceil32(return_data.size)) + 100] = address(cd[36])
        mem[(6 * ceil32(return_data.size)) + 132] = (((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0])) * ((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * ((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0]))
        require ext_code.size(stor0)
        call stor0.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[36]), (((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0])) * ((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * ((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0]))
        mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if block.timestamp > -61:
            revert with 'NH{q', 17
        mem[(7 * ceil32(return_data.size)) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(7 * ceil32(return_data.size)) + 100] = (((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0])) * ((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * ((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0]))
        mem[(7 * ceil32(return_data.size)) + 132] = 0
        mem[(7 * ceil32(return_data.size)) + 164] = 160
        mem[(7 * ceil32(return_data.size)) + 260] = ('cd', 68).length
        idx = 0
        s = cd[68] + 36
        t = (7 * ceil32(return_data.size)) + 292
        while idx < ('cd', 68).length:
            require cd[s] == address(cd[s])
            mem[t] = address(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(7 * ceil32(return_data.size)) + 196] = this.address
        mem[(7 * ceil32(return_data.size)) + 228] = block.timestamp + 60
        require ext_code.size(address(cd[36]))
        call address(cd[36]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args (((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0])) * ((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * ((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0])), 0, 160, address(this.address), block.timestamp + 60, ('cd', 68).length, mem[(7 * ceil32(return_data.size)) + 292 len 32 * ('cd', 68).length]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(7 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (8 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        _62 = mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0])) * ((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * ((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0]))) >> 32
        require mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0])) * ((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * ((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0]))) >> 32 <= test266151307()
        require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0])) * ((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * ((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 127 < (7 * ceil32(return_data.size)) + return_data.size + 96
        _65 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0])) * ((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * ((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]
        if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0])) * ((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * ((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96] > test266151307():
            revert with 'NH{q', 65
        if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0])) * ((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * ((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0])) * ((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * ((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0])) * ((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * ((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]) + 97
        mem[(8 * ceil32(return_data.size)) + 96] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0])) * ((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * ((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]
        require _62 + (32 * _65) + 32 <= return_data.size
        idx = 0
        s = (7 * ceil32(return_data.size)) + _62 + 128
        t = (8 * ceil32(return_data.size)) + 128
        while idx < _65:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]))
        staticcall address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _149 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _152 = mem[_149]
        require mem[_149] == mem[_149]
        mem[mem[64] + 4] = this.address
        require ext_code.size(stor0)
        staticcall stor0.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _161 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _164 = mem[_161]
        require mem[_161] == mem[_161]
        mem[mem[64] + 4] = address(cd[100])
        mem[mem[64] + 36] = _152
        require ext_code.size(address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]))
        call address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[100]), _152
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _173 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_173] == bool(mem[_173])
        mem[mem[64] + 4] = address(cd[100])
        mem[mem[64] + 36] = _164
        require ext_code.size(stor0)
        call stor0.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[100]), _164
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _185 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_185] == bool(mem[_185])
        if block.timestamp > -61:
            revert with 'NH{q', 17
        mem[mem[64] + 68] = _164
        mem[mem[64] + 100] = _152
        mem[mem[64] + 132] = 0
        mem[mem[64] + 164] = 0
        mem[mem[64] + 196] = this.address
        mem[mem[64] + 228] = block.timestamp + 60
        require ext_code.size(address(cd[100]))
        call address(cd[100]).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
             gas gas_remaining wei
            args stor0, address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]), _164, _152, 0, 0, address(this.address), block.timestamp + 60
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _197 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        require mem[_197] == mem[_197]
        require mem[_197 + 32] == mem[_197 + 32]
        require mem[_197 + 64] == mem[_197 + 64]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[132]))
        staticcall address(cd[132]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _215 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _218 = mem[_215]
        require mem[_215] == mem[_215]
        mem[mem[64] + 4] = address(cd[164])
        mem[mem[64] + 36] = _218
        require ext_code.size(address(cd[132]))
        call address(cd[132]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[164]), _218
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _227 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_227] == bool(mem[_227])
        require ext_code.size(address(cd[164]))
        staticcall address(cd[164]).bondPrice() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _239 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _242 = mem[_239]
        require mem[_239] == mem[_239]
        require ext_code.size(address(cd[164]))
        staticcall address(cd[164]).bondInfo(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _251 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _254 = mem[_251]
        require mem[_251] == mem[_251]
        require mem[_251 + 32] == mem[_251 + 32]
        require mem[_251 + 64] == mem[_251 + 92 len 4]
        require mem[_251 + 96] == mem[_251 + 124 len 4]
        mem[mem[64] + 4] = _218
        mem[mem[64] + 36] = _242
        mem[mem[64] + 68] = msg.sender
        require ext_code.size(address(cd[164]))
        call address(cd[164]).deposit(uint256 arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args _218, _242, msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _272 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_272] == mem[_272]
        require ext_code.size(address(cd[164]))
        staticcall address(cd[164]).bondInfo(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _284 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        require mem[_284] == mem[_284]
        require mem[_284 + 32] == mem[_284 + 32]
        require mem[_284 + 64] == mem[_284 + 92 len 4]
        require mem[_284 + 96] == mem[_284 + 124 len 4]
        if mem[_284] < _254:
            revert with 'NH{q', 17
        if mem[_284] - _254 < cd[196]:
            revert with 0, 'insufficient profit, either ROI plummeted or your slippage is too tight'
        if ('cd', 68).length < 1:
            revert with 'NH{q', 17
        if ('cd', 68).length - 1 >= ('cd', 68).length:
            revert with 'NH{q', 50
        require cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)] == address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)])
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]))
        staticcall address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _311 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _314 = mem[_311]
        require mem[_311] == mem[_311]
        if mem[_311] <= 0:
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor0)
            staticcall stor0.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _326 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _335 = mem[_326]
            require mem[_326] == mem[_326]
            if mem[_326] > 0:
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = _335
                require ext_code.size(stor0)
                call stor0.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, _335
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _353 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_353] == bool(mem[_353])
        else:
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _314
            require ext_code.size(address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]))
            call address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]).0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, _314
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _332 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_332] == bool(mem[_332])
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor0)
            staticcall stor0.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _354 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _360 = mem[_354]
            require mem[_354] == mem[_354]
            if mem[_354] > 0:
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = _360
                require ext_code.size(stor0)
                call stor0.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, _360
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _371 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_371] == bool(mem[_371])
    else:
        if ext_call.return_data[12 len 20] == stor0:
            if Mask(112, 0, ext_call.return_data[32]) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if Mask(112, 0, ext_call.return_data[32]) and cd[4] > -1 / Mask(112, 0, ext_call.return_data[32]):
                revert with 'NH{q', 17
            if cd[4] / 2 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if Mask(255, 1, cd[4]) > -(2 * Mask(112, 0, ext_call.return_data[32])) - 1:
                revert with 'NH{q', 17
            if Mask(255, 1, cd[4]) and cd[4] / 2 > -1 / cd[4] / 2:
                revert with 'NH{q', 17
            if cd[4] / 2 * cd[4] / 2 > (-1 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) - 1:
                revert with 'NH{q', 17
            if not Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32])):
                revert with 'NH{q', 18
            if (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32])) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if 2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32])) > -(2 * Mask(112, 0, ext_call.return_data[32])) - 1:
                revert with 'NH{q', 17
            if (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32])) and (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32])) > -1 / (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32])):
                revert with 'NH{q', 17
            if (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32])) > (-1 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) - 1:
                revert with 'NH{q', 17
            if not (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (2 * Mask(112, 0, ext_call.return_data[32])):
                revert with 'NH{q', 18
            if ((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (2 * Mask(112, 0, ext_call.return_data[32])) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if 2 * ((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (2 * Mask(112, 0, ext_call.return_data[32])) > -(2 * Mask(112, 0, ext_call.return_data[32])) - 1:
                revert with 'NH{q', 17
            if ((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (2 * Mask(112, 0, ext_call.return_data[32])) and ((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (2 * Mask(112, 0, ext_call.return_data[32])) > -1 / ((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (2 * Mask(112, 0, ext_call.return_data[32])):
                revert with 'NH{q', 17
            if ((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (2 * Mask(112, 0, ext_call.return_data[32])) * ((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (2 * Mask(112, 0, ext_call.return_data[32])) > (-1 * Mask(112, 0, ext_call.return_data[32]) * cd[4]) - 1:
                revert with 'NH{q', 17
            if not (2 * ((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (2 * Mask(112, 0, ext_call.return_data[32])):
                revert with 'NH{q', 18
            if ('cd', 68).length < 1:
                revert with 'NH{q', 17
            if ('cd', 68).length - 1 >= ('cd', 68).length:
                revert with 'NH{q', 50
            require cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)] == address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)])
            require address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)])
            mem[(6 * ceil32(return_data.size)) + 100] = address(cd[36])
            mem[(6 * ceil32(return_data.size)) + 132] = (((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (2 * Mask(112, 0, ext_call.return_data[32])) * ((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (2 * ((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (2 * Mask(112, 0, ext_call.return_data[32]))
            require ext_code.size(stor0)
            call stor0.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[36]), (((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (2 * Mask(112, 0, ext_call.return_data[32])) * ((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (2 * ((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (2 * Mask(112, 0, ext_call.return_data[32]))
            mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if block.timestamp > -61:
                revert with 'NH{q', 17
            mem[(7 * ceil32(return_data.size)) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(7 * ceil32(return_data.size)) + 100] = (((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (2 * Mask(112, 0, ext_call.return_data[32])) * ((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (2 * ((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (2 * Mask(112, 0, ext_call.return_data[32]))
            mem[(7 * ceil32(return_data.size)) + 132] = 0
            mem[(7 * ceil32(return_data.size)) + 164] = 160
            mem[(7 * ceil32(return_data.size)) + 260] = ('cd', 68).length
            idx = 0
            s = cd[68] + 36
            t = (7 * ceil32(return_data.size)) + 292
            while idx < ('cd', 68).length:
                require cd[s] == address(cd[s])
                mem[t] = address(cd[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(7 * ceil32(return_data.size)) + 196] = this.address
            mem[(7 * ceil32(return_data.size)) + 228] = block.timestamp + 60
            require ext_code.size(address(cd[36]))
            call address(cd[36]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args (((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (2 * Mask(112, 0, ext_call.return_data[32])) * ((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (2 * ((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (2 * Mask(112, 0, ext_call.return_data[32])), 0, 160, address(this.address), block.timestamp + 60, ('cd', 68).length, mem[(7 * ceil32(return_data.size)) + 292 len 32 * ('cd', 68).length]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(7 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (8 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            _64 = mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (2 * Mask(112, 0, ext_call.return_data[32])) * ((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (2 * ((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (2 * Mask(112, 0, ext_call.return_data[32]))) >> 32
            require mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (2 * Mask(112, 0, ext_call.return_data[32])) * ((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (2 * ((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (2 * Mask(112, 0, ext_call.return_data[32]))) >> 32 <= test266151307()
            require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (2 * Mask(112, 0, ext_call.return_data[32])) * ((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (2 * ((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (2 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 127 < (7 * ceil32(return_data.size)) + return_data.size + 96
            _67 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (2 * Mask(112, 0, ext_call.return_data[32])) * ((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (2 * ((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (2 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 96]
            if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (2 * Mask(112, 0, ext_call.return_data[32])) * ((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (2 * ((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (2 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 96] > test266151307():
                revert with 'NH{q', 65
            if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (2 * Mask(112, 0, ext_call.return_data[32])) * ((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (2 * ((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (2 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (2 * Mask(112, 0, ext_call.return_data[32])) * ((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (2 * ((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (2 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 96]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (2 * Mask(112, 0, ext_call.return_data[32])) * ((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (2 * ((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (2 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 96]) + 97
            mem[(8 * ceil32(return_data.size)) + 96] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (2 * Mask(112, 0, ext_call.return_data[32])) * ((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (2 * ((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[32]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (2 * Mask(112, 0, ext_call.return_data[32]))) + (2 * Mask(112, 0, ext_call.return_data[32]))) >> 32 + 96]
            require _64 + (32 * _67) + 32 <= return_data.size
            idx = 0
            s = (7 * ceil32(return_data.size)) + _64 + 128
            t = (8 * ceil32(return_data.size)) + 128
            while idx < _67:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]))
            staticcall address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _151 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _154 = mem[_151]
            require mem[_151] == mem[_151]
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor0)
            staticcall stor0.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _163 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _166 = mem[_163]
            require mem[_163] == mem[_163]
            mem[mem[64] + 4] = address(cd[100])
            mem[mem[64] + 36] = _154
            require ext_code.size(address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]))
            call address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[100]), _154
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _175 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_175] == bool(mem[_175])
            mem[mem[64] + 4] = address(cd[100])
            mem[mem[64] + 36] = _166
            require ext_code.size(stor0)
            call stor0.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[100]), _166
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _187 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_187] == bool(mem[_187])
            if block.timestamp > -61:
                revert with 'NH{q', 17
            mem[mem[64] + 68] = _166
            mem[mem[64] + 100] = _154
            mem[mem[64] + 132] = 0
            mem[mem[64] + 164] = 0
            mem[mem[64] + 196] = this.address
            mem[mem[64] + 228] = block.timestamp + 60
            require ext_code.size(address(cd[100]))
            call address(cd[100]).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                 gas gas_remaining wei
                args stor0, address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]), _166, _154, 0, 0, address(this.address), block.timestamp + 60
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _199 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_199] == mem[_199]
            require mem[_199 + 32] == mem[_199 + 32]
            require mem[_199 + 64] == mem[_199 + 64]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[132]))
            staticcall address(cd[132]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _217 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _220 = mem[_217]
            require mem[_217] == mem[_217]
            mem[mem[64] + 4] = address(cd[164])
            mem[mem[64] + 36] = _220
            require ext_code.size(address(cd[132]))
            call address(cd[132]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[164]), _220
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _229 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_229] == bool(mem[_229])
            require ext_code.size(address(cd[164]))
            staticcall address(cd[164]).bondPrice() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _241 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _244 = mem[_241]
            require mem[_241] == mem[_241]
            require ext_code.size(address(cd[164]))
            staticcall address(cd[164]).bondInfo(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _253 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _256 = mem[_253]
            require mem[_253] == mem[_253]
            require mem[_253 + 32] == mem[_253 + 32]
            require mem[_253 + 64] == mem[_253 + 92 len 4]
            require mem[_253 + 96] == mem[_253 + 124 len 4]
            mem[mem[64] + 4] = _220
            mem[mem[64] + 36] = _244
            mem[mem[64] + 68] = msg.sender
            require ext_code.size(address(cd[164]))
            call address(cd[164]).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args _220, _244, msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _274 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_274] == mem[_274]
            require ext_code.size(address(cd[164]))
            staticcall address(cd[164]).bondInfo(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _286 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            require mem[_286] == mem[_286]
            require mem[_286 + 32] == mem[_286 + 32]
            require mem[_286 + 64] == mem[_286 + 92 len 4]
            require mem[_286 + 96] == mem[_286 + 124 len 4]
            if mem[_286] < _256:
                revert with 'NH{q', 17
            if mem[_286] - _256 < cd[196]:
                revert with 0, 'insufficient profit, either ROI plummeted or your slippage is too tight'
            if ('cd', 68).length < 1:
                revert with 'NH{q', 17
            if ('cd', 68).length - 1 >= ('cd', 68).length:
                revert with 'NH{q', 50
            require cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)] == address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)])
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]))
            staticcall address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _313 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _316 = mem[_313]
            require mem[_313] == mem[_313]
            if mem[_313] <= 0:
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor0)
                staticcall stor0.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _330 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _337 = mem[_330]
                require mem[_330] == mem[_330]
                if mem[_330] > 0:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _337
                    require ext_code.size(stor0)
                    call stor0.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _337
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _357 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_357] == bool(mem[_357])
            else:
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = _316
                require ext_code.size(address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]))
                call address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]).0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, _316
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _334 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_334] == bool(mem[_334])
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor0)
                staticcall stor0.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _358 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _364 = mem[_358]
                require mem[_358] == mem[_358]
                if mem[_358] > 0:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _364
                    require ext_code.size(stor0)
                    call stor0.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _364
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _373 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_373] == bool(mem[_373])
        else:
            if ext_call.return_data[12 len 20] != address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]):
                revert with 0, 'bad LP token'
            if address(ext_call.return_data[0]) != stor0:
                revert with 0, 'bad LP token'
            if Mask(112, 0, ext_call.return_data[0]) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if Mask(112, 0, ext_call.return_data[0]) and cd[4] > -1 / Mask(112, 0, ext_call.return_data[0]):
                revert with 'NH{q', 17
            if cd[4] / 2 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if Mask(255, 1, cd[4]) > -(2 * Mask(112, 0, ext_call.return_data[0])) - 1:
                revert with 'NH{q', 17
            if Mask(255, 1, cd[4]) and cd[4] / 2 > -1 / cd[4] / 2:
                revert with 'NH{q', 17
            if cd[4] / 2 * cd[4] / 2 > (-1 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) - 1:
                revert with 'NH{q', 17
            if not Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0])):
                revert with 'NH{q', 18
            if (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0])) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if 2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0])) > -(2 * Mask(112, 0, ext_call.return_data[0])) - 1:
                revert with 'NH{q', 17
            if (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0])) and (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0])) > -1 / (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0])):
                revert with 'NH{q', 17
            if (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0])) > (-1 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) - 1:
                revert with 'NH{q', 17
            if not (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0])):
                revert with 'NH{q', 18
            if ((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0])) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if 2 * ((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0])) > -(2 * Mask(112, 0, ext_call.return_data[0])) - 1:
                revert with 'NH{q', 17
            if ((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0])) and ((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0])) > -1 / ((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0])):
                revert with 'NH{q', 17
            if ((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0])) * ((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0])) > (-1 * Mask(112, 0, ext_call.return_data[0]) * cd[4]) - 1:
                revert with 'NH{q', 17
            if not (2 * ((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0])):
                revert with 'NH{q', 18
            if ('cd', 68).length < 1:
                revert with 'NH{q', 17
            if ('cd', 68).length - 1 >= ('cd', 68).length:
                revert with 'NH{q', 50
            require cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)] == address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)])
            require address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)])
            mem[(6 * ceil32(return_data.size)) + 100] = address(cd[36])
            mem[(6 * ceil32(return_data.size)) + 132] = (((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0])) * ((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * ((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0]))
            require ext_code.size(stor0)
            call stor0.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[36]), (((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0])) * ((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * ((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0]))
            mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if block.timestamp > -61:
                revert with 'NH{q', 17
            mem[(7 * ceil32(return_data.size)) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(7 * ceil32(return_data.size)) + 100] = (((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0])) * ((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * ((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0]))
            mem[(7 * ceil32(return_data.size)) + 132] = 0
            mem[(7 * ceil32(return_data.size)) + 164] = 160
            mem[(7 * ceil32(return_data.size)) + 260] = ('cd', 68).length
            idx = 0
            s = cd[68] + 36
            t = (7 * ceil32(return_data.size)) + 292
            while idx < ('cd', 68).length:
                require cd[s] == address(cd[s])
                mem[t] = address(cd[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(7 * ceil32(return_data.size)) + 196] = this.address
            mem[(7 * ceil32(return_data.size)) + 228] = block.timestamp + 60
            require ext_code.size(address(cd[36]))
            call address(cd[36]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args (((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0])) * ((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * ((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0])), 0, 160, address(this.address), block.timestamp + 60, ('cd', 68).length, mem[(7 * ceil32(return_data.size)) + 292 len 32 * ('cd', 68).length]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(7 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (8 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            _63 = mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0])) * ((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * ((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0]))) >> 32
            require mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0])) * ((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * ((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0]))) >> 32 <= test266151307()
            require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0])) * ((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * ((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 127 < (7 * ceil32(return_data.size)) + return_data.size + 96
            _66 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0])) * ((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * ((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]
            if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0])) * ((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * ((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96] > test266151307():
                revert with 'NH{q', 65
            if (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0])) * ((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * ((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0])) * ((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * ((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = (8 * ceil32(return_data.size)) + floor32(mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0])) * ((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * ((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]) + 97
            mem[(8 * ceil32(return_data.size)) + 96] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, (((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0])) * ((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * ((cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0])) * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / (2 * (cd[4] / 2 * cd[4] / 2) + (Mask(112, 0, ext_call.return_data[0]) * cd[4]) / Mask(255, 1, cd[4]) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0]))) + (2 * Mask(112, 0, ext_call.return_data[0]))) >> 32 + 96]
            require _63 + (32 * _66) + 32 <= return_data.size
            idx = 0
            s = (7 * ceil32(return_data.size)) + _63 + 128
            t = (8 * ceil32(return_data.size)) + 128
            while idx < _66:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]))
            staticcall address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _150 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _153 = mem[_150]
            require mem[_150] == mem[_150]
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor0)
            staticcall stor0.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _162 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _165 = mem[_162]
            require mem[_162] == mem[_162]
            mem[mem[64] + 4] = address(cd[100])
            mem[mem[64] + 36] = _153
            require ext_code.size(address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]))
            call address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[100]), _153
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _174 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_174] == bool(mem[_174])
            mem[mem[64] + 4] = address(cd[100])
            mem[mem[64] + 36] = _165
            require ext_code.size(stor0)
            call stor0.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[100]), _165
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _186 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_186] == bool(mem[_186])
            if block.timestamp > -61:
                revert with 'NH{q', 17
            mem[mem[64] + 68] = _165
            mem[mem[64] + 100] = _153
            mem[mem[64] + 132] = 0
            mem[mem[64] + 164] = 0
            mem[mem[64] + 196] = this.address
            mem[mem[64] + 228] = block.timestamp + 60
            require ext_code.size(address(cd[100]))
            call address(cd[100]).addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
                 gas gas_remaining wei
                args stor0, address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]), _165, _153, 0, 0, address(this.address), block.timestamp + 60
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _198 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_198] == mem[_198]
            require mem[_198 + 32] == mem[_198 + 32]
            require mem[_198 + 64] == mem[_198 + 64]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[132]))
            staticcall address(cd[132]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _216 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _219 = mem[_216]
            require mem[_216] == mem[_216]
            mem[mem[64] + 4] = address(cd[164])
            mem[mem[64] + 36] = _219
            require ext_code.size(address(cd[132]))
            call address(cd[132]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[164]), _219
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _228 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_228] == bool(mem[_228])
            require ext_code.size(address(cd[164]))
            staticcall address(cd[164]).bondPrice() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _240 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _243 = mem[_240]
            require mem[_240] == mem[_240]
            require ext_code.size(address(cd[164]))
            staticcall address(cd[164]).bondInfo(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _252 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _255 = mem[_252]
            require mem[_252] == mem[_252]
            require mem[_252 + 32] == mem[_252 + 32]
            require mem[_252 + 64] == mem[_252 + 92 len 4]
            require mem[_252 + 96] == mem[_252 + 124 len 4]
            mem[mem[64] + 4] = _219
            mem[mem[64] + 36] = _243
            mem[mem[64] + 68] = msg.sender
            require ext_code.size(address(cd[164]))
            call address(cd[164]).deposit(uint256 arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args _219, _243, msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _273 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_273] == mem[_273]
            require ext_code.size(address(cd[164]))
            staticcall address(cd[164]).bondInfo(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _285 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            require mem[_285] == mem[_285]
            require mem[_285 + 32] == mem[_285 + 32]
            require mem[_285 + 64] == mem[_285 + 92 len 4]
            require mem[_285 + 96] == mem[_285 + 124 len 4]
            if mem[_285] < _255:
                revert with 'NH{q', 17
            if mem[_285] - _255 < cd[196]:
                revert with 0, 'insufficient profit, either ROI plummeted or your slippage is too tight'
            if ('cd', 68).length < 1:
                revert with 'NH{q', 17
            if ('cd', 68).length - 1 >= ('cd', 68).length:
                revert with 'NH{q', 50
            require cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)] == address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)])
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]))
            staticcall address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _312 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _315 = mem[_312]
            require mem[_312] == mem[_312]
            if mem[_312] <= 0:
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor0)
                staticcall stor0.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _328 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _336 = mem[_328]
                require mem[_328] == mem[_328]
                if mem[_328] > 0:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _336
                    require ext_code.size(stor0)
                    call stor0.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _336
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _355 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_355] == bool(mem[_355])
            else:
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = _315
                require ext_code.size(address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]))
                call address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]).0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, _315
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _333 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_333] == bool(mem[_333])
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor0)
                staticcall stor0.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _356 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _362 = mem[_356]
                require mem[_356] == mem[_356]
                if mem[_356] > 0:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _362
                    require ext_code.size(stor0)
                    call stor0.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _362
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _372 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_372] == bool(mem[_372])
}



}
