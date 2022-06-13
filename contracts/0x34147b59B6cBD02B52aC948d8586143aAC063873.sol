contract main {




// =====================  Runtime code  =====================


address owner;
address sub_2b738e92Address;
address WETHAddress;
uint256 sub_4b4aeb52;
uint256 sub_24968eca;
uint256 sub_2c95b3c2;
uint256 sub_1242ce56;
mapping of uint8 stor7;

function sub_1242ce56(?) {
    return sub_1242ce56
}

function sub_24968eca(?) {
    return sub_24968eca
}

function sub_2b738e92(?) {
    return sub_2b738e92Address
}

function sub_2c95b3c2(?) {
    return sub_2c95b3c2
}

function sub_4b4aeb52(?) {
    return sub_4b4aeb52
}

function WhiteList(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor7[arg1])
}

function owner() {
    return owner
}

function WETH() {
    return WETHAddress
}

function _fallback() payable {
  stop
}

function deposit_ETH() payable {
  stop
}

function withdraw_ETH(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1:
        call msg.sender with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
    else:
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function Initialize(address arg1, address arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_2b738e92Address = arg1
    WETHAddress = arg2
    sub_24968eca = arg3
    stor7[address(msg.sender)] = 1
    sub_2c95b3c2 = arg4
    if 100 < sub_2c95b3c2:
        revert with 'NH{q', 17
    sub_1242ce56 = -sub_2c95b3c2 + 100
}

function sub_00e495f4(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call address(arg1).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_2b738e92Address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_aaeff9c2(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2:
        call address(arg1).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, arg2
    else:
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        call address(arg1).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function setWhitelist(address[] arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + 97 > test266151307() or floor32(arg1.length) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = arg1 + 36
    s = 128
    while idx < arg1 + (32 * arg1.length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 7
        stor7[mem[(32 * idx) + 140 len 20]] = uint8(arg2)
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sell(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    mem[0] = msg.sender
    mem[32] = 7
    if not stor7[address(msg.sender)]:
        revert with 0, 'You can't do this dude.'
    mem[96] = 2
    mem[128] = arg1
    mem[160] = arg2
    if arg2 != WETHAddress:
        mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[196] = arg3
        mem[228] = arg4
        mem[260] = 160
        mem[356] = 2
        idx = 0
        s = 128
        t = 388
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[292] = this.address
        mem[324] = block.timestamp
        call sub_2b738e92Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg3, arg4, Array(len=2, data=mem[388 len 64]), address(this.address), block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _31 = mem[192 len 4], Mask(224, 32, arg3) >> 32
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 223 < return_data.size + 192
        _33 = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
        if mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
            revert with 'NH{q', 65
        if ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
        require _31 + (32 * _33) + 32 <= return_data.size
        idx = _31 + 224
        s = ceil32(return_data.size) + 224
        while idx < _31 + (32 * _33) + 224:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
    else:
        mem[192] = 0x676528d100000000000000000000000000000000000000000000000000000000
        mem[196] = arg3
        mem[228] = arg4
        mem[260] = 160
        mem[356] = 2
        idx = 0
        s = 128
        t = 388
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[292] = this.address
        mem[324] = block.timestamp
        call sub_2b738e92Address.swapExactTokensForAVAX(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg3, arg4, Array(len=2, data=mem[388 len 64]), address(this.address), block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _32 = mem[192 len 4], Mask(224, 32, arg3) >> 32
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 223 < return_data.size + 192
        _34 = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
        if mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
            revert with 'NH{q', 65
        if ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or floor32(mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = ceil32(return_data.size) + floor32(mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
        require _32 + (32 * _34) + 32 <= return_data.size
        idx = _32 + 224
        s = ceil32(return_data.size) + 224
        while idx < _32 + (32 * _34) + 224:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
}

function sub_0d390052(?) {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    mem[0] = msg.sender
    mem[32] = 7
    if not stor7[address(msg.sender)]:
        revert with 0, 'You can't do this dude.'
    mem[96] = 2
    mem[128] = address(arg1)
    mem[160] = address(arg2)
    mem[192] = 2
    mem[224] = address(arg2)
    mem[256] = address(arg1)
    mem[292] = sub_2b738e92Address
    mem[324] = sub_4b4aeb52
    call address(arg2).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_2b738e92Address, sub_4b4aeb52
    mem[288] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Approve failed'
    if address(arg1) == WETHAddress:
        mem[ceil32(return_data.size) + 288] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 292] = arg4
        mem[ceil32(return_data.size) + 324] = 128
        mem[ceil32(return_data.size) + 420] = 2
        idx = 0
        s = 128
        t = ceil32(return_data.size) + 452
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(return_data.size) + 356] = this.address
        mem[ceil32(return_data.size) + 388] = block.timestamp
        call sub_2b738e92Address.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value arg3 wei
             gas gas_remaining wei
            args arg4, Array(len=2, data=mem[ceil32(return_data.size) + 452 len 64]), address(this.address), block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 288
        require return_data.size >= 32
        _52 = mem[ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg4) >> 32
        require mem[ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg4) >> 32 + 319 < ceil32(return_data.size) + return_data.size + 288
        _54 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg4) >> 32 + 288]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg4) >> 32 + 288] > test266151307():
            revert with 'NH{q', 65
        if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg4) >> 32 + 288]) + 289 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg4) >> 32 + 288]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg4) >> 32 + 288]) + 289
        mem[(2 * ceil32(return_data.size)) + 288] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg4) >> 32 + 288]
        require _52 + (32 * _54) + 32 <= return_data.size
        idx = ceil32(return_data.size) + _52 + 320
        s = (2 * ceil32(return_data.size)) + 320
        while idx < ceil32(return_data.size) + _52 + (32 * _54) + 320:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
        if 1 >= _54:
            revert with 'NH{q', 50
        _90 = mem[(2 * ceil32(return_data.size)) + 352]
        if mem[(2 * ceil32(return_data.size)) + 352] and sub_24968eca > -1 / mem[(2 * ceil32(return_data.size)) + 352]:
            revert with 'NH{q', 17
        if 0 >= _54:
            revert with 'NH{q', 50
        _94 = mem[(2 * ceil32(return_data.size)) + 320]
        if mem[(2 * ceil32(return_data.size)) + 320] and sub_24968eca > -1 / mem[(2 * ceil32(return_data.size)) + 320]:
            revert with 'NH{q', 17
        if mem[(2 * ceil32(return_data.size)) + 320] * sub_24968eca / 10000 and sub_1242ce56 > -1 / mem[(2 * ceil32(return_data.size)) + 320] * sub_24968eca / 10000:
            revert with 'NH{q', 17
        mem[mem[64]] = 0x676528d100000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _90 * sub_24968eca / 10000
        mem[mem[64] + 36] = _94 * sub_24968eca / 10000 * sub_1242ce56 / 100
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = 2
        idx = 0
        s = 224
        t = mem[64] + 196
        while idx < mem[192]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 100] = this.address
        mem[mem[64] + 132] = block.timestamp
        call sub_2b738e92Address.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len 96], address(this.address), block.timestamp, mem[mem[64] + 164 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _118 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _120 = mem[_118]
        require mem[_118] <= test266151307()
        require _118 + mem[_118] + 31 < _118 + return_data.size
        _122 = mem[_118 + mem[_118]]
        if mem[_118 + mem[_118]] > test266151307():
            revert with 'NH{q', 65
        if _118 + ceil32(return_data.size) + floor32(mem[_118 + mem[_118]]) + 1 > test266151307() or floor32(mem[_118 + mem[_118]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _118 + ceil32(return_data.size) + floor32(mem[_118 + mem[_118]]) + 1
        mem[_118 + ceil32(return_data.size)] = _122
        require _120 + (32 * _122) + 32 <= return_data.size
        idx = _118 + _120 + 32
        s = _118 + ceil32(return_data.size) + 32
        while idx < _118 + _120 + (32 * _122) + 32:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
    else:
        mem[ceil32(return_data.size) + 288] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 292] = arg3
        mem[ceil32(return_data.size) + 324] = arg4
        mem[ceil32(return_data.size) + 356] = 160
        mem[ceil32(return_data.size) + 452] = 2
        idx = 0
        s = 128
        t = ceil32(return_data.size) + 484
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(return_data.size) + 388] = this.address
        mem[ceil32(return_data.size) + 420] = block.timestamp
        call sub_2b738e92Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg3, arg4, Array(len=2, data=mem[ceil32(return_data.size) + 484 len 64]), address(this.address), block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 288
        require return_data.size >= 32
        _51 = mem[ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg3) >> 32
        require mem[ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg3) >> 32 + 319 < ceil32(return_data.size) + return_data.size + 288
        _53 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288] > test266151307():
            revert with 'NH{q', 65
        if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 289
        mem[(2 * ceil32(return_data.size)) + 288] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg3) >> 32 + 288]
        require _51 + (32 * _53) + 32 <= return_data.size
        idx = ceil32(return_data.size) + _51 + 320
        s = (2 * ceil32(return_data.size)) + 320
        while idx < ceil32(return_data.size) + _51 + (32 * _53) + 320:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
        if 1 >= _53:
            revert with 'NH{q', 50
        _89 = mem[(2 * ceil32(return_data.size)) + 352]
        if mem[(2 * ceil32(return_data.size)) + 352] and sub_24968eca > -1 / mem[(2 * ceil32(return_data.size)) + 352]:
            revert with 'NH{q', 17
        if 0 >= _53:
            revert with 'NH{q', 50
        _93 = mem[(2 * ceil32(return_data.size)) + 320]
        if mem[(2 * ceil32(return_data.size)) + 320] and sub_24968eca > -1 / mem[(2 * ceil32(return_data.size)) + 320]:
            revert with 'NH{q', 17
        if mem[(2 * ceil32(return_data.size)) + 320] * sub_24968eca / 10000 and sub_1242ce56 > -1 / mem[(2 * ceil32(return_data.size)) + 320] * sub_24968eca / 10000:
            revert with 'NH{q', 17
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _89 * sub_24968eca / 10000
        mem[mem[64] + 36] = _93 * sub_24968eca / 10000 * sub_1242ce56 / 100
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = 2
        idx = 0
        s = 224
        t = mem[64] + 196
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 100] = this.address
        mem[mem[64] + 132] = block.timestamp
        call sub_2b738e92Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args _89 * sub_24968eca / 10000, _93 * sub_24968eca / 10000 * sub_1242ce56 / 100, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _117 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _119 = mem[_117]
        require mem[_117] <= test266151307()
        require _117 + mem[_117] + 31 < _117 + return_data.size
        _121 = mem[_117 + mem[_117]]
        if mem[_117 + mem[_117]] > test266151307():
            revert with 'NH{q', 65
        if _117 + ceil32(return_data.size) + floor32(mem[_117 + mem[_117]]) + 1 > test266151307() or floor32(mem[_117 + mem[_117]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _117 + ceil32(return_data.size) + floor32(mem[_117 + mem[_117]]) + 1
        mem[_117 + ceil32(return_data.size)] = _121
        require _119 + (32 * _121) + 32 <= return_data.size
        idx = _117 + _119 + 32
        s = _117 + ceil32(return_data.size) + 32
        while idx < _117 + _119 + (32 * _121) + 32:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
}



}
