contract main {




// =====================  Runtime code  =====================


address owner;

function owner() {
    return owner
}

function _fallback() payable {
  stop
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_c9c13eca(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function getBalance(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_4e96a543(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(arg1))
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_7ec6257e(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    mem[100] = this.address
    require ext_code.size(address(arg2))
    staticcall address(arg2).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if address(arg3) == address(arg4):
        mem[ceil32(return_data.size) + 96] = 2
        mem[ceil32(return_data.size) + 128] = address(arg2)
        mem[ceil32(return_data.size) + 160] = address(arg3)
        mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 196] = ext_call.return_data[0]
        mem[ceil32(return_data.size) + 228] = 64
        mem[ceil32(return_data.size) + 260] = 2
        idx = 0
        s = ceil32(return_data.size) + 128
        t = ceil32(return_data.size) + 292
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(address(arg1))
        staticcall address(arg1).getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args ext_call.return_data[0], Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _47 = mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28]
        require mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 223 < ceil32(return_data.size) + return_data.size + 192
        _49 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
            revert with 'NH{q', 65
        if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193
        mem[(2 * ceil32(return_data.size)) + 192] = _49
        require _47 + (32 * _49) + 32 <= return_data.size
        idx = 0
        s = ceil32(return_data.size) + _47 + 224
        t = (2 * ceil32(return_data.size)) + 224
        while idx < _49:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if mem[ceil32(return_data.size) + 96] < 1:
            revert with 'NH{q', 17
        if mem[ceil32(return_data.size) + 96] - 1 >= _49:
            revert with 'NH{q', 50
        mem[mem[64]] = mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + (2 * ceil32(return_data.size)) + 224]
    else:
        mem[ceil32(return_data.size) + 96] = 3
        mem[ceil32(return_data.size) + 128] = address(arg2)
        mem[ceil32(return_data.size) + 160] = address(arg3)
        mem[ceil32(return_data.size) + 192] = address(arg4)
        mem[ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 228] = ext_call.return_data[0]
        mem[ceil32(return_data.size) + 260] = 64
        mem[ceil32(return_data.size) + 292] = 3
        idx = 0
        s = ceil32(return_data.size) + 128
        t = ceil32(return_data.size) + 324
        while idx < 3:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(address(arg1))
        staticcall address(arg1).getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args ext_call.return_data[0], Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 224
        require return_data.size >= 32
        _46 = mem[ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28]
        require mem[ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] <= test266151307()
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 255 < ceil32(return_data.size) + return_data.size + 224
        _48 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224] > test266151307():
            revert with 'NH{q', 65
        if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 225 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 225
        mem[(2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]
        require _46 + (32 * _48) + 32 <= return_data.size
        idx = 0
        s = ceil32(return_data.size) + _46 + 256
        t = (2 * ceil32(return_data.size)) + 256
        while idx < _48:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if mem[ceil32(return_data.size) + 96] < 1:
            revert with 'NH{q', 17
        if mem[ceil32(return_data.size) + 96] - 1 >= _48:
            revert with 'NH{q', 50
        mem[mem[64]] = mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + (2 * ceil32(return_data.size)) + 256]
    return memory
      from mem[64]
       len 32
}

function sub_f856d7ce(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    mem[100] = this.address
    require ext_code.size(address(arg4))
    staticcall address(arg4).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if address(arg2) == address(arg4):
        mem[ceil32(return_data.size) + 96] = 2
        mem[ceil32(return_data.size) + 128] = address(arg2)
        mem[ceil32(return_data.size) + 160] = address(arg3)
        mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 196] = ext_call.return_data[0]
        mem[ceil32(return_data.size) + 228] = 64
        mem[ceil32(return_data.size) + 260] = 2
        idx = 0
        s = ceil32(return_data.size) + 128
        t = ceil32(return_data.size) + 292
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(address(arg1))
        staticcall address(arg1).getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args ext_call.return_data[0], Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _47 = mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28]
        require mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 223 < ceil32(return_data.size) + return_data.size + 192
        _49 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
            revert with 'NH{q', 65
        if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193
        mem[(2 * ceil32(return_data.size)) + 192] = _49
        require _47 + (32 * _49) + 32 <= return_data.size
        idx = 0
        s = ceil32(return_data.size) + _47 + 224
        t = (2 * ceil32(return_data.size)) + 224
        while idx < _49:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if mem[ceil32(return_data.size) + 96] < 1:
            revert with 'NH{q', 17
        if mem[ceil32(return_data.size) + 96] - 1 >= _49:
            revert with 'NH{q', 50
        mem[mem[64]] = mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + (2 * ceil32(return_data.size)) + 224]
    else:
        mem[ceil32(return_data.size) + 96] = 3
        mem[ceil32(return_data.size) + 128] = address(arg4)
        mem[ceil32(return_data.size) + 160] = address(arg2)
        mem[ceil32(return_data.size) + 192] = address(arg3)
        mem[ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 228] = ext_call.return_data[0]
        mem[ceil32(return_data.size) + 260] = 64
        mem[ceil32(return_data.size) + 292] = 3
        idx = 0
        s = ceil32(return_data.size) + 128
        t = ceil32(return_data.size) + 324
        while idx < 3:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(address(arg1))
        staticcall address(arg1).getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args ext_call.return_data[0], Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 224
        require return_data.size >= 32
        _46 = mem[ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28]
        require mem[ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] <= test266151307()
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 255 < ceil32(return_data.size) + return_data.size + 224
        _48 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224] > test266151307():
            revert with 'NH{q', 65
        if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 225 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 225
        mem[(2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]
        require _46 + (32 * _48) + 32 <= return_data.size
        idx = 0
        s = ceil32(return_data.size) + _46 + 256
        t = (2 * ceil32(return_data.size)) + 256
        while idx < _48:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if mem[ceil32(return_data.size) + 96] < 1:
            revert with 'NH{q', 17
        if mem[ceil32(return_data.size) + 96] - 1 >= _48:
            revert with 'NH{q', 50
        mem[mem[64]] = mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + (2 * ceil32(return_data.size)) + 256]
    return memory
      from mem[64]
       len 32
}

