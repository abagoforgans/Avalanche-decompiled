contract main {




// =====================  Runtime code  =====================


array of address stor0;
uint256 stor1;
address stor2;

function destroy() {
    if stor2 != msg.sender:
        revert with 0, '5'
    selfdestruct(stor2)
}

function _fallback() payable {
  stop
}

function sub_b51f1f84(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor2 != msg.sender:
        revert with 0, '1'
    stor1 = arg1
}

function setOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor2 != msg.sender:
        revert with 0, '1'
    stor2 = arg1
}

function addToList(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor2 != msg.sender:
        revert with 0, '5'
    stor0.length++
    stor0[stor0.length] = arg1
}

function sub_fa0f9eb9(?) {
    if stor2 != msg.sender:
        revert with 0, '1'
    call stor2 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawal(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    call arg1.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor2, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function check() {
    mem[96] = 2
    mem[64] = 192
    mem[128 len 64] = call.data[calldata.size len 64]
    mem[160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    idx = 0
    s = 0
    t = 0
    while idx < stor0.length:
        mem[0] = 0
        if 0 >= mem[96]:
            revert with 'NH{q', 50
        mem[128] = stor0[idx]
        if 0 >= mem[96]:
            revert with 'NH{q', 50
        mem[mem[64] + 4] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
        staticcall stor0[idx].balanceOf(address arg1) with:
                gas gas_remaining wei
               args 0x60ae616a2155ee3d9a68541ba4544862310933d4
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _39 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _41 = mem[_39]
        require mem[_39] == mem[_39]
        if mem[_39] <= 0:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            t = mem[_39]
            continue 
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _41
        mem[mem[64] + 36] = 64
        _45 = mem[96]
        mem[mem[64] + 68] = mem[96]
        s = 0
        t = 128
        u = mem[64] + 100
        while s < mem[96]:
            mem[u] = mem[t + 12 len 20]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len (32 * _45) + 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _65 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _66 = mem[_65]
        require mem[_65] <= test266151307()
        require _65 + mem[_65] + 31 < _65 + return_data.size
        _67 = mem[_65 + mem[_65]]
        if mem[_65 + mem[_65]] > test266151307():
            revert with 'NH{q', 65
        if _65 + ceil32(return_data.size) + floor32(mem[_65 + mem[_65]]) + 1 > test266151307() or floor32(mem[_65 + mem[_65]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _65 + ceil32(return_data.size) + floor32(mem[_65 + mem[_65]]) + 1
        mem[_65 + ceil32(return_data.size)] = _67
        require _66 + (32 * _67) + 32 <= return_data.size
        s = _65 + _66 + 32
        t = _65 + ceil32(return_data.size) + 32
        while s < _65 + _66 + (32 * _67) + 32:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            s = s + 32
            t = t + 32
            continue 
        if 1 >= _67:
            revert with 'NH{q', 50
        if mem[_65 + ceil32(return_data.size) + 64] <= stor1:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = mem[_65 + ceil32(return_data.size) + 64]
            t = _41
            continue 
        if 0 >= mem[96]:
            revert with 'NH{q', 50
        _83 = mem[64]
        mem[mem[64]] = mem[140 len 20]
        mem[mem[64] + 32] = _41
        mem[mem[64] + 64] = 96
        _84 = mem[96]
        mem[mem[64] + 96] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 128
        while idx < _84:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _83 + (32 * _84) + -mem[64] + 128
    mem[mem[64]] = 0
    mem[mem[64] + 32] = 0
    mem[mem[64] + 64] = 96
    _40 = mem[96]
    mem[mem[64] + 96] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 128
    while idx < _40:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return 0, 0, 96, mem[mem[64] + 96 len (32 * _40) + 32]
}

function sub_347a1312(?) payable {
    if stor2 != msg.sender:
        revert with 0, '1234'
    mem[96] = 0x919840ad00000000000000000000000000000000000000000000000000000000
    staticcall this.address.0x919840ad with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 96
    _5 = mem[96]
    require mem[96] == mem[108 len 20]
    _7 = mem[128]
    require mem[128] == mem[128]
    _8 = mem[160]
    require mem[160] <= test266151307()
    require mem[160] + 127 < return_data.size + 96
    _9 = mem[mem[160] + 96]
    if mem[mem[160] + 96] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + floor32(mem[mem[160] + 96]) + 97 > test266151307() or floor32(mem[mem[160] + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + floor32(mem[mem[160] + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _9
    require _8 + (32 * _9) + 32 <= return_data.size
    idx = _8 + 128
    s = ceil32(return_data.size) + 128
    while idx < _8 + (32 * _9) + 128:
        require mem[idx] == mem[idx + 12 len 20]
        mem[s] = mem[idx]
        idx = idx + 32
        s = s + 32
        continue 
    mem[mem[64] + 4] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
    staticcall address(_5).balanceOf(address arg1) with:
            gas gas_remaining wei
           args 0x60ae616a2155ee3d9a68541ba4544862310933d4
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _40 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_40] == mem[_40]
    if mem[_40] < _7:
        revert with 0, 'GIGACHAD'
    _43 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    if 0 >= mem[_43]:
        revert with 'NH{q', 50
    mem[_43 + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    if 1 >= mem[_43]:
        revert with 'NH{q', 50
    mem[_43 + 64] = address(_5)
    mem[_43 + 96] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
    mem[_43 + 100] = 0
    mem[_43 + 132] = 128
    mem[_43 + 228] = mem[_43]
    idx = 0
    s = _43 + 32
    t = _43 + 260
    while idx < mem[_43]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_43 + 164] = this.address
    mem[_43 + 196] = block.timestamp
    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.mem[mem[64] len 4] with:
       value msg.value / 2 wei
         gas gas_remaining wei
        args mem[mem[64] + 4 len _43 + (32 * mem[_43]) + -mem[64] + 256]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[mem[64] + 4] = this.address
    staticcall address(_5).balanceOf(address arg1) with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    _73 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _74 = mem[_73]
    require mem[_73] == mem[_73]
    mem[mem[64] + 4] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
    mem[mem[64] + 36] = _74
    call address(_5).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x60ae616a2155ee3d9a68541ba4544862310933d4, _74
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _77 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_77] == bool(mem[_77])
    mem[mem[64] + 68] = 0
    mem[mem[64] + 100] = 0
    mem[mem[64] + 132] = this.address
    mem[mem[64] + 164] = block.timestamp
    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
        args address(_5), _74, 0, 0, address(this.address), block.timestamp
    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _81 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 96
    require mem[_81] == mem[_81]
    require mem[_81 + 32] == mem[_81 + 32]
    require mem[_81 + 64] == mem[_81 + 64]
    mem[mem[64] + 4] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    mem[mem[64] + 36] = address(_5)
    staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, address(_5)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _87 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _88 = mem[_87]
    require mem[_87] == mem[_87 + 12 len 20]
    mem[mem[64] + 4] = this.address
    staticcall address(_88).balanceOf(address arg1) with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _91 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _92 = mem[_91]
    require mem[_91] == mem[_91]
    mem[mem[64] + 4] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
    mem[mem[64] + 36] = _92
    call address(_88).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x60ae616a2155ee3d9a68541ba4544862310933d4, _92
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _95 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_95] == bool(mem[_95])
    mem[mem[64] + 4] = address(_5)
    mem[mem[64] + 36] = _92 / 10
    mem[mem[64] + 68] = 0
    mem[mem[64] + 100] = 0
    mem[mem[64] + 132] = this.address
    mem[mem[64] + 164] = block.timestamp
    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.removeLiquidityAVAXSupportingFeeOnTransferTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
         gas gas_remaining wei
        args address(_5), _92 / 10, 0, 0, address(this.address), block.timestamp
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _99 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_99] == mem[_99]
    mem[mem[64] + 4] = this.address
    staticcall address(_5).balanceOf(address arg1) with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _103 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _104 = mem[_103]
    require mem[_103] == mem[_103]
    mem[mem[64] + 4] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
    mem[mem[64] + 36] = _104
    call address(_5).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x60ae616a2155ee3d9a68541ba4544862310933d4, _104
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _107 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_107] == bool(mem[_107])
    mem[mem[64]] = 0x762b156200000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _104
    mem[mem[64] + 36] = 0
    mem[mem[64] + 68] = 160
    _110 = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 164] = mem[ceil32(return_data.size) + 96]
    idx = 0
    s = ceil32(return_data.size) + 128
    t = mem[64] + 196
    while idx < _110:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args _104, 0, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _110) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if eth.balance(this.address) <= stor1:
        revert with 0, 'FK'
    call stor2 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
