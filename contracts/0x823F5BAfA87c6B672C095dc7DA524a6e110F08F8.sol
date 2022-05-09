contract main {




// =====================  Runtime code  =====================


address stor0;
address routerAddress;

function router() payable {
    return routerAddress
}

function _fallback() payable {
    revert
}

function withdrawEther(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor0
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawToken(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require msg.sender == stor0
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_961e1c49(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    mem[100] = this.address
    mem[132] = routerAddress
    staticcall address(arg1).0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), routerAddress
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0]:
        mem[ceil32(return_data.size) + 96] = 2
        mem[ceil32(return_data.size) + 128] = address(arg1)
        mem[ceil32(return_data.size) + 160] = address(arg2)
        mem[ceil32(return_data.size) + 196] = this.address
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[(2 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
        mem[(2 * ceil32(return_data.size)) + 228] = 0
        mem[(2 * ceil32(return_data.size)) + 260] = 160
        mem[(2 * ceil32(return_data.size)) + 356] = 2
        idx = 0
        s = ceil32(return_data.size) + 128
        t = (2 * ceil32(return_data.size)) + 388
        while idx < mem[ceil32(return_data.size) + 96]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(2 * ceil32(return_data.size)) + 292] = address(arg3)
        mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp
        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0, 160, address(arg3), block.timestamp, mem[(2 * ceil32(return_data.size)) + 356 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _57 = mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28]
        require mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
        _59 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
            revert with 'NH{q', 65
        if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193
        mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
        require _57 + (32 * _59) + 32 <= return_data.size
        idx = (2 * ceil32(return_data.size)) + _57 + 224
        s = (4 * ceil32(return_data.size)) + 224
        while idx < (2 * ceil32(return_data.size)) + _57 + (32 * _59) + 224:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
        if _59 < 1:
            revert with 'NH{q', 17
        if _59 - 1 >= _59:
            revert with 'NH{q', 50
        return memory
          from (32 * _59 - 1) + (4 * ceil32(return_data.size)) + 224
           len 32
    mem[ceil32(return_data.size) + 100] = routerAddress
    mem[ceil32(return_data.size) + 132] = -1
    call address(arg1).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args routerAddress, -1
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 96] = 2
    mem[(2 * ceil32(return_data.size)) + 128] = address(arg1)
    mem[(2 * ceil32(return_data.size)) + 160] = address(arg2)
    mem[(2 * ceil32(return_data.size)) + 196] = this.address
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(4 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 228] = 0
    mem[(4 * ceil32(return_data.size)) + 260] = 160
    mem[(4 * ceil32(return_data.size)) + 356] = 2
    idx = 0
    s = (2 * ceil32(return_data.size)) + 128
    t = (4 * ceil32(return_data.size)) + 388
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(4 * ceil32(return_data.size)) + 292] = address(arg3)
    mem[(4 * ceil32(return_data.size)) + 324] = block.timestamp
    call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 0, 160, address(arg3), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (6 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _58 = mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28]
    require mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
    _60 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
        revert with 'NH{q', 65
    if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193
    mem[(6 * ceil32(return_data.size)) + 192] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
    require _58 + (32 * _60) + 32 <= return_data.size
    idx = (4 * ceil32(return_data.size)) + _58 + 224
    s = (6 * ceil32(return_data.size)) + 224
    while idx < (4 * ceil32(return_data.size)) + _58 + (32 * _60) + 224:
        require mem[idx] == mem[idx]
        mem[s] = mem[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if _60 < 1:
        revert with 'NH{q', 17
    if _60 - 1 >= _60:
        revert with 'NH{q', 50
    return memory
      from (32 * _60 - 1) + (6 * ceil32(return_data.size)) + 224
       len 32
}



}