function sub_fb97fd71(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require ext_code.size(address(arg2))
    staticcall address(arg2).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 100] = address(arg1)
    mem[ceil32(return_data.size) + 132] = ext_call.return_data[0]
    require ext_code.size(address(arg2))
    call address(arg2).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 128] = address(arg2)
    mem[(2 * ceil32(return_data.size)) + 160] = address(arg3)
    if address(arg3) == address(arg4):
        if block.timestamp > -301:
            revert with 'NH{q', 17
        mem[(2 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
        mem[(2 * ceil32(return_data.size)) + 228] = 1
        mem[(2 * ceil32(return_data.size)) + 260] = 160
        mem[(2 * ceil32(return_data.size)) + 356] = 2
        idx = 0
        s = (2 * ceil32(return_data.size)) + 128
        t = (2 * ceil32(return_data.size)) + 388
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(2 * ceil32(return_data.size)) + 292] = this.address
        mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp + 300
        require ext_code.size(address(arg1))
        call address(arg1).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 1, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 388 len 64]), address(this.address), block.timestamp + 300
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _41 = mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28]
        require mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
        _43 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
            revert with 'NH{q', 65
        if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193
        mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
        require _41 + (32 * _43) + 32 <= return_data.size
        idx = 0
        s = (2 * ceil32(return_data.size)) + _41 + 224
        t = (4 * ceil32(return_data.size)) + 224
        while idx < _43:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
    else:
        mem[(2 * ceil32(return_data.size)) + 192] = address(arg4)
        if block.timestamp > -301:
            revert with 'NH{q', 17
        mem[(2 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
        mem[(2 * ceil32(return_data.size)) + 260] = 1
        mem[(2 * ceil32(return_data.size)) + 292] = 160
        mem[(2 * ceil32(return_data.size)) + 388] = 3
        idx = 0
        s = (2 * ceil32(return_data.size)) + 128
        t = (2 * ceil32(return_data.size)) + 420
        while idx < 3:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(2 * ceil32(return_data.size)) + 324] = this.address
        mem[(2 * ceil32(return_data.size)) + 356] = block.timestamp + 300
        require ext_code.size(address(arg1))
        call address(arg1).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 1, Array(len=3, data=mem[(2 * ceil32(return_data.size)) + 420 len 96]), address(this.address), block.timestamp + 300
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 224
        require return_data.size >= 32
        _40 = mem[(2 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28]
        require mem[(2 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] <= test266151307()
        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 255 < (2 * ceil32(return_data.size)) + return_data.size + 224
        _42 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]
        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224] > test266151307():
            revert with 'NH{q', 65
        if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 225 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 225
        mem[(4 * ceil32(return_data.size)) + 224] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]
        require _40 + (32 * _42) + 32 <= return_data.size
        idx = 0
        s = (2 * ceil32(return_data.size)) + _40 + 256
        t = (4 * ceil32(return_data.size)) + 256
        while idx < _42:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
}

