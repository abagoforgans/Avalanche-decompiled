contract main {




// =====================  Runtime code  =====================


address owner;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_805eaeaa(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    staticcall address(arg1).WETH() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return 0
}

function sub_bc3442f3(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] == cd[4]
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + 97 > test266151307() or floor32(('cd', 36).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 36).length
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
    require cd[68] == address(cd[68])
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[floor32(('cd', 36).length) + 97] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
    mem[floor32(('cd', 36).length) + 101] = cd[4]
    mem[floor32(('cd', 36).length) + 133] = 0
    mem[floor32(('cd', 36).length) + 165] = 160
    mem[floor32(('cd', 36).length) + 261] = ('cd', 36).length
    idx = 0
    s = 128
    t = floor32(('cd', 36).length) + 293
    while idx < ('cd', 36).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(cd[68]))
    call address(cd[68]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args cd[4], 0, 160, msg.sender, block.timestamp, ('cd', 36).length, mem[floor32(('cd', 36).length) + 293 len 32 * ('cd', 36).length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function swapETH(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    mem[128] = arg1
    mem[160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), ext_call.return_data[0]
    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg2), ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(6 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(7 * ceil32(return_data.size)) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
    mem[(7 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
    idx = 0
    s = 128
    t = (7 * ceil32(return_data.size)) + 388
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(arg2)
    call arg2.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 0, 160, msg.sender, block.timestamp, 2, mem[(7 * ceil32(return_data.size)) + 388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_cf2b7be2(?) payable {
    require calldata.size - 4 >= 160
    require cd[4] == cd[4]
    require cd[36] == address(cd[36])
    require cd[68] == address(cd[68])
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    if ('cd', 100).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 100).length) + 97 > test266151307() or floor32(('cd', 100).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 100).length
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    idx = 0
    s = cd[100] + 36
    t = 128
    while idx < ('cd', 100).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    if ('cd', 132).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 100).length) + floor32(('cd', 132).length) + 98 > test266151307() or floor32(('cd', 132).length) + 98 < 97:
        revert with 'NH{q', 65
    mem[floor32(('cd', 100).length) + 97] = ('cd', 132).length
    require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    idx = 0
    s = cd[132] + 36
    t = floor32(('cd', 100).length) + 129
    while idx < ('cd', 132).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if ('cd', 100).length > test266151307():
        revert with 'NH{q', 65
    mem[floor32(('cd', 100).length) + floor32(('cd', 132).length) + 98] = ('cd', 100).length
    mem[64] = floor32(('cd', 100).length) + floor32(('cd', 132).length) + (32 * ('cd', 100).length) + 130
    if not ('cd', 100).length:
        idx = 0
        while uint8(idx) < ('cd', 100).length:
            if uint8(idx) >= mem[96]:
                revert with 'NH{q', 50
            _249 = mem[(32 * uint8(idx)) + 128]
            mem[mem[64] + 4] = address(cd[36])
            mem[mem[64] + 36] = address(cd[68])
            require ext_code.size(address(_249))
            staticcall address(_249).getPair(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(cd[36]), address(cd[68])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _261 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _264 = mem[_261]
            require mem[_261] == mem[_261 + 12 len 20]
            if mem[_261 + 12 len 20]:
                _266 = mem[64]
                mem[mem[64] + 36] = mem[_261 + 12 len 20]
                _268 = mem[64]
                mem[mem[64]] = 36
                mem[64] = mem[64] + 68
                mem[_268 + 32] = mem[_268 + 36 len 28] or 0x2c2ecbc200000000000000000000000000000000000000000000000000000000
                staticcall 'console.log'.mem[_268 + 32 len 4] with:
                        gas gas_remaining wei
                       args mem[_268 + 36 len mem[_268] - 4]
                require ext_code.size(address(_264))
                staticcall address(_264).getReserves() with:
                        gas gas_remaining wei
                mem[_266 + 68 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _266 + ceil32(return_data.size) + 68
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                require ext_code.size(address(_264))
                staticcall address(_264).token1() with:
                        gas gas_remaining wei
                mem[_266 + ceil32(return_data.size) + 68] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _266 + (2 * ceil32(return_data.size)) + 68
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if uint8(idx) >= mem[floor32(('cd', 100).length) + 97]:
                    revert with 'NH{q', 50
                if address(cd[36]) != ext_call.return_data[12 len 20]:
                    _296 = mem[(32 * uint8(idx)) + floor32(('cd', 100).length) + 129]
                    mem[_266 + (2 * ceil32(return_data.size)) + 72] = cd[4]
                    mem[_266 + (2 * ceil32(return_data.size)) + 104] = Mask(112, 0, ext_call.return_data[0])
                    mem[_266 + (2 * ceil32(return_data.size)) + 136] = Mask(112, 0, ext_call.return_data[32])
                    require ext_code.size(address(_296))
                    staticcall address(_296).quote(uint256 rg1, uint256 rg2, uint256 rg3) with:
                            gas gas_remaining wei
                           args cd[4], ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
                else:
                    _302 = mem[(32 * uint8(idx)) + floor32(('cd', 100).length) + 129]
                    mem[_266 + (2 * ceil32(return_data.size)) + 72] = cd[4]
                    mem[_266 + (2 * ceil32(return_data.size)) + 104] = Mask(112, 0, ext_call.return_data[32])
                    mem[_266 + (2 * ceil32(return_data.size)) + 136] = Mask(112, 0, ext_call.return_data[0])
                    require ext_code.size(address(_302))
                    staticcall address(_302).quote(uint256 rg1, uint256 rg2, uint256 rg3) with:
                            gas gas_remaining wei
                           args cd[4], ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                mem[_266 + (2 * ceil32(return_data.size)) + 68] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _266 + (4 * ceil32(return_data.size)) + 68
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if uint8(idx) >= mem[floor32(('cd', 100).length) + floor32(('cd', 132).length) + 98]:
                    revert with 'NH{q', 50
                mem[(32 * uint8(idx)) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 130] = ext_call.return_data[0]
            if uint8(idx) == 255:
                revert with 'NH{q', 17
            idx = uint8(idx) + 1
            continue 
        _248 = mem[64]
        mem[mem[64]] = 64
        _254 = mem[floor32(('cd', 100).length) + floor32(('cd', 132).length) + 98]
        mem[mem[64] + 64] = mem[floor32(('cd', 100).length) + floor32(('cd', 132).length) + 98]
        mem[mem[64] + 96 len 32 * _254] = mem[floor32(('cd', 100).length) + floor32(('cd', 132).length) + 130 len 32 * _254]
        mem[mem[64] + 32] = 0
        return memory
          from mem[64]
           len _248 + (32 * _254) + -mem[64] + 96
    mem[floor32(('cd', 100).length) + floor32(('cd', 132).length) + 130 len 32 * ('cd', 100).length] = call.data[calldata.size len 32 * ('cd', 100).length]
    idx = 0
    while uint8(idx) < ('cd', 100).length:
        if uint8(idx) >= mem[96]:
            revert with 'NH{q', 50
        _252 = mem[(32 * uint8(idx)) + 128]
        mem[mem[64] + 4] = address(cd[36])
        mem[mem[64] + 36] = address(cd[68])
        require ext_code.size(address(_252))
        staticcall address(_252).getPair(address rg1, address rg2) with:
                gas gas_remaining wei
               args address(cd[36]), address(cd[68])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _263 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _265 = mem[_263]
        require mem[_263] == mem[_263 + 12 len 20]
        if mem[_263 + 12 len 20]:
            _267 = mem[64]
            mem[mem[64] + 36] = mem[_263 + 12 len 20]
            _270 = mem[64]
            mem[mem[64]] = 36
            mem[64] = mem[64] + 68
            mem[_270 + 32] = mem[_270 + 36 len 28] or 0x2c2ecbc200000000000000000000000000000000000000000000000000000000
            staticcall 'console.log'.mem[_270 + 32 len 4] with:
                    gas gas_remaining wei
                   args mem[_270 + 36 len mem[_270] - 4]
            require ext_code.size(address(_265))
            staticcall address(_265).getReserves() with:
                    gas gas_remaining wei
            mem[_267 + 68 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _267 + ceil32(return_data.size) + 68
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            require ext_code.size(address(_265))
            staticcall address(_265).token1() with:
                    gas gas_remaining wei
            mem[_267 + ceil32(return_data.size) + 68] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _267 + (2 * ceil32(return_data.size)) + 68
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if uint8(idx) >= mem[floor32(('cd', 100).length) + 97]:
                revert with 'NH{q', 50
            if address(cd[36]) != ext_call.return_data[12 len 20]:
                _299 = mem[(32 * uint8(idx)) + floor32(('cd', 100).length) + 129]
                mem[_267 + (2 * ceil32(return_data.size)) + 72] = cd[4]
                mem[_267 + (2 * ceil32(return_data.size)) + 104] = Mask(112, 0, ext_call.return_data[0])
                mem[_267 + (2 * ceil32(return_data.size)) + 136] = Mask(112, 0, ext_call.return_data[32])
                require ext_code.size(address(_299))
                staticcall address(_299).quote(uint256 rg1, uint256 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args cd[4], ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
            else:
                _304 = mem[(32 * uint8(idx)) + floor32(('cd', 100).length) + 129]
                mem[_267 + (2 * ceil32(return_data.size)) + 72] = cd[4]
                mem[_267 + (2 * ceil32(return_data.size)) + 104] = Mask(112, 0, ext_call.return_data[32])
                mem[_267 + (2 * ceil32(return_data.size)) + 136] = Mask(112, 0, ext_call.return_data[0])
                require ext_code.size(address(_304))
                staticcall address(_304).quote(uint256 rg1, uint256 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args cd[4], ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
            mem[_267 + (2 * ceil32(return_data.size)) + 68] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _267 + (4 * ceil32(return_data.size)) + 68
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if uint8(idx) >= mem[floor32(('cd', 100).length) + floor32(('cd', 132).length) + 98]:
                revert with 'NH{q', 50
            mem[(32 * uint8(idx)) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 130] = ext_call.return_data[0]
        if uint8(idx) == 255:
            revert with 'NH{q', 17
        idx = uint8(idx) + 1
        continue 
    _251 = mem[64]
    mem[mem[64]] = 64
    _255 = mem[floor32(('cd', 100).length) + floor32(('cd', 132).length) + 98]
    mem[mem[64] + 64] = mem[floor32(('cd', 100).length) + floor32(('cd', 132).length) + 98]
    mem[mem[64] + 96 len 32 * _255] = mem[floor32(('cd', 100).length) + floor32(('cd', 132).length) + 130 len 32 * _255]
    mem[mem[64] + 32] = 0
    return memory
      from mem[64]
       len _251 + (32 * _255) + -mem[64] + 96
}



}
