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
        _216 = mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + (2 * ceil32(return_data.size)) + 224]
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
            _732 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _736 = mem[_732]
            require mem[_732] == mem[_732]
            if not mem[_732]:
                revert with 0, 'BuyActualOutput is zero'
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg3))
            staticcall address(arg3).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _756 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _760 = mem[_756]
            require mem[_756] == mem[_756]
            if address(arg2) == address(arg4):
                _768 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if 0 >= mem[_768]:
                    revert with 'NH{q', 50
                mem[_768 + 32] = address(arg3)
                if 1 >= mem[_768]:
                    revert with 'NH{q', 50
                mem[_768 + 64] = address(arg2)
                mem[_768 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_768 + 100] = _760
                mem[_768 + 132] = 64
                mem[_768 + 164] = mem[_768]
                idx = 0
                s = _768 + 32
                t = _768 + 196
                while idx < mem[_768]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(arg1))
                staticcall address(arg1).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _768 + (32 * mem[_768]) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1112 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1120 = mem[_1112]
                require mem[_1112] <= test266151307()
                require _1112 + mem[_1112] + 31 < _1112 + return_data.size
                _1128 = mem[_1112 + mem[_1112]]
                if mem[_1112 + mem[_1112]] > test266151307():
                    revert with 'NH{q', 65
                if _1112 + ceil32(return_data.size) + floor32(mem[_1112 + mem[_1112]]) + 1 > test266151307() or floor32(mem[_1112 + mem[_1112]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _1112 + ceil32(return_data.size) + floor32(mem[_1112 + mem[_1112]]) + 1
                mem[_1112 + ceil32(return_data.size)] = _1128
                require _1120 + (32 * _1128) + 32 <= return_data.size
                idx = 0
                s = _1112 + _1120 + 32
                t = _1112 + ceil32(return_data.size) + 32
                while idx < _1128:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if mem[_768] < 1:
                    revert with 'NH{q', 17
                if mem[_768] - 1 >= _1128:
                    revert with 'NH{q', 50
                _1608 = mem[(32 * mem[_768] - 1) + _1112 + ceil32(return_data.size) + 32]
                if not mem[(32 * mem[_768] - 1) + _1112 + ceil32(return_data.size) + 32]:
                    revert with 0, 'SellEstimatedOutput is zero'
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg3))
                staticcall address(arg3).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1648 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1656 = mem[_1648]
                require mem[_1648] == mem[_1648]
                mem[mem[64] + 4] = address(arg1)
                mem[mem[64] + 36] = _1656
                require ext_code.size(address(arg3))
                call address(arg3).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), _1656
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1680 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1680] == bool(mem[_1680])
                if address(arg2) == address(arg4):
                    _1704 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if 0 >= mem[_1704]:
                        revert with 'NH{q', 50
                    mem[_1704 + 32] = address(arg3)
                    if 1 >= mem[_1704]:
                        revert with 'NH{q', 50
                    mem[_1704 + 64] = address(arg2)
                    if block.timestamp > -301:
                        revert with 'NH{q', 17
                    mem[_1704 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_1704 + 100] = _1656
                    mem[_1704 + 132] = 1
                    mem[_1704 + 164] = 160
                    mem[_1704 + 260] = mem[_1704]
                    idx = 0
                    s = _1704 + 32
                    t = _1704 + 292
                    while idx < mem[_1704]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1704 + 196] = this.address
                    mem[_1704 + 228] = block.timestamp + 300
                    require ext_code.size(address(arg1))
                    call address(arg1).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1704 + (32 * mem[_1704]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2064 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2080 = mem[_2064]
                    require mem[_2064] <= test266151307()
                    require _2064 + mem[_2064] + 31 < _2064 + return_data.size
                    _2096 = mem[_2064 + mem[_2064]]
                    if mem[_2064 + mem[_2064]] > test266151307():
                        revert with 'NH{q', 65
                    if _2064 + ceil32(return_data.size) + floor32(mem[_2064 + mem[_2064]]) + 1 > test266151307() or floor32(mem[_2064 + mem[_2064]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _2064 + ceil32(return_data.size) + floor32(mem[_2064 + mem[_2064]]) + 1
                    mem[_2064 + ceil32(return_data.size)] = _2096
                    require _2080 + (32 * _2096) + 32 <= return_data.size
                    idx = 0
                    s = _2064 + _2080 + 32
                    t = _2064 + ceil32(return_data.size) + 32
                    while idx < _2096:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(arg4))
                    staticcall address(arg4).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2320 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2320] == mem[_2320]
                    if not mem[_2320]:
                        revert with 0, 'SellActualOutput is zero'
                    revert with 0, _216, _736, _1608, mem[_2320]
                _1703 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                if 0 >= mem[_1703]:
                    revert with 'NH{q', 50
                mem[_1703 + 32] = address(arg3)
                if 1 >= mem[_1703]:
                    revert with 'NH{q', 50
                mem[_1703 + 64] = address(arg2)
                if 2 >= mem[_1703]:
                    revert with 'NH{q', 50
                mem[_1703 + 96] = address(arg4)
                if block.timestamp > -301:
                    revert with 'NH{q', 17
                mem[_1703 + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_1703 + 132] = _1656
                mem[_1703 + 164] = 1
                mem[_1703 + 196] = 160
                mem[_1703 + 292] = mem[_1703]
                idx = 0
                s = _1703 + 32
                t = _1703 + 324
                while idx < mem[_1703]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1703 + 228] = this.address
                mem[_1703 + 260] = block.timestamp + 300
                require ext_code.size(address(arg1))
                call address(arg1).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _1703 + (32 * mem[_1703]) + -mem[64] + 320]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2063 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2079 = mem[_2063]
                require mem[_2063] <= test266151307()
                require _2063 + mem[_2063] + 31 < _2063 + return_data.size
                _2095 = mem[_2063 + mem[_2063]]
                if mem[_2063 + mem[_2063]] > test266151307():
                    revert with 'NH{q', 65
                if _2063 + ceil32(return_data.size) + floor32(mem[_2063 + mem[_2063]]) + 1 > test266151307() or floor32(mem[_2063 + mem[_2063]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _2063 + ceil32(return_data.size) + floor32(mem[_2063 + mem[_2063]]) + 1
                mem[_2063 + ceil32(return_data.size)] = _2095
                require _2079 + (32 * _2095) + 32 <= return_data.size
                idx = 0
                s = _2063 + _2079 + 32
                t = _2063 + ceil32(return_data.size) + 32
                while idx < _2095:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg4))
                staticcall address(arg4).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2319 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2319] == mem[_2319]
                if not mem[_2319]:
                    revert with 0, 'SellActualOutput is zero'
                revert with 0, _216, _736, _1608, mem[_2319]
            _767 = mem[64]
            mem[mem[64]] = 3
            mem[64] = mem[64] + 128
            if 0 >= mem[_767]:
                revert with 'NH{q', 50
            mem[_767 + 32] = address(arg3)
            if 1 >= mem[_767]:
                revert with 'NH{q', 50
            mem[_767 + 64] = address(arg2)
            if 2 >= mem[_767]:
                revert with 'NH{q', 50
            mem[_767 + 96] = address(arg4)
            mem[_767 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_767 + 132] = _760
            mem[_767 + 164] = 64
            mem[_767 + 196] = mem[_767]
            idx = 0
            s = _767 + 32
            t = _767 + 228
            while idx < mem[_767]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(address(arg1))
            staticcall address(arg1).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _767 + (32 * mem[_767]) + -mem[64] + 224]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1111 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1119 = mem[_1111]
            require mem[_1111] <= test266151307()
            require _1111 + mem[_1111] + 31 < _1111 + return_data.size
            _1127 = mem[_1111 + mem[_1111]]
            if mem[_1111 + mem[_1111]] > test266151307():
                revert with 'NH{q', 65
            if _1111 + ceil32(return_data.size) + floor32(mem[_1111 + mem[_1111]]) + 1 > test266151307() or floor32(mem[_1111 + mem[_1111]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _1111 + ceil32(return_data.size) + floor32(mem[_1111 + mem[_1111]]) + 1
            mem[_1111 + ceil32(return_data.size)] = _1127
            require _1119 + (32 * _1127) + 32 <= return_data.size
            idx = 0
            s = _1111 + _1119 + 32
            t = _1111 + ceil32(return_data.size) + 32
            while idx < _1127:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if mem[_767] < 1:
                revert with 'NH{q', 17
            if mem[_767] - 1 >= _1127:
                revert with 'NH{q', 50
            _1607 = mem[(32 * mem[_767] - 1) + _1111 + ceil32(return_data.size) + 32]
            if not mem[(32 * mem[_767] - 1) + _1111 + ceil32(return_data.size) + 32]:
                revert with 0, 'SellEstimatedOutput is zero'
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg3))
            staticcall address(arg3).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1647 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1655 = mem[_1647]
            require mem[_1647] == mem[_1647]
            mem[mem[64] + 4] = address(arg1)
            mem[mem[64] + 36] = _1655
            require ext_code.size(address(arg3))
            call address(arg3).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg1), _1655
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1679 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1679] == bool(mem[_1679])
            if address(arg2) == address(arg4):
                _1702 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if 0 >= mem[_1702]:
                    revert with 'NH{q', 50
                mem[_1702 + 32] = address(arg3)
                if 1 >= mem[_1702]:
                    revert with 'NH{q', 50
                mem[_1702 + 64] = address(arg2)
                if block.timestamp > -301:
                    revert with 'NH{q', 17
                mem[_1702 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_1702 + 100] = _1655
                mem[_1702 + 132] = 1
                mem[_1702 + 164] = 160
                mem[_1702 + 260] = mem[_1702]
                idx = 0
                s = _1702 + 32
                t = _1702 + 292
                while idx < mem[_1702]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1702 + 196] = this.address
                mem[_1702 + 228] = block.timestamp + 300
                require ext_code.size(address(arg1))
                call address(arg1).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _1702 + (32 * mem[_1702]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2062 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2078 = mem[_2062]
                require mem[_2062] <= test266151307()
                require _2062 + mem[_2062] + 31 < _2062 + return_data.size
                _2094 = mem[_2062 + mem[_2062]]
                if mem[_2062 + mem[_2062]] > test266151307():
                    revert with 'NH{q', 65
                if _2062 + ceil32(return_data.size) + floor32(mem[_2062 + mem[_2062]]) + 1 > test266151307() or floor32(mem[_2062 + mem[_2062]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _2062 + ceil32(return_data.size) + floor32(mem[_2062 + mem[_2062]]) + 1
                mem[_2062 + ceil32(return_data.size)] = _2094
                require _2078 + (32 * _2094) + 32 <= return_data.size
                idx = 0
                s = _2062 + _2078 + 32
                t = _2062 + ceil32(return_data.size) + 32
                while idx < _2094:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg4))
                staticcall address(arg4).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2318 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2318] == mem[_2318]
                if not mem[_2318]:
                    revert with 0, 'SellActualOutput is zero'
                revert with 0, _216, _736, _1607, mem[_2318]
            _1701 = mem[64]
            mem[mem[64]] = 3
            mem[64] = mem[64] + 128
            if 0 >= mem[_1701]:
                revert with 'NH{q', 50
            mem[_1701 + 32] = address(arg3)
            if 1 >= mem[_1701]:
                revert with 'NH{q', 50
            mem[_1701 + 64] = address(arg2)
            if 2 >= mem[_1701]:
                revert with 'NH{q', 50
            mem[_1701 + 96] = address(arg4)
            if block.timestamp > -301:
                revert with 'NH{q', 17
            mem[_1701 + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[_1701 + 132] = _1655
            mem[_1701 + 164] = 1
            mem[_1701 + 196] = 160
            mem[_1701 + 292] = mem[_1701]
            idx = 0
            s = _1701 + 32
            t = _1701 + 324
            while idx < mem[_1701]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1701 + 228] = this.address
            mem[_1701 + 260] = block.timestamp + 300
            require ext_code.size(address(arg1))
            call address(arg1).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _1701 + (32 * mem[_1701]) + -mem[64] + 320]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2061 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2077 = mem[_2061]
            require mem[_2061] <= test266151307()
            require _2061 + mem[_2061] + 31 < _2061 + return_data.size
            _2093 = mem[_2061 + mem[_2061]]
            if mem[_2061 + mem[_2061]] > test266151307():
                revert with 'NH{q', 65
            if _2061 + ceil32(return_data.size) + floor32(mem[_2061 + mem[_2061]]) + 1 > test266151307() or floor32(mem[_2061 + mem[_2061]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _2061 + ceil32(return_data.size) + floor32(mem[_2061 + mem[_2061]]) + 1
            mem[_2061 + ceil32(return_data.size)] = _2093
            require _2077 + (32 * _2093) + 32 <= return_data.size
            idx = 0
            s = _2061 + _2077 + 32
            t = _2061 + ceil32(return_data.size) + 32
            while idx < _2093:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg4))
            staticcall address(arg4).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2317 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2317] == mem[_2317]
            if not mem[_2317]:
                revert with 0, 'SellActualOutput is zero'
            revert with 0, _216, _736, _1607, mem[_2317]
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
        _731 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _735 = mem[_731]
        require mem[_731] == mem[_731]
        if not mem[_731]:
            revert with 0, 'BuyActualOutput is zero'
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg3))
        staticcall address(arg3).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _755 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _759 = mem[_755]
        require mem[_755] == mem[_755]
        if address(arg2) == address(arg4):
            _766 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if 0 >= mem[_766]:
                revert with 'NH{q', 50
            mem[_766 + 32] = address(arg3)
            if 1 >= mem[_766]:
                revert with 'NH{q', 50
            mem[_766 + 64] = address(arg2)
            mem[_766 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_766 + 100] = _759
            mem[_766 + 132] = 64
            mem[_766 + 164] = mem[_766]
            idx = 0
            s = _766 + 32
            t = _766 + 196
            while idx < mem[_766]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(address(arg1))
            staticcall address(arg1).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _766 + (32 * mem[_766]) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1110 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1118 = mem[_1110]
            require mem[_1110] <= test266151307()
            require _1110 + mem[_1110] + 31 < _1110 + return_data.size
            _1126 = mem[_1110 + mem[_1110]]
            if mem[_1110 + mem[_1110]] > test266151307():
                revert with 'NH{q', 65
            if _1110 + ceil32(return_data.size) + floor32(mem[_1110 + mem[_1110]]) + 1 > test266151307() or floor32(mem[_1110 + mem[_1110]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _1110 + ceil32(return_data.size) + floor32(mem[_1110 + mem[_1110]]) + 1
            mem[_1110 + ceil32(return_data.size)] = _1126
            require _1118 + (32 * _1126) + 32 <= return_data.size
            idx = 0
            s = _1110 + _1118 + 32
            t = _1110 + ceil32(return_data.size) + 32
            while idx < _1126:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if mem[_766] < 1:
                revert with 'NH{q', 17
            if mem[_766] - 1 >= _1126:
                revert with 'NH{q', 50
            _1606 = mem[(32 * mem[_766] - 1) + _1110 + ceil32(return_data.size) + 32]
            if not mem[(32 * mem[_766] - 1) + _1110 + ceil32(return_data.size) + 32]:
                revert with 0, 'SellEstimatedOutput is zero'
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg3))
            staticcall address(arg3).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1646 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1654 = mem[_1646]
            require mem[_1646] == mem[_1646]
            mem[mem[64] + 4] = address(arg1)
            mem[mem[64] + 36] = _1654
            require ext_code.size(address(arg3))
            call address(arg3).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg1), _1654
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1678 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1678] == bool(mem[_1678])
            if address(arg2) == address(arg4):
                _1700 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if 0 >= mem[_1700]:
                    revert with 'NH{q', 50
                mem[_1700 + 32] = address(arg3)
                if 1 >= mem[_1700]:
                    revert with 'NH{q', 50
                mem[_1700 + 64] = address(arg2)
                if block.timestamp > -301:
                    revert with 'NH{q', 17
                mem[_1700 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_1700 + 100] = _1654
                mem[_1700 + 132] = 1
                mem[_1700 + 164] = 160
                mem[_1700 + 260] = mem[_1700]
                idx = 0
                s = _1700 + 32
                t = _1700 + 292
                while idx < mem[_1700]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1700 + 196] = this.address
                mem[_1700 + 228] = block.timestamp + 300
                require ext_code.size(address(arg1))
                call address(arg1).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _1700 + (32 * mem[_1700]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2060 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2076 = mem[_2060]
                require mem[_2060] <= test266151307()
                require _2060 + mem[_2060] + 31 < _2060 + return_data.size
                _2092 = mem[_2060 + mem[_2060]]
                if mem[_2060 + mem[_2060]] > test266151307():
                    revert with 'NH{q', 65
                if _2060 + ceil32(return_data.size) + floor32(mem[_2060 + mem[_2060]]) + 1 > test266151307() or floor32(mem[_2060 + mem[_2060]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _2060 + ceil32(return_data.size) + floor32(mem[_2060 + mem[_2060]]) + 1
                mem[_2060 + ceil32(return_data.size)] = _2092
                require _2076 + (32 * _2092) + 32 <= return_data.size
                idx = 0
                s = _2060 + _2076 + 32
                t = _2060 + ceil32(return_data.size) + 32
                while idx < _2092:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg4))
                staticcall address(arg4).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2316 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2316] == mem[_2316]
                if not mem[_2316]:
                    revert with 0, 'SellActualOutput is zero'
                revert with 0, _216, _735, _1606, mem[_2316]
            _1699 = mem[64]
            mem[mem[64]] = 3
            mem[64] = mem[64] + 128
            if 0 >= mem[_1699]:
                revert with 'NH{q', 50
            mem[_1699 + 32] = address(arg3)
            if 1 >= mem[_1699]:
                revert with 'NH{q', 50
            mem[_1699 + 64] = address(arg2)
            if 2 >= mem[_1699]:
                revert with 'NH{q', 50
            mem[_1699 + 96] = address(arg4)
            if block.timestamp > -301:
                revert with 'NH{q', 17
            mem[_1699 + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[_1699 + 132] = _1654
            mem[_1699 + 164] = 1
            mem[_1699 + 196] = 160
            mem[_1699 + 292] = mem[_1699]
            idx = 0
            s = _1699 + 32
            t = _1699 + 324
            while idx < mem[_1699]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1699 + 228] = this.address
            mem[_1699 + 260] = block.timestamp + 300
            require ext_code.size(address(arg1))
            call address(arg1).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _1699 + (32 * mem[_1699]) + -mem[64] + 320]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2059 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2075 = mem[_2059]
            require mem[_2059] <= test266151307()
            require _2059 + mem[_2059] + 31 < _2059 + return_data.size
            _2091 = mem[_2059 + mem[_2059]]
            if mem[_2059 + mem[_2059]] > test266151307():
                revert with 'NH{q', 65
            if _2059 + ceil32(return_data.size) + floor32(mem[_2059 + mem[_2059]]) + 1 > test266151307() or floor32(mem[_2059 + mem[_2059]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _2059 + ceil32(return_data.size) + floor32(mem[_2059 + mem[_2059]]) + 1
            mem[_2059 + ceil32(return_data.size)] = _2091
            require _2075 + (32 * _2091) + 32 <= return_data.size
            idx = 0
            s = _2059 + _2075 + 32
            t = _2059 + ceil32(return_data.size) + 32
            while idx < _2091:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg4))
            staticcall address(arg4).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2315 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2315] == mem[_2315]
            if not mem[_2315]:
                revert with 0, 'SellActualOutput is zero'
            revert with 0, _216, _735, _1606, mem[_2315]
        _765 = mem[64]
        mem[mem[64]] = 3
        mem[64] = mem[64] + 128
        if 0 >= mem[_765]:
            revert with 'NH{q', 50
        mem[_765 + 32] = address(arg3)
        if 1 >= mem[_765]:
            revert with 'NH{q', 50
        mem[_765 + 64] = address(arg2)
        if 2 >= mem[_765]:
            revert with 'NH{q', 50
        mem[_765 + 96] = address(arg4)
        mem[_765 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_765 + 132] = _759
        mem[_765 + 164] = 64
        mem[_765 + 196] = mem[_765]
        idx = 0
        s = _765 + 32
        t = _765 + 228
        while idx < mem[_765]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(address(arg1))
        staticcall address(arg1).mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _765 + (32 * mem[_765]) + -mem[64] + 224]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1109 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1117 = mem[_1109]
        require mem[_1109] <= test266151307()
        require _1109 + mem[_1109] + 31 < _1109 + return_data.size
        _1125 = mem[_1109 + mem[_1109]]
        if mem[_1109 + mem[_1109]] > test266151307():
            revert with 'NH{q', 65
        if _1109 + ceil32(return_data.size) + floor32(mem[_1109 + mem[_1109]]) + 1 > test266151307() or floor32(mem[_1109 + mem[_1109]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _1109 + ceil32(return_data.size) + floor32(mem[_1109 + mem[_1109]]) + 1
        mem[_1109 + ceil32(return_data.size)] = _1125
        require _1117 + (32 * _1125) + 32 <= return_data.size
        idx = 0
        s = _1109 + _1117 + 32
        t = _1109 + ceil32(return_data.size) + 32
        while idx < _1125:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if mem[_765] < 1:
            revert with 'NH{q', 17
        if mem[_765] - 1 >= _1125:
            revert with 'NH{q', 50
        _1605 = mem[(32 * mem[_765] - 1) + _1109 + ceil32(return_data.size) + 32]
        if not mem[(32 * mem[_765] - 1) + _1109 + ceil32(return_data.size) + 32]:
            revert with 0, 'SellEstimatedOutput is zero'
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg3))
        staticcall address(arg3).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1645 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1653 = mem[_1645]
        require mem[_1645] == mem[_1645]
        mem[mem[64] + 4] = address(arg1)
        mem[mem[64] + 36] = _1653
        require ext_code.size(address(arg3))
        call address(arg3).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), _1653
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1677 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1677] == bool(mem[_1677])
        if address(arg2) == address(arg4):
            _1698 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if 0 >= mem[_1698]:
                revert with 'NH{q', 50
            mem[_1698 + 32] = address(arg3)
            if 1 >= mem[_1698]:
                revert with 'NH{q', 50
            mem[_1698 + 64] = address(arg2)
            if block.timestamp > -301:
                revert with 'NH{q', 17
            mem[_1698 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[_1698 + 100] = _1653
            mem[_1698 + 132] = 1
            mem[_1698 + 164] = 160
            mem[_1698 + 260] = mem[_1698]
            idx = 0
            s = _1698 + 32
            t = _1698 + 292
            while idx < mem[_1698]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1698 + 196] = this.address
            mem[_1698 + 228] = block.timestamp + 300
            require ext_code.size(address(arg1))
            call address(arg1).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _1698 + (32 * mem[_1698]) + -mem[64] + 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2058 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2074 = mem[_2058]
            require mem[_2058] <= test266151307()
            require _2058 + mem[_2058] + 31 < _2058 + return_data.size
            _2090 = mem[_2058 + mem[_2058]]
            if mem[_2058 + mem[_2058]] > test266151307():
                revert with 'NH{q', 65
            if _2058 + ceil32(return_data.size) + floor32(mem[_2058 + mem[_2058]]) + 1 > test266151307() or floor32(mem[_2058 + mem[_2058]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _2058 + ceil32(return_data.size) + floor32(mem[_2058 + mem[_2058]]) + 1
            mem[_2058 + ceil32(return_data.size)] = _2090
            require _2074 + (32 * _2090) + 32 <= return_data.size
            idx = 0
            s = _2058 + _2074 + 32
            t = _2058 + ceil32(return_data.size) + 32
            while idx < _2090:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg4))
            staticcall address(arg4).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2314 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2314] == mem[_2314]
            if not mem[_2314]:
                revert with 0, 'SellActualOutput is zero'
            revert with 0, _216, _735, _1605, mem[_2314]
        _1697 = mem[64]
        mem[mem[64]] = 3
        mem[64] = mem[64] + 128
        if 0 >= mem[_1697]:
            revert with 'NH{q', 50
        mem[_1697 + 32] = address(arg3)
        if 1 >= mem[_1697]:
            revert with 'NH{q', 50
        mem[_1697 + 64] = address(arg2)
        if 2 >= mem[_1697]:
            revert with 'NH{q', 50
        mem[_1697 + 96] = address(arg4)
        if block.timestamp > -301:
            revert with 'NH{q', 17
        mem[_1697 + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[_1697 + 132] = _1653
        mem[_1697 + 164] = 1
        mem[_1697 + 196] = 160
        mem[_1697 + 292] = mem[_1697]
        idx = 0
        s = _1697 + 32
        t = _1697 + 324
        while idx < mem[_1697]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_1697 + 228] = this.address
        mem[_1697 + 260] = block.timestamp + 300
        require ext_code.size(address(arg1))
        call address(arg1).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _1697 + (32 * mem[_1697]) + -mem[64] + 320]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2057 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _2073 = mem[_2057]
        require mem[_2057] <= test266151307()
        require _2057 + mem[_2057] + 31 < _2057 + return_data.size
        _2089 = mem[_2057 + mem[_2057]]
        if mem[_2057 + mem[_2057]] > test266151307():
            revert with 'NH{q', 65
        if _2057 + ceil32(return_data.size) + floor32(mem[_2057 + mem[_2057]]) + 1 > test266151307() or floor32(mem[_2057 + mem[_2057]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _2057 + ceil32(return_data.size) + floor32(mem[_2057 + mem[_2057]]) + 1
        mem[_2057 + ceil32(return_data.size)] = _2089
        require _2073 + (32 * _2089) + 32 <= return_data.size
        idx = 0
        s = _2057 + _2073 + 32
        t = _2057 + ceil32(return_data.size) + 32
        while idx < _2089:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg4))
        staticcall address(arg4).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2313 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_2313] == mem[_2313]
        if not mem[_2313]:
            revert with 0, 'SellActualOutput is zero'
        revert with 0, _216, _735, _1605, mem[_2313]
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
    _215 = mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + (2 * ceil32(return_data.size)) + 256]
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
        _730 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _734 = mem[_730]
        require mem[_730] == mem[_730]
        if not mem[_730]:
            revert with 0, 'BuyActualOutput is zero'
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg3))
        staticcall address(arg3).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _754 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _758 = mem[_754]
        require mem[_754] == mem[_754]
        if address(arg2) == address(arg4):
            _764 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if 0 >= mem[_764]:
                revert with 'NH{q', 50
            mem[_764 + 32] = address(arg3)
            if 1 >= mem[_764]:
                revert with 'NH{q', 50
            mem[_764 + 64] = address(arg2)
            mem[_764 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_764 + 100] = _758
            mem[_764 + 132] = 64
            mem[_764 + 164] = mem[_764]
            idx = 0
            s = _764 + 32
            t = _764 + 196
            while idx < mem[_764]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(address(arg1))
            staticcall address(arg1).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _764 + (32 * mem[_764]) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1108 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1116 = mem[_1108]
            require mem[_1108] <= test266151307()
            require _1108 + mem[_1108] + 31 < _1108 + return_data.size
            _1124 = mem[_1108 + mem[_1108]]
            if mem[_1108 + mem[_1108]] > test266151307():
                revert with 'NH{q', 65
            if _1108 + ceil32(return_data.size) + floor32(mem[_1108 + mem[_1108]]) + 1 > test266151307() or floor32(mem[_1108 + mem[_1108]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _1108 + ceil32(return_data.size) + floor32(mem[_1108 + mem[_1108]]) + 1
            mem[_1108 + ceil32(return_data.size)] = _1124
            require _1116 + (32 * _1124) + 32 <= return_data.size
            idx = 0
            s = _1108 + _1116 + 32
            t = _1108 + ceil32(return_data.size) + 32
            while idx < _1124:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if mem[_764] < 1:
                revert with 'NH{q', 17
            if mem[_764] - 1 >= _1124:
                revert with 'NH{q', 50
            _1604 = mem[(32 * mem[_764] - 1) + _1108 + ceil32(return_data.size) + 32]
            if not mem[(32 * mem[_764] - 1) + _1108 + ceil32(return_data.size) + 32]:
                revert with 0, 'SellEstimatedOutput is zero'
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg3))
            staticcall address(arg3).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1644 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1652 = mem[_1644]
            require mem[_1644] == mem[_1644]
            mem[mem[64] + 4] = address(arg1)
            mem[mem[64] + 36] = _1652
            require ext_code.size(address(arg3))
            call address(arg3).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg1), _1652
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1676 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1676] == bool(mem[_1676])
            if address(arg2) == address(arg4):
                _1696 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if 0 >= mem[_1696]:
                    revert with 'NH{q', 50
                mem[_1696 + 32] = address(arg3)
                if 1 >= mem[_1696]:
                    revert with 'NH{q', 50
                mem[_1696 + 64] = address(arg2)
                if block.timestamp > -301:
                    revert with 'NH{q', 17
                mem[_1696 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_1696 + 100] = _1652
                mem[_1696 + 132] = 1
                mem[_1696 + 164] = 160
                mem[_1696 + 260] = mem[_1696]
                idx = 0
                s = _1696 + 32
                t = _1696 + 292
                while idx < mem[_1696]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1696 + 196] = this.address
                mem[_1696 + 228] = block.timestamp + 300
                require ext_code.size(address(arg1))
                call address(arg1).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _1696 + (32 * mem[_1696]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2056 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2072 = mem[_2056]
                require mem[_2056] <= test266151307()
                require _2056 + mem[_2056] + 31 < _2056 + return_data.size
                _2088 = mem[_2056 + mem[_2056]]
                if mem[_2056 + mem[_2056]] > test266151307():
                    revert with 'NH{q', 65
                if _2056 + ceil32(return_data.size) + floor32(mem[_2056 + mem[_2056]]) + 1 > test266151307() or floor32(mem[_2056 + mem[_2056]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _2056 + ceil32(return_data.size) + floor32(mem[_2056 + mem[_2056]]) + 1
                mem[_2056 + ceil32(return_data.size)] = _2088
                require _2072 + (32 * _2088) + 32 <= return_data.size
                idx = 0
                s = _2056 + _2072 + 32
                t = _2056 + ceil32(return_data.size) + 32
                while idx < _2088:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg4))
                staticcall address(arg4).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2312 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2312] == mem[_2312]
                if not mem[_2312]:
                    revert with 0, 'SellActualOutput is zero'
                revert with 0, _215, _734, _1604, mem[_2312]
            _1695 = mem[64]
            mem[mem[64]] = 3
            mem[64] = mem[64] + 128
            if 0 >= mem[_1695]:
                revert with 'NH{q', 50
            mem[_1695 + 32] = address(arg3)
            if 1 >= mem[_1695]:
                revert with 'NH{q', 50
            mem[_1695 + 64] = address(arg2)
            if 2 >= mem[_1695]:
                revert with 'NH{q', 50
            mem[_1695 + 96] = address(arg4)
            if block.timestamp > -301:
                revert with 'NH{q', 17
            mem[_1695 + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[_1695 + 132] = _1652
            mem[_1695 + 164] = 1
            mem[_1695 + 196] = 160
            mem[_1695 + 292] = mem[_1695]
            idx = 0
            s = _1695 + 32
            t = _1695 + 324
            while idx < mem[_1695]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1695 + 228] = this.address
            mem[_1695 + 260] = block.timestamp + 300
            require ext_code.size(address(arg1))
            call address(arg1).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _1695 + (32 * mem[_1695]) + -mem[64] + 320]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2055 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2071 = mem[_2055]
            require mem[_2055] <= test266151307()
            require _2055 + mem[_2055] + 31 < _2055 + return_data.size
            _2087 = mem[_2055 + mem[_2055]]
            if mem[_2055 + mem[_2055]] > test266151307():
                revert with 'NH{q', 65
            if _2055 + ceil32(return_data.size) + floor32(mem[_2055 + mem[_2055]]) + 1 > test266151307() or floor32(mem[_2055 + mem[_2055]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _2055 + ceil32(return_data.size) + floor32(mem[_2055 + mem[_2055]]) + 1
            mem[_2055 + ceil32(return_data.size)] = _2087
            require _2071 + (32 * _2087) + 32 <= return_data.size
            idx = 0
            s = _2055 + _2071 + 32
            t = _2055 + ceil32(return_data.size) + 32
            while idx < _2087:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg4))
            staticcall address(arg4).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2311 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2311] == mem[_2311]
            if not mem[_2311]:
                revert with 0, 'SellActualOutput is zero'
            revert with 0, _215, _734, _1604, mem[_2311]
        _763 = mem[64]
        mem[mem[64]] = 3
        mem[64] = mem[64] + 128
        if 0 >= mem[_763]:
            revert with 'NH{q', 50
        mem[_763 + 32] = address(arg3)
        if 1 >= mem[_763]:
            revert with 'NH{q', 50
        mem[_763 + 64] = address(arg2)
        if 2 >= mem[_763]:
            revert with 'NH{q', 50
        mem[_763 + 96] = address(arg4)
        mem[_763 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_763 + 132] = _758
        mem[_763 + 164] = 64
        mem[_763 + 196] = mem[_763]
        idx = 0
        s = _763 + 32
        t = _763 + 228
        while idx < mem[_763]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(address(arg1))
        staticcall address(arg1).mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _763 + (32 * mem[_763]) + -mem[64] + 224]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1107 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1115 = mem[_1107]
        require mem[_1107] <= test266151307()
        require _1107 + mem[_1107] + 31 < _1107 + return_data.size
        _1123 = mem[_1107 + mem[_1107]]
        if mem[_1107 + mem[_1107]] > test266151307():
            revert with 'NH{q', 65
        if _1107 + ceil32(return_data.size) + floor32(mem[_1107 + mem[_1107]]) + 1 > test266151307() or floor32(mem[_1107 + mem[_1107]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _1107 + ceil32(return_data.size) + floor32(mem[_1107 + mem[_1107]]) + 1
        mem[_1107 + ceil32(return_data.size)] = _1123
        require _1115 + (32 * _1123) + 32 <= return_data.size
        idx = 0
        s = _1107 + _1115 + 32
        t = _1107 + ceil32(return_data.size) + 32
        while idx < _1123:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if mem[_763] < 1:
            revert with 'NH{q', 17
        if mem[_763] - 1 >= _1123:
            revert with 'NH{q', 50
        _1603 = mem[(32 * mem[_763] - 1) + _1107 + ceil32(return_data.size) + 32]
        if not mem[(32 * mem[_763] - 1) + _1107 + ceil32(return_data.size) + 32]:
            revert with 0, 'SellEstimatedOutput is zero'
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg3))
        staticcall address(arg3).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1643 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1651 = mem[_1643]
        require mem[_1643] == mem[_1643]
        mem[mem[64] + 4] = address(arg1)
        mem[mem[64] + 36] = _1651
        require ext_code.size(address(arg3))
        call address(arg3).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), _1651
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1675 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1675] == bool(mem[_1675])
        if address(arg2) == address(arg4):
            _1694 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if 0 >= mem[_1694]:
                revert with 'NH{q', 50
            mem[_1694 + 32] = address(arg3)
            if 1 >= mem[_1694]:
                revert with 'NH{q', 50
            mem[_1694 + 64] = address(arg2)
            if block.timestamp > -301:
                revert with 'NH{q', 17
            mem[_1694 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[_1694 + 100] = _1651
            mem[_1694 + 132] = 1
            mem[_1694 + 164] = 160
            mem[_1694 + 260] = mem[_1694]
            idx = 0
            s = _1694 + 32
            t = _1694 + 292
            while idx < mem[_1694]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1694 + 196] = this.address
            mem[_1694 + 228] = block.timestamp + 300
            require ext_code.size(address(arg1))
            call address(arg1).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _1694 + (32 * mem[_1694]) + -mem[64] + 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2054 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2070 = mem[_2054]
            require mem[_2054] <= test266151307()
            require _2054 + mem[_2054] + 31 < _2054 + return_data.size
            _2086 = mem[_2054 + mem[_2054]]
            if mem[_2054 + mem[_2054]] > test266151307():
                revert with 'NH{q', 65
            if _2054 + ceil32(return_data.size) + floor32(mem[_2054 + mem[_2054]]) + 1 > test266151307() or floor32(mem[_2054 + mem[_2054]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _2054 + ceil32(return_data.size) + floor32(mem[_2054 + mem[_2054]]) + 1
            mem[_2054 + ceil32(return_data.size)] = _2086
            require _2070 + (32 * _2086) + 32 <= return_data.size
            idx = 0
            s = _2054 + _2070 + 32
            t = _2054 + ceil32(return_data.size) + 32
            while idx < _2086:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg4))
            staticcall address(arg4).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2310 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2310] == mem[_2310]
            if not mem[_2310]:
                revert with 0, 'SellActualOutput is zero'
            revert with 0, _215, _734, _1603, mem[_2310]
        _1693 = mem[64]
        mem[mem[64]] = 3
        mem[64] = mem[64] + 128
        if 0 >= mem[_1693]:
            revert with 'NH{q', 50
        mem[_1693 + 32] = address(arg3)
        if 1 >= mem[_1693]:
            revert with 'NH{q', 50
        mem[_1693 + 64] = address(arg2)
        if 2 >= mem[_1693]:
            revert with 'NH{q', 50
        mem[_1693 + 96] = address(arg4)
        if block.timestamp > -301:
            revert with 'NH{q', 17
        mem[_1693 + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[_1693 + 132] = _1651
        mem[_1693 + 164] = 1
        mem[_1693 + 196] = 160
        mem[_1693 + 292] = mem[_1693]
        idx = 0
        s = _1693 + 32
        t = _1693 + 324
        while idx < mem[_1693]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_1693 + 228] = this.address
        mem[_1693 + 260] = block.timestamp + 300
        require ext_code.size(address(arg1))
        call address(arg1).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _1693 + (32 * mem[_1693]) + -mem[64] + 320]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2053 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _2069 = mem[_2053]
        require mem[_2053] <= test266151307()
        require _2053 + mem[_2053] + 31 < _2053 + return_data.size
        _2085 = mem[_2053 + mem[_2053]]
        if mem[_2053 + mem[_2053]] > test266151307():
            revert with 'NH{q', 65
        if _2053 + ceil32(return_data.size) + floor32(mem[_2053 + mem[_2053]]) + 1 > test266151307() or floor32(mem[_2053 + mem[_2053]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _2053 + ceil32(return_data.size) + floor32(mem[_2053 + mem[_2053]]) + 1
        mem[_2053 + ceil32(return_data.size)] = _2085
        require _2069 + (32 * _2085) + 32 <= return_data.size
        idx = 0
        s = _2053 + _2069 + 32
        t = _2053 + ceil32(return_data.size) + 32
        while idx < _2085:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg4))
        staticcall address(arg4).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2309 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_2309] == mem[_2309]
        if not mem[_2309]:
            revert with 0, 'SellActualOutput is zero'
        revert with 0, _215, _734, _1603, mem[_2309]
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
    _729 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _733 = mem[_729]
    require mem[_729] == mem[_729]
    if not mem[_729]:
        revert with 0, 'BuyActualOutput is zero'
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(arg3))
    staticcall address(arg3).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _753 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _757 = mem[_753]
    require mem[_753] == mem[_753]
    if address(arg2) == address(arg4):
        _762 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        if 0 >= mem[_762]:
            revert with 'NH{q', 50
        mem[_762 + 32] = address(arg3)
        if 1 >= mem[_762]:
            revert with 'NH{q', 50
        mem[_762 + 64] = address(arg2)
        mem[_762 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_762 + 100] = _757
        mem[_762 + 132] = 64
        mem[_762 + 164] = mem[_762]
        idx = 0
        s = _762 + 32
        t = _762 + 196
        while idx < mem[_762]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(address(arg1))
        staticcall address(arg1).mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _762 + (32 * mem[_762]) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1106 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1114 = mem[_1106]
        require mem[_1106] <= test266151307()
        require _1106 + mem[_1106] + 31 < _1106 + return_data.size
        _1122 = mem[_1106 + mem[_1106]]
        if mem[_1106 + mem[_1106]] > test266151307():
            revert with 'NH{q', 65
        if _1106 + ceil32(return_data.size) + floor32(mem[_1106 + mem[_1106]]) + 1 > test266151307() or floor32(mem[_1106 + mem[_1106]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _1106 + ceil32(return_data.size) + floor32(mem[_1106 + mem[_1106]]) + 1
        mem[_1106 + ceil32(return_data.size)] = _1122
        require _1114 + (32 * _1122) + 32 <= return_data.size
        idx = 0
        s = _1106 + _1114 + 32
        t = _1106 + ceil32(return_data.size) + 32
        while idx < _1122:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if mem[_762] < 1:
            revert with 'NH{q', 17
        if mem[_762] - 1 >= _1122:
            revert with 'NH{q', 50
        _1602 = mem[(32 * mem[_762] - 1) + _1106 + ceil32(return_data.size) + 32]
        if not mem[(32 * mem[_762] - 1) + _1106 + ceil32(return_data.size) + 32]:
            revert with 0, 'SellEstimatedOutput is zero'
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg3))
        staticcall address(arg3).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1642 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1650 = mem[_1642]
        require mem[_1642] == mem[_1642]
        mem[mem[64] + 4] = address(arg1)
        mem[mem[64] + 36] = _1650
        require ext_code.size(address(arg3))
        call address(arg3).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), _1650
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1674 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1674] == bool(mem[_1674])
        if address(arg2) == address(arg4):
            _1692 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if 0 >= mem[_1692]:
                revert with 'NH{q', 50
            mem[_1692 + 32] = address(arg3)
            if 1 >= mem[_1692]:
                revert with 'NH{q', 50
            mem[_1692 + 64] = address(arg2)
            if block.timestamp > -301:
                revert with 'NH{q', 17
            mem[_1692 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[_1692 + 100] = _1650
            mem[_1692 + 132] = 1
            mem[_1692 + 164] = 160
            mem[_1692 + 260] = mem[_1692]
            idx = 0
            s = _1692 + 32
            t = _1692 + 292
            while idx < mem[_1692]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1692 + 196] = this.address
            mem[_1692 + 228] = block.timestamp + 300
            require ext_code.size(address(arg1))
            call address(arg1).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _1692 + (32 * mem[_1692]) + -mem[64] + 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2052 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2068 = mem[_2052]
            require mem[_2052] <= test266151307()
            require _2052 + mem[_2052] + 31 < _2052 + return_data.size
            _2084 = mem[_2052 + mem[_2052]]
            if mem[_2052 + mem[_2052]] > test266151307():
                revert with 'NH{q', 65
            if _2052 + ceil32(return_data.size) + floor32(mem[_2052 + mem[_2052]]) + 1 > test266151307() or floor32(mem[_2052 + mem[_2052]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _2052 + ceil32(return_data.size) + floor32(mem[_2052 + mem[_2052]]) + 1
            mem[_2052 + ceil32(return_data.size)] = _2084
            require _2068 + (32 * _2084) + 32 <= return_data.size
            idx = 0
            s = _2052 + _2068 + 32
            t = _2052 + ceil32(return_data.size) + 32
            while idx < _2084:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg4))
            staticcall address(arg4).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2308 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2308] == mem[_2308]
            if not mem[_2308]:
                revert with 0, 'SellActualOutput is zero'
            revert with 0, _215, _733, _1602, mem[_2308]
        _1691 = mem[64]
        mem[mem[64]] = 3
        mem[64] = mem[64] + 128
        if 0 >= mem[_1691]:
            revert with 'NH{q', 50
        mem[_1691 + 32] = address(arg3)
        if 1 >= mem[_1691]:
            revert with 'NH{q', 50
        mem[_1691 + 64] = address(arg2)
        if 2 >= mem[_1691]:
            revert with 'NH{q', 50
        mem[_1691 + 96] = address(arg4)
        if block.timestamp > -301:
            revert with 'NH{q', 17
        mem[_1691 + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[_1691 + 132] = _1650
        mem[_1691 + 164] = 1
        mem[_1691 + 196] = 160
        mem[_1691 + 292] = mem[_1691]
        idx = 0
        s = _1691 + 32
        t = _1691 + 324
        while idx < mem[_1691]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_1691 + 228] = this.address
        mem[_1691 + 260] = block.timestamp + 300
        require ext_code.size(address(arg1))
        call address(arg1).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _1691 + (32 * mem[_1691]) + -mem[64] + 320]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2051 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _2067 = mem[_2051]
        require mem[_2051] <= test266151307()
        require _2051 + mem[_2051] + 31 < _2051 + return_data.size
        _2083 = mem[_2051 + mem[_2051]]
        if mem[_2051 + mem[_2051]] > test266151307():
            revert with 'NH{q', 65
        if _2051 + ceil32(return_data.size) + floor32(mem[_2051 + mem[_2051]]) + 1 > test266151307() or floor32(mem[_2051 + mem[_2051]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _2051 + ceil32(return_data.size) + floor32(mem[_2051 + mem[_2051]]) + 1
        mem[_2051 + ceil32(return_data.size)] = _2083
        require _2067 + (32 * _2083) + 32 <= return_data.size
        idx = 0
        s = _2051 + _2067 + 32
        t = _2051 + ceil32(return_data.size) + 32
        while idx < _2083:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg4))
        staticcall address(arg4).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2307 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_2307] == mem[_2307]
        if not mem[_2307]:
            revert with 0, 'SellActualOutput is zero'
        revert with 0, _215, _733, _1602, mem[_2307]
    _761 = mem[64]
    mem[mem[64]] = 3
    mem[64] = mem[64] + 128
    if 0 >= mem[_761]:
        revert with 'NH{q', 50
    mem[_761 + 32] = address(arg3)
    if 1 >= mem[_761]:
        revert with 'NH{q', 50
    mem[_761 + 64] = address(arg2)
    if 2 >= mem[_761]:
        revert with 'NH{q', 50
    mem[_761 + 96] = address(arg4)
    mem[_761 + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[_761 + 132] = _757
    mem[_761 + 164] = 64
    mem[_761 + 196] = mem[_761]
    idx = 0
    s = _761 + 32
    t = _761 + 228
    while idx < mem[_761]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg1))
    staticcall address(arg1).mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len _761 + (32 * mem[_761]) + -mem[64] + 224]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1105 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _1113 = mem[_1105]
    require mem[_1105] <= test266151307()
    require _1105 + mem[_1105] + 31 < _1105 + return_data.size
    _1121 = mem[_1105 + mem[_1105]]
    if mem[_1105 + mem[_1105]] > test266151307():
        revert with 'NH{q', 65
    if _1105 + ceil32(return_data.size) + floor32(mem[_1105 + mem[_1105]]) + 1 > test266151307() or floor32(mem[_1105 + mem[_1105]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _1105 + ceil32(return_data.size) + floor32(mem[_1105 + mem[_1105]]) + 1
    mem[_1105 + ceil32(return_data.size)] = _1121
    require _1113 + (32 * _1121) + 32 <= return_data.size
    idx = 0
    s = _1105 + _1113 + 32
    t = _1105 + ceil32(return_data.size) + 32
    while idx < _1121:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if mem[_761] < 1:
        revert with 'NH{q', 17
    if mem[_761] - 1 >= _1121:
        revert with 'NH{q', 50
    _1601 = mem[(32 * mem[_761] - 1) + _1105 + ceil32(return_data.size) + 32]
    if not mem[(32 * mem[_761] - 1) + _1105 + ceil32(return_data.size) + 32]:
        revert with 0, 'SellEstimatedOutput is zero'
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(arg3))
    staticcall address(arg3).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1641 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _1649 = mem[_1641]
    require mem[_1641] == mem[_1641]
    mem[mem[64] + 4] = address(arg1)
    mem[mem[64] + 36] = _1649
    require ext_code.size(address(arg3))
    call address(arg3).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), _1649
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1673 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_1673] == bool(mem[_1673])
    if address(arg2) == address(arg4):
        _1690 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        if 0 >= mem[_1690]:
            revert with 'NH{q', 50
        mem[_1690 + 32] = address(arg3)
        if 1 >= mem[_1690]:
            revert with 'NH{q', 50
        mem[_1690 + 64] = address(arg2)
        if block.timestamp > -301:
            revert with 'NH{q', 17
        mem[_1690 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[_1690 + 100] = _1649
        mem[_1690 + 132] = 1
        mem[_1690 + 164] = 160
        mem[_1690 + 260] = mem[_1690]
        idx = 0
        s = _1690 + 32
        t = _1690 + 292
        while idx < mem[_1690]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_1690 + 196] = this.address
        mem[_1690 + 228] = block.timestamp + 300
        require ext_code.size(address(arg1))
        call address(arg1).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _1690 + (32 * mem[_1690]) + -mem[64] + 288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2050 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _2066 = mem[_2050]
        require mem[_2050] <= test266151307()
        require _2050 + mem[_2050] + 31 < _2050 + return_data.size
        _2082 = mem[_2050 + mem[_2050]]
        if mem[_2050 + mem[_2050]] > test266151307():
            revert with 'NH{q', 65
        if _2050 + ceil32(return_data.size) + floor32(mem[_2050 + mem[_2050]]) + 1 > test266151307() or floor32(mem[_2050 + mem[_2050]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _2050 + ceil32(return_data.size) + floor32(mem[_2050 + mem[_2050]]) + 1
        mem[_2050 + ceil32(return_data.size)] = _2082
        require _2066 + (32 * _2082) + 32 <= return_data.size
        idx = 0
        s = _2050 + _2066 + 32
        t = _2050 + ceil32(return_data.size) + 32
        while idx < _2082:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg4))
        staticcall address(arg4).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2306 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_2306] == mem[_2306]
        if not mem[_2306]:
            revert with 0, 'SellActualOutput is zero'
        revert with 0, _215, _733, _1601, mem[_2306]
    _1689 = mem[64]
    mem[mem[64]] = 3
    mem[64] = mem[64] + 128
    if 0 >= mem[_1689]:
        revert with 'NH{q', 50
    mem[_1689 + 32] = address(arg3)
    if 1 >= mem[_1689]:
        revert with 'NH{q', 50
    mem[_1689 + 64] = address(arg2)
    if 2 >= mem[_1689]:
        revert with 'NH{q', 50
    mem[_1689 + 96] = address(arg4)
    if block.timestamp > -301:
        revert with 'NH{q', 17
    mem[_1689 + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[_1689 + 132] = _1649
    mem[_1689 + 164] = 1
    mem[_1689 + 196] = 160
    mem[_1689 + 292] = mem[_1689]
    idx = 0
    s = _1689 + 32
    t = _1689 + 324
    while idx < mem[_1689]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_1689 + 228] = this.address
    mem[_1689 + 260] = block.timestamp + 300
    require ext_code.size(address(arg1))
    call address(arg1).mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _1689 + (32 * mem[_1689]) + -mem[64] + 320]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _2049 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _2065 = mem[_2049]
    require mem[_2049] <= test266151307()
    require _2049 + mem[_2049] + 31 < _2049 + return_data.size
    _2081 = mem[_2049 + mem[_2049]]
    if mem[_2049 + mem[_2049]] > test266151307():
        revert with 'NH{q', 65
    if _2049 + ceil32(return_data.size) + floor32(mem[_2049 + mem[_2049]]) + 1 > test266151307() or floor32(mem[_2049 + mem[_2049]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _2049 + ceil32(return_data.size) + floor32(mem[_2049 + mem[_2049]]) + 1
    mem[_2049 + ceil32(return_data.size)] = _2081
    require _2065 + (32 * _2081) + 32 <= return_data.size
    idx = 0
    s = _2049 + _2065 + 32
    t = _2049 + ceil32(return_data.size) + 32
    while idx < _2081:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(arg4))
    staticcall address(arg4).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _2305 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_2305] == mem[_2305]
    if not mem[_2305]:
        revert with 0, 'SellActualOutput is zero'
    revert with 0, _215, _733, _1601, mem[_2305]
}



}