function sub_1d2a015c(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require ext_code.size(address(arg4))
    staticcall address(arg4).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 100] = address(arg1)
    mem[ceil32(return_data.size) + 132] = ext_call.return_data[0]
    require ext_code.size(address(arg2))
    call address(arg2).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if address(arg2) == address(arg4):
        mem[(2 * ceil32(return_data.size)) + 128] = address(arg2)
        mem[(2 * ceil32(return_data.size)) + 160] = address(arg3)
        if block.timestamp > -301:
            revert with 'NH{q', 17
        mem[(2 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
        mem[(2 * ceil32(return_data.size)) + 228] = 1
        mem[(2 * ceil32(return_data.size)) + 260] = 160
        mem[(2 * ceil32(return_data.size)) + 356] = 2
        idx = 0
        s = (2 * ceil32(return_data.size)) + 128
        t = (2 * ceil32(return_data.size)) + 388
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(2 * ceil32(return_data.size)) + 292] = this.address
        mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp + 300
        require ext_code.size(address(arg1))
        call address(arg1).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 1, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 388 len 64]), address(this.address), block.timestamp + 300
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _41 = mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28]
        require mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
        _43 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
            revert with 'NH{q', 65
        if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193
        mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
        require _41 + (32 * _43) + 32 <= return_data.size
        idx = 0
        s = (2 * ceil32(return_data.size)) + _41 + 224
        t = (4 * ceil32(return_data.size)) + 224
        while idx < _43:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
    else:
        mem[(2 * ceil32(return_data.size)) + 128] = address(arg4)
        mem[(2 * ceil32(return_data.size)) + 160] = address(arg2)
        mem[(2 * ceil32(return_data.size)) + 192] = address(arg3)
        if block.timestamp > -301:
            revert with 'NH{q', 17
        mem[(2 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
        mem[(2 * ceil32(return_data.size)) + 260] = 1
        mem[(2 * ceil32(return_data.size)) + 292] = 160
        mem[(2 * ceil32(return_data.size)) + 388] = 3
        idx = 0
        s = (2 * ceil32(return_data.size)) + 128
        t = (2 * ceil32(return_data.size)) + 420
        while idx < 3:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(2 * ceil32(return_data.size)) + 324] = this.address
        mem[(2 * ceil32(return_data.size)) + 356] = block.timestamp + 300
        require ext_code.size(address(arg1))
        call address(arg1).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 1, Array(len=3, data=mem[(2 * ceil32(return_data.size)) + 420 len 96]), address(this.address), block.timestamp + 300
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 224
        require return_data.size >= 32
        _40 = mem[(2 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28]
        require mem[(2 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] <= test266151307()
        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 255 < (2 * ceil32(return_data.size)) + return_data.size + 224
        _42 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]
        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224] > test266151307():
            revert with 'NH{q', 65
        if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 225 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 225
        mem[(4 * ceil32(return_data.size)) + 224] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], ext_call.return_data[0 len 28] + 224]
        require _40 + (32 * _42) + 32 <= return_data.size
        idx = 0
        s = (2 * ceil32(return_data.size)) + _40 + 256
        t = (4 * ceil32(return_data.size)) + 256
        while idx < _42:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
}

