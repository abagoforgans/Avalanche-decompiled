contract main {




// =====================  Runtime code  =====================


uint256 stor0;
address stor1;

function _fallback() payable {
  stop
}

function sub_b51f1f84(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1 != msg.sender:
        revert with 0, '1'
    stor0 = arg1
}

function setOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1 != msg.sender:
        revert with 0, '1'
    stor1 = arg1
}

function sub_fa0f9eb9(?) {
    if stor1 != msg.sender:
        revert with 0, '1'
    call stor1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawal(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args stor1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_b046d1f5(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if stor1 != msg.sender:
        revert with 0, '2'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[mem[64] + 4] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
        mem[mem[64] + 36] = 10000000000 * 10^18
        call address(cd[((32 * idx) + cd[4] + 36)]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0x60ae616a2155ee3d9a68541ba4544862310933d4, 10000000000 * 10^18
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _9 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_9] == bool(mem[_9])
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_42f4fbc9(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    mem[96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[100] = msg.value
    mem[132] = 64
    mem[164] = ('cd', 4).length
    idx = 0
    s = cd[4] + 36
    t = 196
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args msg.value, Array(len=('cd', 4).length, data=mem[196 len 32 * ('cd', 4).length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _31 = mem[96 len 4], Mask(224, 32, msg.value) >> 32
    require mem[96 len 4], Mask(224, 32, msg.value) >> 32 <= test266151307()
    require mem[96 len 4], Mask(224, 32, msg.value) >> 32 + 127 < return_data.size + 96
    _32 = mem[mem[96 len 4], Mask(224, 32, msg.value) >> 32 + 96]
    if mem[mem[96 len 4], Mask(224, 32, msg.value) >> 32 + 96] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + floor32(mem[mem[96 len 4], Mask(224, 32, msg.value) >> 32 + 96]) + 97 > test266151307() or floor32(mem[mem[96 len 4], Mask(224, 32, msg.value) >> 32 + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + floor32(mem[mem[96 len 4], Mask(224, 32, msg.value) >> 32 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _32
    require _31 + (32 * _32) + 32 <= return_data.size
    idx = _31 + 128
    s = ceil32(return_data.size) + 128
    while idx < _31 + (32 * _32) + 128:
        require mem[idx] == mem[idx]
        mem[s] = mem[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if _32 < 1:
        revert with 'NH{q', 17
    if _32 - 1 >= _32:
        revert with 'NH{q', 50
    _59 = mem[(32 * _32 - 1) + ceil32(return_data.size) + 128]
    if msg.value > -stor0 - 1:
        revert with 'NH{q', 17
    if mem[(32 * _32 - 1) + ceil32(return_data.size) + 128] <= msg.value + stor0:
        revert with 0, 'No Profit'
    mem[mem[64]] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.deposit() with:
       value msg.value wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        if address(cd[((32 * idx) + cd[4] + 36)]) != 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            mem[mem[64] + 4] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
            mem[mem[64] + 36] = 10000000 * 10^18
            call address(cd[((32 * idx) + cd[4] + 36)]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0x60ae616a2155ee3d9a68541ba4544862310933d4, 10000000 * 10^18
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _83 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_83] == bool(mem[_83])
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if _59 < _59 / 100:
        revert with 'NH{q', 17
    mem[mem[64] + 36] = _59 - (_59 / 100)
    mem[mem[64] + 68] = 160
    mem[mem[64] + 164] = ('cd', 4).length
    idx = 0
    s = cd[4] + 36
    t = mem[64] + 196
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 100] = this.address
    mem[mem[64] + 132] = block.timestamp
    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args msg.value, _59 - (_59 / 100), Array(len=('cd', 4).length, data=mem[mem[64] + 196 len 32 * ('cd', 4).length]), address(this.address), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[mem[64] + 4] = this.address
    staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    _95 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_95] == mem[_95]
    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
         gas gas_remaining wei
        args mem[_95]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call stor1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}



}
