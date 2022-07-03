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
            _732 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
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
                _1552 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1560 = mem[_1552]
                require mem[_1552] == mem[_1552]
                mem[mem[64] + 4] = address(arg1)
                mem[mem[64] + 36] = _1560
                require ext_code.size(address(arg3))
                call address(arg3).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), _1560
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1584 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1584] == bool(mem[_1584])
                if address(arg2) == address(arg4):
                    _1608 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if 0 >= mem[_1608]:
                        revert with 'NH{q', 50
                    mem[_1608 + 32] = address(arg3)
                    if 1 >= mem[_1608]:
                        revert with 'NH{q', 50
                    mem[_1608 + 64] = address(arg2)
                    if block.timestamp > -301:
                        revert with 'NH{q', 17
                    mem[_1608 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_1608 + 100] = _1560
                    mem[_1608 + 132] = 1
                    mem[_1608 + 164] = 160
                    mem[_1608 + 260] = mem[_1608]
                    idx = 0
                    s = _1608 + 32
                    t = _1608 + 292
                    while idx < mem[_1608]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1608 + 196] = this.address
                    mem[_1608 + 228] = block.timestamp + 300
                    require ext_code.size(address(arg1))
                    call address(arg1).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1608 + (32 * mem[_1608]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1872 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1888 = mem[_1872]
                    require mem[_1872] <= test266151307()
                    require _1872 + mem[_1872] + 31 < _1872 + return_data.size
                    _1904 = mem[_1872 + mem[_1872]]
                    if mem[_1872 + mem[_1872]] > test266151307():
                        revert with 'NH{q', 65
                    if _1872 + ceil32(return_data.size) + floor32(mem[_1872 + mem[_1872]]) + 1 > test266151307() or floor32(mem[_1872 + mem[_1872]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _1872 + ceil32(return_data.size) + floor32(mem[_1872 + mem[_1872]]) + 1
                    mem[_1872 + ceil32(return_data.size)] = _1904
                    require _1888 + (32 * _1904) + 32 <= return_data.size
                    idx = 0
                    s = _1872 + _1888 + 32
                    t = _1872 + ceil32(return_data.size) + 32
                    while idx < _1904:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                else:
                    _1607 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    if 0 >= mem[_1607]:
                        revert with 'NH{q', 50
                    mem[_1607 + 32] = address(arg3)
                    if 1 >= mem[_1607]:
                        revert with 'NH{q', 50
                    mem[_1607 + 64] = address(arg2)
                    if 2 >= mem[_1607]:
                        revert with 'NH{q', 50
                    mem[_1607 + 96] = address(arg4)
                    if block.timestamp > -301:
                        revert with 'NH{q', 17
                    mem[_1607 + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_1607 + 132] = _1560
                    mem[_1607 + 164] = 1
                    mem[_1607 + 196] = 160
                    mem[_1607 + 292] = mem[_1607]
                    idx = 0
                    s = _1607 + 32
                    t = _1607 + 324
                    while idx < mem[_1607]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1607 + 228] = this.address
                    mem[_1607 + 260] = block.timestamp + 300
                    require ext_code.size(address(arg1))
                    call address(arg1).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1607 + (32 * mem[_1607]) + -mem[64] + 320]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1871 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1887 = mem[_1871]
                    require mem[_1871] <= test266151307()
                    require _1871 + mem[_1871] + 31 < _1871 + return_data.size
                    _1903 = mem[_1871 + mem[_1871]]
                    if mem[_1871 + mem[_1871]] > test266151307():
                        revert with 'NH{q', 65
                    if _1871 + ceil32(return_data.size) + floor32(mem[_1871 + mem[_1871]]) + 1 > test266151307() or floor32(mem[_1871 + mem[_1871]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _1871 + ceil32(return_data.size) + floor32(mem[_1871 + mem[_1871]]) + 1
                    mem[_1871 + ceil32(return_data.size)] = _1903
                    require _1887 + (32 * _1903) + 32 <= return_data.size
                    idx = 0
                    s = _1871 + _1887 + 32
                    t = _1871 + ceil32(return_data.size) + 32
                    while idx < _1903:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
            else:
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
                _1551 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1559 = mem[_1551]
                require mem[_1551] == mem[_1551]
                mem[mem[64] + 4] = address(arg1)
                mem[mem[64] + 36] = _1559
                require ext_code.size(address(arg3))
                call address(arg3).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), _1559
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1583 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1583] == bool(mem[_1583])
                if address(arg2) == address(arg4):
                    _1606 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if 0 >= mem[_1606]:
                        revert with 'NH{q', 50
                    mem[_1606 + 32] = address(arg3)
                    if 1 >= mem[_1606]:
                        revert with 'NH{q', 50
                    mem[_1606 + 64] = address(arg2)
                    if block.timestamp > -301:
                        revert with 'NH{q', 17
                    mem[_1606 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_1606 + 100] = _1559
                    mem[_1606 + 132] = 1
                    mem[_1606 + 164] = 160
                    mem[_1606 + 260] = mem[_1606]
                    idx = 0
                    s = _1606 + 32
                    t = _1606 + 292
                    while idx < mem[_1606]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1606 + 196] = this.address
                    mem[_1606 + 228] = block.timestamp + 300
                    require ext_code.size(address(arg1))
                    call address(arg1).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1606 + (32 * mem[_1606]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1870 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1886 = mem[_1870]
                    require mem[_1870] <= test266151307()
                    require _1870 + mem[_1870] + 31 < _1870 + return_data.size
                    _1902 = mem[_1870 + mem[_1870]]
                    if mem[_1870 + mem[_1870]] > test266151307():
                        revert with 'NH{q', 65
                    if _1870 + ceil32(return_data.size) + floor32(mem[_1870 + mem[_1870]]) + 1 > test266151307() or floor32(mem[_1870 + mem[_1870]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _1870 + ceil32(return_data.size) + floor32(mem[_1870 + mem[_1870]]) + 1
                    mem[_1870 + ceil32(return_data.size)] = _1902
                    require _1886 + (32 * _1902) + 32 <= return_data.size
                    idx = 0
                    s = _1870 + _1886 + 32
                    t = _1870 + ceil32(return_data.size) + 32
                    while idx < _1902:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                else:
                    _1605 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    if 0 >= mem[_1605]:
                        revert with 'NH{q', 50
                    mem[_1605 + 32] = address(arg3)
                    if 1 >= mem[_1605]:
                        revert with 'NH{q', 50
                    mem[_1605 + 64] = address(arg2)
                    if 2 >= mem[_1605]:
                        revert with 'NH{q', 50
                    mem[_1605 + 96] = address(arg4)
                    if block.timestamp > -301:
                        revert with 'NH{q', 17
                    mem[_1605 + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_1605 + 132] = _1559
                    mem[_1605 + 164] = 1
                    mem[_1605 + 196] = 160
                    mem[_1605 + 292] = mem[_1605]
                    idx = 0
                    s = _1605 + 32
                    t = _1605 + 324
                    while idx < mem[_1605]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1605 + 228] = this.address
                    mem[_1605 + 260] = block.timestamp + 300
                    require ext_code.size(address(arg1))
                    call address(arg1).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1605 + (32 * mem[_1605]) + -mem[64] + 320]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1869 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1885 = mem[_1869]
                    require mem[_1869] <= test266151307()
                    require _1869 + mem[_1869] + 31 < _1869 + return_data.size
                    _1901 = mem[_1869 + mem[_1869]]
                    if mem[_1869 + mem[_1869]] > test266151307():
                        revert with 'NH{q', 65
                    if _1869 + ceil32(return_data.size) + floor32(mem[_1869 + mem[_1869]]) + 1 > test266151307() or floor32(mem[_1869 + mem[_1869]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _1869 + ceil32(return_data.size) + floor32(mem[_1869 + mem[_1869]]) + 1
                    mem[_1869 + ceil32(return_data.size)] = _1901
                    require _1885 + (32 * _1901) + 32 <= return_data.size
                    idx = 0
                    s = _1869 + _1885 + 32
                    t = _1869 + ceil32(return_data.size) + 32
                    while idx < _1901:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
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
            _731 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
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
                _1550 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1558 = mem[_1550]
                require mem[_1550] == mem[_1550]
                mem[mem[64] + 4] = address(arg1)
                mem[mem[64] + 36] = _1558
                require ext_code.size(address(arg3))
                call address(arg3).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), _1558
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1582 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1582] == bool(mem[_1582])
                if address(arg2) == address(arg4):
                    _1604 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if 0 >= mem[_1604]:
                        revert with 'NH{q', 50
                    mem[_1604 + 32] = address(arg3)
                    if 1 >= mem[_1604]:
                        revert with 'NH{q', 50
                    mem[_1604 + 64] = address(arg2)
                    if block.timestamp > -301:
                        revert with 'NH{q', 17
                    mem[_1604 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_1604 + 100] = _1558
                    mem[_1604 + 132] = 1
                    mem[_1604 + 164] = 160
                    mem[_1604 + 260] = mem[_1604]
                    idx = 0
                    s = _1604 + 32
                    t = _1604 + 292
                    while idx < mem[_1604]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1604 + 196] = this.address
                    mem[_1604 + 228] = block.timestamp + 300
                    require ext_code.size(address(arg1))
                    call address(arg1).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1604 + (32 * mem[_1604]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1868 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1884 = mem[_1868]
                    require mem[_1868] <= test266151307()
                    require _1868 + mem[_1868] + 31 < _1868 + return_data.size
                    _1900 = mem[_1868 + mem[_1868]]
                    if mem[_1868 + mem[_1868]] > test266151307():
                        revert with 'NH{q', 65
                    if _1868 + ceil32(return_data.size) + floor32(mem[_1868 + mem[_1868]]) + 1 > test266151307() or floor32(mem[_1868 + mem[_1868]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _1868 + ceil32(return_data.size) + floor32(mem[_1868 + mem[_1868]]) + 1
                    mem[_1868 + ceil32(return_data.size)] = _1900
                    require _1884 + (32 * _1900) + 32 <= return_data.size
                    idx = 0
                    s = _1868 + _1884 + 32
                    t = _1868 + ceil32(return_data.size) + 32
                    while idx < _1900:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                else:
                    _1603 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    if 0 >= mem[_1603]:
                        revert with 'NH{q', 50
                    mem[_1603 + 32] = address(arg3)
                    if 1 >= mem[_1603]:
                        revert with 'NH{q', 50
                    mem[_1603 + 64] = address(arg2)
                    if 2 >= mem[_1603]:
                        revert with 'NH{q', 50
                    mem[_1603 + 96] = address(arg4)
                    if block.timestamp > -301:
                        revert with 'NH{q', 17
                    mem[_1603 + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_1603 + 132] = _1558
                    mem[_1603 + 164] = 1
                    mem[_1603 + 196] = 160
                    mem[_1603 + 292] = mem[_1603]
                    idx = 0
                    s = _1603 + 32
                    t = _1603 + 324
                    while idx < mem[_1603]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1603 + 228] = this.address
                    mem[_1603 + 260] = block.timestamp + 300
                    require ext_code.size(address(arg1))
                    call address(arg1).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1603 + (32 * mem[_1603]) + -mem[64] + 320]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1867 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1883 = mem[_1867]
                    require mem[_1867] <= test266151307()
                    require _1867 + mem[_1867] + 31 < _1867 + return_data.size
                    _1899 = mem[_1867 + mem[_1867]]
                    if mem[_1867 + mem[_1867]] > test266151307():
                        revert with 'NH{q', 65
                    if _1867 + ceil32(return_data.size) + floor32(mem[_1867 + mem[_1867]]) + 1 > test266151307() or floor32(mem[_1867 + mem[_1867]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _1867 + ceil32(return_data.size) + floor32(mem[_1867 + mem[_1867]]) + 1
                    mem[_1867 + ceil32(return_data.size)] = _1899
                    require _1883 + (32 * _1899) + 32 <= return_data.size
                    idx = 0
                    s = _1867 + _1883 + 32
                    t = _1867 + ceil32(return_data.size) + 32
                    while idx < _1899:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
            else:
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
                _1549 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1557 = mem[_1549]
                require mem[_1549] == mem[_1549]
                mem[mem[64] + 4] = address(arg1)
                mem[mem[64] + 36] = _1557
                require ext_code.size(address(arg3))
                call address(arg3).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), _1557
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1581 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1581] == bool(mem[_1581])
                if address(arg2) == address(arg4):
                    _1602 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if 0 >= mem[_1602]:
                        revert with 'NH{q', 50
                    mem[_1602 + 32] = address(arg3)
                    if 1 >= mem[_1602]:
                        revert with 'NH{q', 50
                    mem[_1602 + 64] = address(arg2)
                    if block.timestamp > -301:
                        revert with 'NH{q', 17
                    mem[_1602 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_1602 + 100] = _1557
                    mem[_1602 + 132] = 1
                    mem[_1602 + 164] = 160
                    mem[_1602 + 260] = mem[_1602]
                    idx = 0
                    s = _1602 + 32
                    t = _1602 + 292
                    while idx < mem[_1602]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1602 + 196] = this.address
                    mem[_1602 + 228] = block.timestamp + 300
                    require ext_code.size(address(arg1))
                    call address(arg1).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1602 + (32 * mem[_1602]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1866 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1882 = mem[_1866]
                    require mem[_1866] <= test266151307()
                    require _1866 + mem[_1866] + 31 < _1866 + return_data.size
                    _1898 = mem[_1866 + mem[_1866]]
                    if mem[_1866 + mem[_1866]] > test266151307():
                        revert with 'NH{q', 65
                    if _1866 + ceil32(return_data.size) + floor32(mem[_1866 + mem[_1866]]) + 1 > test266151307() or floor32(mem[_1866 + mem[_1866]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _1866 + ceil32(return_data.size) + floor32(mem[_1866 + mem[_1866]]) + 1
                    mem[_1866 + ceil32(return_data.size)] = _1898
                    require _1882 + (32 * _1898) + 32 <= return_data.size
                    idx = 0
                    s = _1866 + _1882 + 32
                    t = _1866 + ceil32(return_data.size) + 32
                    while idx < _1898:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                else:
                    _1601 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    if 0 >= mem[_1601]:
                        revert with 'NH{q', 50
                    mem[_1601 + 32] = address(arg3)
                    if 1 >= mem[_1601]:
                        revert with 'NH{q', 50
                    mem[_1601 + 64] = address(arg2)
                    if 2 >= mem[_1601]:
                        revert with 'NH{q', 50
                    mem[_1601 + 96] = address(arg4)
                    if block.timestamp > -301:
                        revert with 'NH{q', 17
                    mem[_1601 + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_1601 + 132] = _1557
                    mem[_1601 + 164] = 1
                    mem[_1601 + 196] = 160
                    mem[_1601 + 292] = mem[_1601]
                    idx = 0
                    s = _1601 + 32
                    t = _1601 + 324
                    while idx < mem[_1601]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1601 + 228] = this.address
                    mem[_1601 + 260] = block.timestamp + 300
                    require ext_code.size(address(arg1))
                    call address(arg1).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1601 + (32 * mem[_1601]) + -mem[64] + 320]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1865 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1881 = mem[_1865]
                    require mem[_1865] <= test266151307()
                    require _1865 + mem[_1865] + 31 < _1865 + return_data.size
                    _1897 = mem[_1865 + mem[_1865]]
                    if mem[_1865 + mem[_1865]] > test266151307():
                        revert with 'NH{q', 65
                    if _1865 + ceil32(return_data.size) + floor32(mem[_1865 + mem[_1865]]) + 1 > test266151307() or floor32(mem[_1865 + mem[_1865]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _1865 + ceil32(return_data.size) + floor32(mem[_1865 + mem[_1865]]) + 1
                    mem[_1865 + ceil32(return_data.size)] = _1897
                    require _1881 + (32 * _1897) + 32 <= return_data.size
                    idx = 0
                    s = _1865 + _1881 + 32
                    t = _1865 + ceil32(return_data.size) + 32
                    while idx < _1897:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
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
            _730 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
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
                _1548 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1556 = mem[_1548]
                require mem[_1548] == mem[_1548]
                mem[mem[64] + 4] = address(arg1)
                mem[mem[64] + 36] = _1556
                require ext_code.size(address(arg3))
                call address(arg3).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), _1556
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1580 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1580] == bool(mem[_1580])
                if address(arg2) == address(arg4):
                    _1600 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if 0 >= mem[_1600]:
                        revert with 'NH{q', 50
                    mem[_1600 + 32] = address(arg3)
                    if 1 >= mem[_1600]:
                        revert with 'NH{q', 50
                    mem[_1600 + 64] = address(arg2)
                    if block.timestamp > -301:
                        revert with 'NH{q', 17
                    mem[_1600 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_1600 + 100] = _1556
                    mem[_1600 + 132] = 1
                    mem[_1600 + 164] = 160
                    mem[_1600 + 260] = mem[_1600]
                    idx = 0
                    s = _1600 + 32
                    t = _1600 + 292
                    while idx < mem[_1600]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1600 + 196] = this.address
                    mem[_1600 + 228] = block.timestamp + 300
                    require ext_code.size(address(arg1))
                    call address(arg1).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1600 + (32 * mem[_1600]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1864 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1880 = mem[_1864]
                    require mem[_1864] <= test266151307()
                    require _1864 + mem[_1864] + 31 < _1864 + return_data.size
                    _1896 = mem[_1864 + mem[_1864]]
                    if mem[_1864 + mem[_1864]] > test266151307():
                        revert with 'NH{q', 65
                    if _1864 + ceil32(return_data.size) + floor32(mem[_1864 + mem[_1864]]) + 1 > test266151307() or floor32(mem[_1864 + mem[_1864]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _1864 + ceil32(return_data.size) + floor32(mem[_1864 + mem[_1864]]) + 1
                    mem[_1864 + ceil32(return_data.size)] = _1896
                    require _1880 + (32 * _1896) + 32 <= return_data.size
                    idx = 0
                    s = _1864 + _1880 + 32
                    t = _1864 + ceil32(return_data.size) + 32
                    while idx < _1896:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                else:
                    _1599 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    if 0 >= mem[_1599]:
                        revert with 'NH{q', 50
                    mem[_1599 + 32] = address(arg3)
                    if 1 >= mem[_1599]:
                        revert with 'NH{q', 50
                    mem[_1599 + 64] = address(arg2)
                    if 2 >= mem[_1599]:
                        revert with 'NH{q', 50
                    mem[_1599 + 96] = address(arg4)
                    if block.timestamp > -301:
                        revert with 'NH{q', 17
                    mem[_1599 + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_1599 + 132] = _1556
                    mem[_1599 + 164] = 1
                    mem[_1599 + 196] = 160
                    mem[_1599 + 292] = mem[_1599]
                    idx = 0
                    s = _1599 + 32
                    t = _1599 + 324
                    while idx < mem[_1599]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1599 + 228] = this.address
                    mem[_1599 + 260] = block.timestamp + 300
                    require ext_code.size(address(arg1))
                    call address(arg1).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1599 + (32 * mem[_1599]) + -mem[64] + 320]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1863 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1879 = mem[_1863]
                    require mem[_1863] <= test266151307()
                    require _1863 + mem[_1863] + 31 < _1863 + return_data.size
                    _1895 = mem[_1863 + mem[_1863]]
                    if mem[_1863 + mem[_1863]] > test266151307():
                        revert with 'NH{q', 65
                    if _1863 + ceil32(return_data.size) + floor32(mem[_1863 + mem[_1863]]) + 1 > test266151307() or floor32(mem[_1863 + mem[_1863]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _1863 + ceil32(return_data.size) + floor32(mem[_1863 + mem[_1863]]) + 1
                    mem[_1863 + ceil32(return_data.size)] = _1895
                    require _1879 + (32 * _1895) + 32 <= return_data.size
                    idx = 0
                    s = _1863 + _1879 + 32
                    t = _1863 + ceil32(return_data.size) + 32
                    while idx < _1895:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
            else:
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
                _1547 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1555 = mem[_1547]
                require mem[_1547] == mem[_1547]
                mem[mem[64] + 4] = address(arg1)
                mem[mem[64] + 36] = _1555
                require ext_code.size(address(arg3))
                call address(arg3).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), _1555
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1579 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1579] == bool(mem[_1579])
                if address(arg2) == address(arg4):
                    _1598 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if 0 >= mem[_1598]:
                        revert with 'NH{q', 50
                    mem[_1598 + 32] = address(arg3)
                    if 1 >= mem[_1598]:
                        revert with 'NH{q', 50
                    mem[_1598 + 64] = address(arg2)
                    if block.timestamp > -301:
                        revert with 'NH{q', 17
                    mem[_1598 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_1598 + 100] = _1555
                    mem[_1598 + 132] = 1
                    mem[_1598 + 164] = 160
                    mem[_1598 + 260] = mem[_1598]
                    idx = 0
                    s = _1598 + 32
                    t = _1598 + 292
                    while idx < mem[_1598]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1598 + 196] = this.address
                    mem[_1598 + 228] = block.timestamp + 300
                    require ext_code.size(address(arg1))
                    call address(arg1).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1598 + (32 * mem[_1598]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1862 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1878 = mem[_1862]
                    require mem[_1862] <= test266151307()
                    require _1862 + mem[_1862] + 31 < _1862 + return_data.size
                    _1894 = mem[_1862 + mem[_1862]]
                    if mem[_1862 + mem[_1862]] > test266151307():
                        revert with 'NH{q', 65
                    if _1862 + ceil32(return_data.size) + floor32(mem[_1862 + mem[_1862]]) + 1 > test266151307() or floor32(mem[_1862 + mem[_1862]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _1862 + ceil32(return_data.size) + floor32(mem[_1862 + mem[_1862]]) + 1
                    mem[_1862 + ceil32(return_data.size)] = _1894
                    require _1878 + (32 * _1894) + 32 <= return_data.size
                    idx = 0
                    s = _1862 + _1878 + 32
                    t = _1862 + ceil32(return_data.size) + 32
                    while idx < _1894:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                else:
                    _1597 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    if 0 >= mem[_1597]:
                        revert with 'NH{q', 50
                    mem[_1597 + 32] = address(arg3)
                    if 1 >= mem[_1597]:
                        revert with 'NH{q', 50
                    mem[_1597 + 64] = address(arg2)
                    if 2 >= mem[_1597]:
                        revert with 'NH{q', 50
                    mem[_1597 + 96] = address(arg4)
                    if block.timestamp > -301:
                        revert with 'NH{q', 17
                    mem[_1597 + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_1597 + 132] = _1555
                    mem[_1597 + 164] = 1
                    mem[_1597 + 196] = 160
                    mem[_1597 + 292] = mem[_1597]
                    idx = 0
                    s = _1597 + 32
                    t = _1597 + 324
                    while idx < mem[_1597]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1597 + 228] = this.address
                    mem[_1597 + 260] = block.timestamp + 300
                    require ext_code.size(address(arg1))
                    call address(arg1).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1597 + (32 * mem[_1597]) + -mem[64] + 320]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1861 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1877 = mem[_1861]
                    require mem[_1861] <= test266151307()
                    require _1861 + mem[_1861] + 31 < _1861 + return_data.size
                    _1893 = mem[_1861 + mem[_1861]]
                    if mem[_1861 + mem[_1861]] > test266151307():
                        revert with 'NH{q', 65
                    if _1861 + ceil32(return_data.size) + floor32(mem[_1861 + mem[_1861]]) + 1 > test266151307() or floor32(mem[_1861 + mem[_1861]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _1861 + ceil32(return_data.size) + floor32(mem[_1861 + mem[_1861]]) + 1
                    mem[_1861 + ceil32(return_data.size)] = _1893
                    require _1877 + (32 * _1893) + 32 <= return_data.size
                    idx = 0
                    s = _1861 + _1877 + 32
                    t = _1861 + ceil32(return_data.size) + 32
                    while idx < _1893:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
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
            _729 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
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
                _1546 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1554 = mem[_1546]
                require mem[_1546] == mem[_1546]
                mem[mem[64] + 4] = address(arg1)
                mem[mem[64] + 36] = _1554
                require ext_code.size(address(arg3))
                call address(arg3).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), _1554
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1578 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1578] == bool(mem[_1578])
                if address(arg2) == address(arg4):
                    _1596 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if 0 >= mem[_1596]:
                        revert with 'NH{q', 50
                    mem[_1596 + 32] = address(arg3)
                    if 1 >= mem[_1596]:
                        revert with 'NH{q', 50
                    mem[_1596 + 64] = address(arg2)
                    if block.timestamp > -301:
                        revert with 'NH{q', 17
                    mem[_1596 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_1596 + 100] = _1554
                    mem[_1596 + 132] = 1
                    mem[_1596 + 164] = 160
                    mem[_1596 + 260] = mem[_1596]
                    idx = 0
                    s = _1596 + 32
                    t = _1596 + 292
                    while idx < mem[_1596]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1596 + 196] = this.address
                    mem[_1596 + 228] = block.timestamp + 300
                    require ext_code.size(address(arg1))
                    call address(arg1).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1596 + (32 * mem[_1596]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1860 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1876 = mem[_1860]
                    require mem[_1860] <= test266151307()
                    require _1860 + mem[_1860] + 31 < _1860 + return_data.size
                    _1892 = mem[_1860 + mem[_1860]]
                    if mem[_1860 + mem[_1860]] > test266151307():
                        revert with 'NH{q', 65
                    if _1860 + ceil32(return_data.size) + floor32(mem[_1860 + mem[_1860]]) + 1 > test266151307() or floor32(mem[_1860 + mem[_1860]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _1860 + ceil32(return_data.size) + floor32(mem[_1860 + mem[_1860]]) + 1
                    mem[_1860 + ceil32(return_data.size)] = _1892
                    require _1876 + (32 * _1892) + 32 <= return_data.size
                    idx = 0
                    s = _1860 + _1876 + 32
                    t = _1860 + ceil32(return_data.size) + 32
                    while idx < _1892:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                else:
                    _1595 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    if 0 >= mem[_1595]:
                        revert with 'NH{q', 50
                    mem[_1595 + 32] = address(arg3)
                    if 1 >= mem[_1595]:
                        revert with 'NH{q', 50
                    mem[_1595 + 64] = address(arg2)
                    if 2 >= mem[_1595]:
                        revert with 'NH{q', 50
                    mem[_1595 + 96] = address(arg4)
                    if block.timestamp > -301:
                        revert with 'NH{q', 17
                    mem[_1595 + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_1595 + 132] = _1554
                    mem[_1595 + 164] = 1
                    mem[_1595 + 196] = 160
                    mem[_1595 + 292] = mem[_1595]
                    idx = 0
                    s = _1595 + 32
                    t = _1595 + 324
                    while idx < mem[_1595]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1595 + 228] = this.address
                    mem[_1595 + 260] = block.timestamp + 300
                    require ext_code.size(address(arg1))
                    call address(arg1).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1595 + (32 * mem[_1595]) + -mem[64] + 320]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1859 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1875 = mem[_1859]
                    require mem[_1859] <= test266151307()
                    require _1859 + mem[_1859] + 31 < _1859 + return_data.size
                    _1891 = mem[_1859 + mem[_1859]]
                    if mem[_1859 + mem[_1859]] > test266151307():
                        revert with 'NH{q', 65
                    if _1859 + ceil32(return_data.size) + floor32(mem[_1859 + mem[_1859]]) + 1 > test266151307() or floor32(mem[_1859 + mem[_1859]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _1859 + ceil32(return_data.size) + floor32(mem[_1859 + mem[_1859]]) + 1
                    mem[_1859 + ceil32(return_data.size)] = _1891
                    require _1875 + (32 * _1891) + 32 <= return_data.size
                    idx = 0
                    s = _1859 + _1875 + 32
                    t = _1859 + ceil32(return_data.size) + 32
                    while idx < _1891:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
            else:
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
                _1545 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1553 = mem[_1545]
                require mem[_1545] == mem[_1545]
                mem[mem[64] + 4] = address(arg1)
                mem[mem[64] + 36] = _1553
                require ext_code.size(address(arg3))
                call address(arg3).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), _1553
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1577 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1577] == bool(mem[_1577])
                if address(arg2) == address(arg4):
                    _1594 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if 0 >= mem[_1594]:
                        revert with 'NH{q', 50
                    mem[_1594 + 32] = address(arg3)
                    if 1 >= mem[_1594]:
                        revert with 'NH{q', 50
                    mem[_1594 + 64] = address(arg2)
                    if block.timestamp > -301:
                        revert with 'NH{q', 17
                    mem[_1594 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_1594 + 100] = _1553
                    mem[_1594 + 132] = 1
                    mem[_1594 + 164] = 160
                    mem[_1594 + 260] = mem[_1594]
                    idx = 0
                    s = _1594 + 32
                    t = _1594 + 292
                    while idx < mem[_1594]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1594 + 196] = this.address
                    mem[_1594 + 228] = block.timestamp + 300
                    require ext_code.size(address(arg1))
                    call address(arg1).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1594 + (32 * mem[_1594]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1858 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1874 = mem[_1858]
                    require mem[_1858] <= test266151307()
                    require _1858 + mem[_1858] + 31 < _1858 + return_data.size
                    _1890 = mem[_1858 + mem[_1858]]
                    if mem[_1858 + mem[_1858]] > test266151307():
                        revert with 'NH{q', 65
                    if _1858 + ceil32(return_data.size) + floor32(mem[_1858 + mem[_1858]]) + 1 > test266151307() or floor32(mem[_1858 + mem[_1858]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _1858 + ceil32(return_data.size) + floor32(mem[_1858 + mem[_1858]]) + 1
                    mem[_1858 + ceil32(return_data.size)] = _1890
                    require _1874 + (32 * _1890) + 32 <= return_data.size
                    idx = 0
                    s = _1858 + _1874 + 32
                    t = _1858 + ceil32(return_data.size) + 32
                    while idx < _1890:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                else:
                    _1593 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    if 0 >= mem[_1593]:
                        revert with 'NH{q', 50
                    mem[_1593 + 32] = address(arg3)
                    if 1 >= mem[_1593]:
                        revert with 'NH{q', 50
                    mem[_1593 + 64] = address(arg2)
                    if 2 >= mem[_1593]:
                        revert with 'NH{q', 50
                    mem[_1593 + 96] = address(arg4)
                    if block.timestamp > -301:
                        revert with 'NH{q', 17
                    mem[_1593 + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_1593 + 132] = _1553
                    mem[_1593 + 164] = 1
                    mem[_1593 + 196] = 160
                    mem[_1593 + 292] = mem[_1593]
                    idx = 0
                    s = _1593 + 32
                    t = _1593 + 324
                    while idx < mem[_1593]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1593 + 228] = this.address
                    mem[_1593 + 260] = block.timestamp + 300
                    require ext_code.size(address(arg1))
                    call address(arg1).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1593 + (32 * mem[_1593]) + -mem[64] + 320]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1857 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1873 = mem[_1857]
                    require mem[_1857] <= test266151307()
                    require _1857 + mem[_1857] + 31 < _1857 + return_data.size
                    _1889 = mem[_1857 + mem[_1857]]
                    if mem[_1857 + mem[_1857]] > test266151307():
                        revert with 'NH{q', 65
                    if _1857 + ceil32(return_data.size) + floor32(mem[_1857 + mem[_1857]]) + 1 > test266151307() or floor32(mem[_1857 + mem[_1857]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _1857 + ceil32(return_data.size) + floor32(mem[_1857 + mem[_1857]]) + 1
                    mem[_1857 + ceil32(return_data.size)] = _1889
                    require _1873 + (32 * _1889) + 32 <= return_data.size
                    idx = 0
                    s = _1857 + _1873 + 32
                    t = _1857 + ceil32(return_data.size) + 32
                    while idx < _1889:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
    revert with 0, 'success'
}



}
