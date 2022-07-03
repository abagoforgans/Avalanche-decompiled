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
        _194 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _196 = mem[_194]
        require mem[_194] == mem[_194]
        mem[mem[64] + 4] = address(arg1)
        mem[mem[64] + 36] = _196
        require ext_code.size(address(arg2))
        call address(arg2).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), _196
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _202 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_202] == bool(mem[_202])
        if address(arg2) == address(arg4):
            _208 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if 0 >= mem[_208]:
                revert with 'NH{q', 50
            mem[_208 + 32] = address(arg2)
            if 1 >= mem[_208]:
                revert with 'NH{q', 50
            mem[_208 + 64] = address(arg3)
            if block.timestamp > -301:
                revert with 'NH{q', 17
            mem[_208 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[_208 + 100] = _196
            mem[_208 + 132] = 1
            mem[_208 + 164] = 160
            mem[_208 + 260] = mem[_208]
            idx = 0
            s = _208 + 32
            t = _208 + 292
            while idx < mem[_208]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_208 + 196] = this.address
            mem[_208 + 228] = block.timestamp + 300
            require ext_code.size(address(arg1))
            call address(arg1).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _208 + (32 * mem[_208]) + -mem[64] + 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _274 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _278 = mem[_274]
            require mem[_274] <= test266151307()
            require _274 + mem[_274] + 31 < _274 + return_data.size
            _282 = mem[_274 + mem[_274]]
            if mem[_274 + mem[_274]] > test266151307():
                revert with 'NH{q', 65
            if _274 + ceil32(return_data.size) + floor32(mem[_274 + mem[_274]]) + 1 > test266151307() or floor32(mem[_274 + mem[_274]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _274 + ceil32(return_data.size) + floor32(mem[_274 + mem[_274]]) + 1
            mem[_274 + ceil32(return_data.size)] = _282
            require _278 + (32 * _282) + 32 <= return_data.size
            idx = 0
            s = _274 + _278 + 32
            t = _274 + ceil32(return_data.size) + 32
            while idx < _282:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
        else:
            _207 = mem[64]
            mem[mem[64]] = 3
            mem[64] = mem[64] + 128
            if 0 >= mem[_207]:
                revert with 'NH{q', 50
            mem[_207 + 32] = address(arg4)
            if 1 >= mem[_207]:
                revert with 'NH{q', 50
            mem[_207 + 64] = address(arg2)
            if 2 >= mem[_207]:
                revert with 'NH{q', 50
            mem[_207 + 96] = address(arg3)
            if block.timestamp > -301:
                revert with 'NH{q', 17
            mem[_207 + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[_207 + 132] = _196
            mem[_207 + 164] = 1
            mem[_207 + 196] = 160
            mem[_207 + 292] = mem[_207]
            idx = 0
            s = _207 + 32
            t = _207 + 324
            while idx < mem[_207]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_207 + 228] = this.address
            mem[_207 + 260] = block.timestamp + 300
            require ext_code.size(address(arg1))
            call address(arg1).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _207 + (32 * mem[_207]) + -mem[64] + 320]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _273 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _277 = mem[_273]
            require mem[_273] <= test266151307()
            require _273 + mem[_273] + 31 < _273 + return_data.size
            _281 = mem[_273 + mem[_273]]
            if mem[_273 + mem[_273]] > test266151307():
                revert with 'NH{q', 65
            if _273 + ceil32(return_data.size) + floor32(mem[_273 + mem[_273]]) + 1 > test266151307() or floor32(mem[_273 + mem[_273]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _273 + ceil32(return_data.size) + floor32(mem[_273 + mem[_273]]) + 1
            mem[_273 + ceil32(return_data.size)] = _281
            require _277 + (32 * _281) + 32 <= return_data.size
            idx = 0
            s = _273 + _277 + 32
            t = _273 + ceil32(return_data.size) + 32
            while idx < _281:
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
        _193 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _195 = mem[_193]
        require mem[_193] == mem[_193]
        mem[mem[64] + 4] = address(arg1)
        mem[mem[64] + 36] = _195
        require ext_code.size(address(arg2))
        call address(arg2).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), _195
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _201 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_201] == bool(mem[_201])
        if address(arg2) == address(arg4):
            _206 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if 0 >= mem[_206]:
                revert with 'NH{q', 50
            mem[_206 + 32] = address(arg2)
            if 1 >= mem[_206]:
                revert with 'NH{q', 50
            mem[_206 + 64] = address(arg3)
            if block.timestamp > -301:
                revert with 'NH{q', 17
            mem[_206 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[_206 + 100] = _195
            mem[_206 + 132] = 1
            mem[_206 + 164] = 160
            mem[_206 + 260] = mem[_206]
            idx = 0
            s = _206 + 32
            t = _206 + 292
            while idx < mem[_206]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_206 + 196] = this.address
            mem[_206 + 228] = block.timestamp + 300
            require ext_code.size(address(arg1))
            call address(arg1).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _206 + (32 * mem[_206]) + -mem[64] + 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _272 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _276 = mem[_272]
            require mem[_272] <= test266151307()
            require _272 + mem[_272] + 31 < _272 + return_data.size
            _280 = mem[_272 + mem[_272]]
            if mem[_272 + mem[_272]] > test266151307():
                revert with 'NH{q', 65
            if _272 + ceil32(return_data.size) + floor32(mem[_272 + mem[_272]]) + 1 > test266151307() or floor32(mem[_272 + mem[_272]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _272 + ceil32(return_data.size) + floor32(mem[_272 + mem[_272]]) + 1
            mem[_272 + ceil32(return_data.size)] = _280
            require _276 + (32 * _280) + 32 <= return_data.size
            idx = 0
            s = _272 + _276 + 32
            t = _272 + ceil32(return_data.size) + 32
            while idx < _280:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
        else:
            _205 = mem[64]
            mem[mem[64]] = 3
            mem[64] = mem[64] + 128
            if 0 >= mem[_205]:
                revert with 'NH{q', 50
            mem[_205 + 32] = address(arg4)
            if 1 >= mem[_205]:
                revert with 'NH{q', 50
            mem[_205 + 64] = address(arg2)
            if 2 >= mem[_205]:
                revert with 'NH{q', 50
            mem[_205 + 96] = address(arg3)
            if block.timestamp > -301:
                revert with 'NH{q', 17
            mem[_205 + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[_205 + 132] = _195
            mem[_205 + 164] = 1
            mem[_205 + 196] = 160
            mem[_205 + 292] = mem[_205]
            idx = 0
            s = _205 + 32
            t = _205 + 324
            while idx < mem[_205]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_205 + 228] = this.address
            mem[_205 + 260] = block.timestamp + 300
            require ext_code.size(address(arg1))
            call address(arg1).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _205 + (32 * mem[_205]) + -mem[64] + 320]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _271 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _275 = mem[_271]
            require mem[_271] <= test266151307()
            require _271 + mem[_271] + 31 < _271 + return_data.size
            _279 = mem[_271 + mem[_271]]
            if mem[_271 + mem[_271]] > test266151307():
                revert with 'NH{q', 65
            if _271 + ceil32(return_data.size) + floor32(mem[_271 + mem[_271]]) + 1 > test266151307() or floor32(mem[_271 + mem[_271]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _271 + ceil32(return_data.size) + floor32(mem[_271 + mem[_271]]) + 1
            mem[_271 + ceil32(return_data.size)] = _279
            require _275 + (32 * _279) + 32 <= return_data.size
            idx = 0
            s = _271 + _275 + 32
            t = _271 + ceil32(return_data.size) + 32
            while idx < _279:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
    revert with 0, 'buy complete'
}



}