function sub_59b05eeb(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    require ext_code.size(address(arg4))
    staticcall address(arg4).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if address(arg2) == address(arg4):
        mem[ceil32(return_data.size) + 96] = 2
        mem[ceil32(return_data.size) + 128] = address(arg2)
        mem[ceil32(return_data.size) + 160] = address(arg3)
        mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 196] = ext_call.return_data[0]
        mem[ceil32(return_data.size) + 228] = 64
        mem[ceil32(return_data.size) + 260] = 2
        idx = 0
        s = ceil32(return_data.size) + 128
        t = ceil32(return_data.size) + 292
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(address(arg1))
        staticcall address(arg1).getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args ext_call.return_data[0], Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _86 = mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28]
        require mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 223 < ceil32(return_data.size) + return_data.size + 192
        _88 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
            revert with 'NH{q', 65
        if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193
        mem[(2 * ceil32(return_data.size)) + 192] = _88
        require _86 + (32 * _88) + 32 <= return_data.size
        idx = 0
        s = ceil32(return_data.size) + _86 + 224
        t = (2 * ceil32(return_data.size)) + 224
        while idx < _88:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if mem[ceil32(return_data.size) + 96] < 1:
            revert with 'NH{q', 17
        if mem[ceil32(return_data.size) + 96] - 1 >= _88:
            revert with 'NH{q', 50
        if not mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + (2 * ceil32(return_data.size)) + 224]:
            revert with 0, 'BuyEstimatedOutput is zero'
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg4))
        staticcall address(arg4).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _226 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _228 = mem[_226]
        require mem[_226] == mem[_226]
        mem[mem[64] + 4] = address(arg1)
        mem[mem[64] + 36] = _228
        require ext_code.size(address(arg2))
        call address(arg2).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), _228
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _234 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_234] == bool(mem[_234])
        if address(arg2) == address(arg4):
            _240 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if 0 >= mem[_240]:
                revert with 'NH{q', 50
            mem[_240 + 32] = address(arg2)
            if 1 >= mem[_240]:
                revert with 'NH{q', 50
            mem[_240 + 64] = address(arg3)
            if block.timestamp > -301:
                revert with 'NH{q', 17
            mem[_240 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[_240 + 100] = _228
            mem[_240 + 132] = 1
            mem[_240 + 164] = 160
            mem[_240 + 260] = mem[_240]
            idx = 0
            s = _240 + 32
            t = _240 + 292
            while idx < mem[_240]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_240 + 196] = this.address
            mem[_240 + 228] = block.timestamp + 300
            require ext_code.size(address(arg1))
            call address(arg1).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _240 + (32 * mem[_240]) + -mem[64] + 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _400 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _404 = mem[_400]
            require mem[_400] <= test266151307()
            require _400 + mem[_400] + 31 < _400 + return_data.size
            _408 = mem[_400 + mem[_400]]
            if mem[_400 + mem[_400]] > test266151307():
                revert with 'NH{q', 65
            if _400 + ceil32(return_data.size) + floor32(mem[_400 + mem[_400]]) + 1 > test266151307() or floor32(mem[_400 + mem[_400]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _400 + ceil32(return_data.size) + floor32(mem[_400 + mem[_400]]) + 1
            mem[_400 + ceil32(return_data.size)] = _408
            require _404 + (32 * _408) + 32 <= return_data.size
            idx = 0
            s = _400 + _404 + 32
            t = _400 + ceil32(return_data.size) + 32
            while idx < _408:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg3))
            staticcall address(arg3).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _628 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_628] == mem[_628]
            if not mem[_628]:
                revert with 0, 'BuyActualOutput is zero'
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg3))
            staticcall address(arg3).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _652 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _656 = mem[_652]
            require mem[_652] == mem[_652]
            if address(arg2) == address(arg4):
                _664 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if 0 >= mem[_664]:
                    revert with 'NH{q', 50
                mem[_664 + 32] = address(arg3)
                if 1 >= mem[_664]:
                    revert with 'NH{q', 50
                mem[_664 + 64] = address(arg2)
                mem[_664 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_664 + 100] = _656
                mem[_664 + 132] = 64
                mem[_664 + 164] = mem[_664]
                idx = 0
                s = _664 + 32
                t = _664 + 196
                while idx < mem[_664]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(arg1))
                staticcall address(arg1).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _664 + (32 * mem[_664]) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _836 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _844 = mem[_836]
                require mem[_836] <= test266151307()
                require _836 + mem[_836] + 31 < _836 + return_data.size
                _852 = mem[_836 + mem[_836]]
                if mem[_836 + mem[_836]] > test266151307():
                    revert with 'NH{q', 65
                if _836 + ceil32(return_data.size) + floor32(mem[_836 + mem[_836]]) + 1 > test266151307() or floor32(mem[_836 + mem[_836]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _836 + ceil32(return_data.size) + floor32(mem[_836 + mem[_836]]) + 1
                mem[_836 + ceil32(return_data.size)] = _852
                require _844 + (32 * _852) + 32 <= return_data.size
                idx = 0
                s = _836 + _844 + 32
                t = _836 + ceil32(return_data.size) + 32
                while idx < _852:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if mem[_664] < 1:
                    revert with 'NH{q', 17
                if mem[_664] - 1 >= _852:
                    revert with 'NH{q', 50
                if not mem[(32 * mem[_664] - 1) + _836 + ceil32(return_data.size) + 32]:
                    revert with 0, 'SellEstimatedOutput is zero'
            else:
                _663 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                if 0 >= mem[_663]:
                    revert with 'NH{q', 50
                mem[_663 + 32] = address(arg3)
                if 1 >= mem[_663]:
                    revert with 'NH{q', 50
                mem[_663 + 64] = address(arg2)
                if 2 >= mem[_663]:
                    revert with 'NH{q', 50
                mem[_663 + 96] = address(arg4)
                mem[_663 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_663 + 132] = _656
                mem[_663 + 164] = 64
                mem[_663 + 196] = mem[_663]
                idx = 0
                s = _663 + 32
                t = _663 + 228
                while idx < mem[_663]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(arg1))
                staticcall address(arg1).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _663 + (32 * mem[_663]) + -mem[64] + 224]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _835 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _843 = mem[_835]
                require mem[_835] <= test266151307()
                require _835 + mem[_835] + 31 < _835 + return_data.size
                _851 = mem[_835 + mem[_835]]
                if mem[_835 + mem[_835]] > test266151307():
                    revert with 'NH{q', 65
                if _835 + ceil32(return_data.size) + floor32(mem[_835 + mem[_835]]) + 1 > test266151307() or floor32(mem[_835 + mem[_835]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _835 + ceil32(return_data.size) + floor32(mem[_835 + mem[_835]]) + 1
                mem[_835 + ceil32(return_data.size)] = _851
                require _843 + (32 * _851) + 32 <= return_data.size
                idx = 0
                s = _835 + _843 + 32
                t = _835 + ceil32(return_data.size) + 32
                while idx < _851:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if mem[_663] < 1:
                    revert with 'NH{q', 17
                if mem[_663] - 1 >= _851:
                    revert with 'NH{q', 50
                if not mem[(32 * mem[_663] - 1) + _835 + ceil32(return_data.size) + 32]:
                    revert with 0, 'SellEstimatedOutput is zero'
        else:
            _239 = mem[64]
            mem[mem[64]] = 3
            mem[64] = mem[64] + 128
            if 0 >= mem[_239]:
                revert with 'NH{q', 50
            mem[_239 + 32] = address(arg4)
            if 1 >= mem[_239]:
                revert with 'NH{q', 50
            mem[_239 + 64] = address(arg2)
            if 2 >= mem[_239]:
                revert with 'NH{q', 50
            mem[_239 + 96] = address(arg3)
            if block.timestamp > -301:
                revert with 'NH{q', 17
            mem[_239 + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[_239 + 132] = _228
            mem[_239 + 164] = 1
            mem[_239 + 196] = 160
            mem[_239 + 292] = mem[_239]
            idx = 0
            s = _239 + 32
            t = _239 + 324
            while idx < mem[_239]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_239 + 228] = this.address
            mem[_239 + 260] = block.timestamp + 300
            require ext_code.size(address(arg1))
            call address(arg1).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _239 + (32 * mem[_239]) + -mem[64] + 320]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _399 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _403 = mem[_399]
            require mem[_399] <= test266151307()
            require _399 + mem[_399] + 31 < _399 + return_data.size
            _407 = mem[_399 + mem[_399]]
            if mem[_399 + mem[_399]] > test266151307():
                revert with 'NH{q', 65
            if _399 + ceil32(return_data.size) + floor32(mem[_399 + mem[_399]]) + 1 > test266151307() or floor32(mem[_399 + mem[_399]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _399 + ceil32(return_data.size) + floor32(mem[_399 + mem[_399]]) + 1
            mem[_399 + ceil32(return_data.size)] = _407
            require _403 + (32 * _407) + 32 <= return_data.size
            idx = 0
            s = _399 + _403 + 32
            t = _399 + ceil32(return_data.size) + 32
            while idx < _407:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg3))
            staticcall address(arg3).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _627 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_627] == mem[_627]
            if not mem[_627]:
                revert with 0, 'BuyActualOutput is zero'
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg3))
            staticcall address(arg3).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _651 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _655 = mem[_651]
            require mem[_651] == mem[_651]
            if address(arg2) == address(arg4):
                _662 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if 0 >= mem[_662]:
                    revert with 'NH{q', 50
                mem[_662 + 32] = address(arg3)
                if 1 >= mem[_662]:
                    revert with 'NH{q', 50
                mem[_662 + 64] = address(arg2)
                mem[_662 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_662 + 100] = _655
                mem[_662 + 132] = 64
                mem[_662 + 164] = mem[_662]
                idx = 0
                s = _662 + 32
                t = _662 + 196
                while idx < mem[_662]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(arg1))
                staticcall address(arg1).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _662 + (32 * mem[_662]) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _834 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _842 = mem[_834]
                require mem[_834] <= test266151307()
                require _834 + mem[_834] + 31 < _834 + return_data.size
                _850 = mem[_834 + mem[_834]]
                if mem[_834 + mem[_834]] > test266151307():
                    revert with 'NH{q', 65
                if _834 + ceil32(return_data.size) + floor32(mem[_834 + mem[_834]]) + 1 > test266151307() or floor32(mem[_834 + mem[_834]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _834 + ceil32(return_data.size) + floor32(mem[_834 + mem[_834]]) + 1
                mem[_834 + ceil32(return_data.size)] = _850
                require _842 + (32 * _850) + 32 <= return_data.size
                idx = 0
                s = _834 + _842 + 32
                t = _834 + ceil32(return_data.size) + 32
                while idx < _850:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if mem[_662] < 1:
                    revert with 'NH{q', 17
                if mem[_662] - 1 >= _850:
                    revert with 'NH{q', 50
                if not mem[(32 * mem[_662] - 1) + _834 + ceil32(return_data.size) + 32]:
                    revert with 0, 'SellEstimatedOutput is zero'
            else:
                _661 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                if 0 >= mem[_661]:
                    revert with 'NH{q', 50
                mem[_661 + 32] = address(arg3)
                if 1 >= mem[_661]:
                    revert with 'NH{q', 50
                mem[_661 + 64] = address(arg2)
                if 2 >= mem[_661]:
                    revert with 'NH{q', 50
                mem[_661 + 96] = address(arg4)
                mem[_661 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_661 + 132] = _655
                mem[_661 + 164] = 64
                mem[_661 + 196] = mem[_661]
                idx = 0
                s = _661 + 32
                t = _661 + 228
                while idx < mem[_661]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(arg1))
                staticcall address(arg1).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _661 + (32 * mem[_661]) + -mem[64] + 224]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _833 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _841 = mem[_833]
                require mem[_833] <= test266151307()
                require _833 + mem[_833] + 31 < _833 + return_data.size
                _849 = mem[_833 + mem[_833]]
                if mem[_833 + mem[_833]] > test266151307():
                    revert with 'NH{q', 65
                if _833 + ceil32(return_data.size) + floor32(mem[_833 + mem[_833]]) + 1 > test266151307() or floor32(mem[_833 + mem[_833]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _833 + ceil32(return_data.size) + floor32(mem[_833 + mem[_833]]) + 1
                mem[_833 + ceil32(return_data.size)] = _849
                require _841 + (32 * _849) + 32 <= return_data.size
                idx = 0
                s = _833 + _841 + 32
                t = _833 + ceil32(return_data.size) + 32
                while idx < _849:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if mem[_661] < 1:
                    revert with 'NH{q', 17
                if mem[_661] - 1 >= _849:
                    revert with 'NH{q', 50
                if not mem[(32 * mem[_661] - 1) + _833 + ceil32(return_data.size) + 32]:
                    revert with 0, 'SellEstimatedOutput is zero'
    else:
        mem[ceil32(return_data.size) + 96] = 3
        mem[ceil32(return_data.size) + 128] = address(arg4)
        mem[ceil32(return_data.size) + 160] = address(arg2)
        mem[ceil32(return_data.size) + 192] = address(arg3)
        mem[ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 228] = ext_call.return_data[0]
        mem[ceil32(return_data.size) + 260] = 64
        mem[ceil32(return_data.size) + 292] = 3
        idx = 0
        s = ceil32(return_data.size) + 128
        t = ceil32(return_data.size) + 324
        while idx < 3:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(address(arg1))
        staticcall address(arg1).getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args ext_call.return_data[0], Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 224
        require return_data.size >= 32
        _85 = mem[ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28]
        require mem[ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] <= test266151307()
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 255 < ceil32(return_data.size) + return_data.size + 224
        _87 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224] > test266151307():
            revert with 'NH{q', 65
        if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 225 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 225
        mem[(2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]
        require _85 + (32 * _87) + 32 <= return_data.size
        idx = 0
        s = ceil32(return_data.size) + _85 + 256
        t = (2 * ceil32(return_data.size)) + 256
        while idx < _87:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if mem[ceil32(return_data.size) + 96] < 1:
            revert with 'NH{q', 17
        if mem[ceil32(return_data.size) + 96] - 1 >= _87:
            revert with 'NH{q', 50
        if not mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + (2 * ceil32(return_data.size)) + 256]:
            revert with 0, 'BuyEstimatedOutput is zero'
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg4))
        staticcall address(arg4).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _225 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _227 = mem[_225]
        require mem[_225] == mem[_225]
        mem[mem[64] + 4] = address(arg1)
        mem[mem[64] + 36] = _227
        require ext_code.size(address(arg2))
        call address(arg2).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), _227
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _233 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_233] == bool(mem[_233])
        if address(arg2) == address(arg4):
            _238 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if 0 >= mem[_238]:
                revert with 'NH{q', 50
            mem[_238 + 32] = address(arg2)
            if 1 >= mem[_238]:
                revert with 'NH{q', 50
            mem[_238 + 64] = address(arg3)
            if block.timestamp > -301:
                revert with 'NH{q', 17
            mem[_238 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[_238 + 100] = _227
            mem[_238 + 132] = 1
            mem[_238 + 164] = 160
            mem[_238 + 260] = mem[_238]
            idx = 0
            s = _238 + 32
            t = _238 + 292
            while idx < mem[_238]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_238 + 196] = this.address
            mem[_238 + 228] = block.timestamp + 300
            require ext_code.size(address(arg1))
            call address(arg1).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _238 + (32 * mem[_238]) + -mem[64] + 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _398 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _402 = mem[_398]
            require mem[_398] <= test266151307()
            require _398 + mem[_398] + 31 < _398 + return_data.size
            _406 = mem[_398 + mem[_398]]
            if mem[_398 + mem[_398]] > test266151307():
                revert with 'NH{q', 65
            if _398 + ceil32(return_data.size) + floor32(mem[_398 + mem[_398]]) + 1 > test266151307() or floor32(mem[_398 + mem[_398]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _398 + ceil32(return_data.size) + floor32(mem[_398 + mem[_398]]) + 1
            mem[_398 + ceil32(return_data.size)] = _406
            require _402 + (32 * _406) + 32 <= return_data.size
            idx = 0
            s = _398 + _402 + 32
            t = _398 + ceil32(return_data.size) + 32
            while idx < _406:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg3))
            staticcall address(arg3).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _626 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_626] == mem[_626]
            if not mem[_626]:
                revert with 0, 'BuyActualOutput is zero'
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg3))
            staticcall address(arg3).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _650 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _654 = mem[_650]
            require mem[_650] == mem[_650]
            if address(arg2) == address(arg4):
                _660 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if 0 >= mem[_660]:
                    revert with 'NH{q', 50
                mem[_660 + 32] = address(arg3)
                if 1 >= mem[_660]:
                    revert with 'NH{q', 50
                mem[_660 + 64] = address(arg2)
                mem[_660 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_660 + 100] = _654
                mem[_660 + 132] = 64
                mem[_660 + 164] = mem[_660]
                idx = 0
                s = _660 + 32
                t = _660 + 196
                while idx < mem[_660]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(arg1))
                staticcall address(arg1).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _660 + (32 * mem[_660]) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _832 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _840 = mem[_832]
                require mem[_832] <= test266151307()
                require _832 + mem[_832] + 31 < _832 + return_data.size
                _848 = mem[_832 + mem[_832]]
                if mem[_832 + mem[_832]] > test266151307():
                    revert with 'NH{q', 65
                if _832 + ceil32(return_data.size) + floor32(mem[_832 + mem[_832]]) + 1 > test266151307() or floor32(mem[_832 + mem[_832]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _832 + ceil32(return_data.size) + floor32(mem[_832 + mem[_832]]) + 1
                mem[_832 + ceil32(return_data.size)] = _848
                require _840 + (32 * _848) + 32 <= return_data.size
                idx = 0
                s = _832 + _840 + 32
                t = _832 + ceil32(return_data.size) + 32
                while idx < _848:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if mem[_660] < 1:
                    revert with 'NH{q', 17
                if mem[_660] - 1 >= _848:
                    revert with 'NH{q', 50
                if not mem[(32 * mem[_660] - 1) + _832 + ceil32(return_data.size) + 32]:
                    revert with 0, 'SellEstimatedOutput is zero'
            else:
                _659 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                if 0 >= mem[_659]:
                    revert with 'NH{q', 50
                mem[_659 + 32] = address(arg3)
                if 1 >= mem[_659]:
                    revert with 'NH{q', 50
                mem[_659 + 64] = address(arg2)
                if 2 >= mem[_659]:
                    revert with 'NH{q', 50
                mem[_659 + 96] = address(arg4)
                mem[_659 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_659 + 132] = _654
                mem[_659 + 164] = 64
                mem[_659 + 196] = mem[_659]
                idx = 0
                s = _659 + 32
                t = _659 + 228
                while idx < mem[_659]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(arg1))
                staticcall address(arg1).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _659 + (32 * mem[_659]) + -mem[64] + 224]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _831 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _839 = mem[_831]
                require mem[_831] <= test266151307()
                require _831 + mem[_831] + 31 < _831 + return_data.size
                _847 = mem[_831 + mem[_831]]
                if mem[_831 + mem[_831]] > test266151307():
                    revert with 'NH{q', 65
                if _831 + ceil32(return_data.size) + floor32(mem[_831 + mem[_831]]) + 1 > test266151307() or floor32(mem[_831 + mem[_831]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _831 + ceil32(return_data.size) + floor32(mem[_831 + mem[_831]]) + 1
                mem[_831 + ceil32(return_data.size)] = _847
                require _839 + (32 * _847) + 32 <= return_data.size
                idx = 0
                s = _831 + _839 + 32
                t = _831 + ceil32(return_data.size) + 32
                while idx < _847:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if mem[_659] < 1:
                    revert with 'NH{q', 17
                if mem[_659] - 1 >= _847:
                    revert with 'NH{q', 50
                if not mem[(32 * mem[_659] - 1) + _831 + ceil32(return_data.size) + 32]:
                    revert with 0, 'SellEstimatedOutput is zero'
        else:
            _237 = mem[64]
            mem[mem[64]] = 3
            mem[64] = mem[64] + 128
            if 0 >= mem[_237]:
                revert with 'NH{q', 50
            mem[_237 + 32] = address(arg4)
            if 1 >= mem[_237]:
                revert with 'NH{q', 50
            mem[_237 + 64] = address(arg2)
            if 2 >= mem[_237]:
                revert with 'NH{q', 50
            mem[_237 + 96] = address(arg3)
            if block.timestamp > -301:
                revert with 'NH{q', 17
            mem[_237 + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[_237 + 132] = _227
            mem[_237 + 164] = 1
            mem[_237 + 196] = 160
            mem[_237 + 292] = mem[_237]
            idx = 0
            s = _237 + 32
            t = _237 + 324
            while idx < mem[_237]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_237 + 228] = this.address
            mem[_237 + 260] = block.timestamp + 300
            require ext_code.size(address(arg1))
            call address(arg1).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _237 + (32 * mem[_237]) + -mem[64] + 320]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _397 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _401 = mem[_397]
            require mem[_397] <= test266151307()
            require _397 + mem[_397] + 31 < _397 + return_data.size
            _405 = mem[_397 + mem[_397]]
            if mem[_397 + mem[_397]] > test266151307():
                revert with 'NH{q', 65
            if _397 + ceil32(return_data.size) + floor32(mem[_397 + mem[_397]]) + 1 > test266151307() or floor32(mem[_397 + mem[_397]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _397 + ceil32(return_data.size) + floor32(mem[_397 + mem[_397]]) + 1
            mem[_397 + ceil32(return_data.size)] = _405
            require _401 + (32 * _405) + 32 <= return_data.size
            idx = 0
            s = _397 + _401 + 32
            t = _397 + ceil32(return_data.size) + 32
            while idx < _405:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg3))
            staticcall address(arg3).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _625 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_625] == mem[_625]
            if not mem[_625]:
                revert with 0, 'BuyActualOutput is zero'
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg3))
            staticcall address(arg3).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _649 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _653 = mem[_649]
            require mem[_649] == mem[_649]
            if address(arg2) == address(arg4):
                _658 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if 0 >= mem[_658]:
                    revert with 'NH{q', 50
                mem[_658 + 32] = address(arg3)
                if 1 >= mem[_658]:
                    revert with 'NH{q', 50
                mem[_658 + 64] = address(arg2)
                mem[_658 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_658 + 100] = _653
                mem[_658 + 132] = 64
                mem[_658 + 164] = mem[_658]
                idx = 0
                s = _658 + 32
                t = _658 + 196
                while idx < mem[_658]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(arg1))
                staticcall address(arg1).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _658 + (32 * mem[_658]) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _830 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _838 = mem[_830]
                require mem[_830] <= test266151307()
                require _830 + mem[_830] + 31 < _830 + return_data.size
                _846 = mem[_830 + mem[_830]]
                if mem[_830 + mem[_830]] > test266151307():
                    revert with 'NH{q', 65
                if _830 + ceil32(return_data.size) + floor32(mem[_830 + mem[_830]]) + 1 > test266151307() or floor32(mem[_830 + mem[_830]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _830 + ceil32(return_data.size) + floor32(mem[_830 + mem[_830]]) + 1
                mem[_830 + ceil32(return_data.size)] = _846
                require _838 + (32 * _846) + 32 <= return_data.size
                idx = 0
                s = _830 + _838 + 32
                t = _830 + ceil32(return_data.size) + 32
                while idx < _846:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if mem[_658] < 1:
                    revert with 'NH{q', 17
                if mem[_658] - 1 >= _846:
                    revert with 'NH{q', 50
                if not mem[(32 * mem[_658] - 1) + _830 + ceil32(return_data.size) + 32]:
                    revert with 0, 'SellEstimatedOutput is zero'
            else:
                _657 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                if 0 >= mem[_657]:
                    revert with 'NH{q', 50
                mem[_657 + 32] = address(arg3)
                if 1 >= mem[_657]:
                    revert with 'NH{q', 50
                mem[_657 + 64] = address(arg2)
                if 2 >= mem[_657]:
                    revert with 'NH{q', 50
                mem[_657 + 96] = address(arg4)
                mem[_657 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_657 + 132] = _653
                mem[_657 + 164] = 64
                mem[_657 + 196] = mem[_657]
                idx = 0
                s = _657 + 32
                t = _657 + 228
                while idx < mem[_657]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(arg1))
                staticcall address(arg1).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _657 + (32 * mem[_657]) + -mem[64] + 224]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _829 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _837 = mem[_829]
                require mem[_829] <= test266151307()
                require _829 + mem[_829] + 31 < _829 + return_data.size
                _845 = mem[_829 + mem[_829]]
                if mem[_829 + mem[_829]] > test266151307():
                    revert with 'NH{q', 65
                if _829 + ceil32(return_data.size) + floor32(mem[_829 + mem[_829]]) + 1 > test266151307() or floor32(mem[_829 + mem[_829]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _829 + ceil32(return_data.size) + floor32(mem[_829 + mem[_829]]) + 1
                mem[_829 + ceil32(return_data.size)] = _845
                require _837 + (32 * _845) + 32 <= return_data.size
                idx = 0
                s = _829 + _837 + 32
                t = _829 + ceil32(return_data.size) + 32
                while idx < _845:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if mem[_657] < 1:
                    revert with 'NH{q', 17
                if mem[_657] - 1 >= _845:
                    revert with 'NH{q', 50
                if not mem[(32 * mem[_657] - 1) + _829 + ceil32(return_data.size) + 32]:
                    revert with 0, 'SellEstimatedOutput is zero'
    revert with 0, 'estimationcomplete'
}



}
