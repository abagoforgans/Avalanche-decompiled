contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
uint256 stor2;

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
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

function withdraw(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function execute(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    staticcall arg1.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    stor1 = ext_call.return_data[12 len 20]
    if not arg2:
        stor2 = 1
    else:
        if arg3:
            revert with 0, 'one of the amounts must be 0'
        if not arg2:
            stor2 = 1
        else:
            stor2 = 0
    require ext_code.size(arg1)
    call arg1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args arg2, arg3, address(this.address), Array(len=arg4.length, data=arg4[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function joeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    if arg1 != this.address:
        revert with 0, 'nice try'
    require arg4.length >= 128
    require cd[(arg4 + 36)] <= test266151307()
    require arg4 + cd[(arg4 + 36)] + 67 < arg4 + arg4.length + 36
    if cd[(arg4 + cd[(arg4 + 36)] + 36)] > test266151307():
        revert with 'NH{q', 65
    if floor32(cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97 > test266151307() or floor32(cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = cd[(arg4 + cd[(arg4 + 36)] + 36)]
    require cd[(arg4 + 36)] + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 68 <= arg4.length + 36
    idx = arg4 + cd[(arg4 + 36)] + 68
    s = 128
    while idx < arg4 + cd[(arg4 + 36)] + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 68:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[(arg4 + 68)] <= test266151307()
    require arg4 + cd[(arg4 + 68)] + 67 < arg4 + arg4.length + 36
    if cd[(arg4 + cd[(arg4 + 68)] + 36)] > test266151307():
        revert with 'NH{q', 65
    if floor32(cd[(arg4 + cd[(arg4 + 36)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 98 > test266151307() or floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 98 < 97:
        revert with 'NH{q', 65
    mem[64] = floor32(cd[(arg4 + cd[(arg4 + 36)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 98
    mem[floor32(cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97] = cd[(arg4 + cd[(arg4 + 68)] + 36)]
    require cd[(arg4 + 68)] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 68 <= arg4.length + 36
    idx = arg4 + cd[(arg4 + 68)] + 68
    s = floor32(cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 129
    while idx < arg4 + cd[(arg4 + 68)] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 68:
        require cd[idx] <= test266151307()
        require arg4 + cd[(arg4 + 68)] + cd[idx] + 99 < arg4 + arg4.length + 36
        if cd[(arg4 + cd[(arg4 + 68)] + cd[idx] + 68)] > test266151307():
            revert with 'NH{q', 65
        _106 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(arg4 + cd[(arg4 + 68)] + cd[idx] + 68)])) + 1 > test266151307() or mem[64] + ceil32(ceil32(cd[(arg4 + cd[(arg4 + 68)] + cd[idx] + 68)])) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(arg4 + cd[(arg4 + 68)] + cd[idx] + 68)])) + 1
        mem[_106] = cd[(arg4 + cd[(arg4 + 68)] + cd[idx] + 68)]
        require cd[(arg4 + 68)] + cd[idx] + cd[(arg4 + cd[(arg4 + 68)] + cd[idx] + 68)] + 100 <= arg4.length + 36
        mem[_106 + 32 len cd[(arg4 + cd[(arg4 + 68)] + cd[idx] + 68)]] = call.data[arg4 + cd[(arg4 + 68)] + cd[idx] + 100 len cd[(arg4 + cd[(arg4 + 68)] + cd[idx] + 68)]]
        mem[_106 + cd[(arg4 + cd[(arg4 + 68)] + cd[idx] + 68)] + 32] = 0
        mem[s] = _106
        idx = idx + 32
        s = s + 32
        continue 
    require cd[(arg4 + 100)] <= test266151307()
    require arg4 + cd[(arg4 + 100)] + 67 < arg4 + arg4.length + 36
    if cd[(arg4 + cd[(arg4 + 100)] + 36)] > test266151307():
        revert with 'NH{q', 65
    _105 = mem[64]
    if mem[64] + floor32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 1 > test266151307() or mem[64] + floor32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 1 < mem[64]:
        revert with 'NH{q', 65
    mem[64] = mem[64] + floor32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 1
    mem[_105] = cd[(arg4 + cd[(arg4 + 100)] + 36)]
    require cd[(arg4 + 100)] + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 68 <= arg4.length + 36
    idx = arg4 + cd[(arg4 + 100)] + 68
    s = _105 + 32
    while idx < arg4 + cd[(arg4 + 100)] + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 68:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[(arg4 + 132)] <= test266151307()
    require arg4 + cd[(arg4 + 132)] + 67 < arg4 + arg4.length + 36
    if cd[(arg4 + cd[(arg4 + 132)] + 36)] > test266151307():
        revert with 'NH{q', 65
    _174 = mem[64]
    if mem[64] + floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 1 > test266151307() or mem[64] + floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 1 < mem[64]:
        revert with 'NH{q', 65
    mem[64] = mem[64] + floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 1
    mem[_174] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
    require cd[(arg4 + 132)] + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 68 <= arg4.length + 36
    idx = arg4 + cd[(arg4 + 132)] + 68
    s = _174 + 32
    while idx < arg4 + cd[(arg4 + 132)] + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 68:
        require cd[idx] == cd[idx]
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    staticcall msg.sender.token0() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _243 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _244 = mem[_243]
    require mem[_243] == mem[_243 + 12 len 20]
    staticcall msg.sender.token1() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _247 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _248 = mem[_247]
    require mem[_247] == mem[_247 + 12 len 20]
    mem[mem[64] + 4] = address(_244)
    mem[mem[64] + 36] = address(_248)
    staticcall stor1.0xe6a43905 with:
            gas gas_remaining wei
           args address(_244), address(_248)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _251 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_251] == mem[_251 + 12 len 20]
    if mem[_251 + 12 len 20] != msg.sender:
        revert with 0, 'nice try'
    require mem[96] == mem[floor32(cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97]
    _307 = mem[96]
    idx = 0
    while idx < _307:
        if idx >= mem[_105]:
            revert with 'NH{q', 50
        _309 = mem[(32 * idx) + _105 + 32]
        if idx >= mem[96]:
            revert with 'NH{q', 50
        if idx >= mem[_174]:
            revert with 'NH{q', 50
        _313 = mem[(32 * idx) + _174 + 32]
        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
        mem[mem[64] + 36] = _313
        call address(_309).0xa9059cbb with:
             gas gas_remaining wei
            args mem[mem[64] + 4], _313
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _316 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_316] == bool(mem[_316])
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _321 = mem[(32 * idx) + 128]
        if idx >= mem[floor32(cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97]:
            revert with 'NH{q', 50
        _323 = mem[(32 * idx) + floor32(cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 129]
        _324 = mem[64]
        _329 = mem[mem[(32 * idx) + floor32(cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 129]]
        s = 0
        while s < _329:
            mem[_324 + s] = mem[_323 + s + 32]
            _307 = mem[96]
            s = s + 32
            continue 
        if ceil32(_329) <= _329:
            call address(_321).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _324 + _329 + -mem[64] - 4]
            if return_data.size:
                _359 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_359] = return_data.size
                mem[_359 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        else:
            mem[_324 + _329] = 0
            call address(_321).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _324 + _329 + -mem[64] - 4]
            if return_data.size:
                _361 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_361] = return_data.size
                mem[_361 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'call failed'
        if idx == -1:
            revert with 'NH{q', 17
        _307 = mem[96]
        idx = idx + 1
        continue 
    if not stor2:
        if arg2 and 1000 > -1 / arg2:
            revert with 'NH{q', 17
        mem[mem[64] + 4] = this.address
        staticcall address(_244).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _327 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_327] == mem[_327]
        if mem[_327] <= 1000 * arg2 / 997:
            revert with 0, 'was not profitable'
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = 1000 * arg2 / 997
        call address(_244).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, 1000 * arg2 / 997
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _353 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_353] == bool(mem[_353])
    else:
        if arg3 and 1000 > -1 / arg3:
            revert with 'NH{q', 17
        mem[mem[64] + 4] = this.address
        staticcall address(_248).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _328 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_328] == mem[_328]
        if mem[_328] <= 1000 * arg3 / 997:
            revert with 0, 'was not profitable'
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = 1000 * arg3 / 997
        call address(_248).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, 1000 * arg3 / 997
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _354 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_354] == bool(mem[_354])
}

function uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    if arg1 != this.address:
        revert with 0, 'nice try'
    require arg4.length >= 128
    require cd[(arg4 + 36)] <= test266151307()
    require arg4 + cd[(arg4 + 36)] + 67 < arg4 + arg4.length + 36
    if cd[(arg4 + cd[(arg4 + 36)] + 36)] > test266151307():
        revert with 'NH{q', 65
    if floor32(cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97 > test266151307() or floor32(cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = cd[(arg4 + cd[(arg4 + 36)] + 36)]
    require cd[(arg4 + 36)] + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 68 <= arg4.length + 36
    idx = arg4 + cd[(arg4 + 36)] + 68
    s = 128
    while idx < arg4 + cd[(arg4 + 36)] + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 68:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[(arg4 + 68)] <= test266151307()
    require arg4 + cd[(arg4 + 68)] + 67 < arg4 + arg4.length + 36
    if cd[(arg4 + cd[(arg4 + 68)] + 36)] > test266151307():
        revert with 'NH{q', 65
    if floor32(cd[(arg4 + cd[(arg4 + 36)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 98 > test266151307() or floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 98 < 97:
        revert with 'NH{q', 65
    mem[64] = floor32(cd[(arg4 + cd[(arg4 + 36)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 98
    mem[floor32(cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97] = cd[(arg4 + cd[(arg4 + 68)] + 36)]
    require cd[(arg4 + 68)] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 68 <= arg4.length + 36
    idx = arg4 + cd[(arg4 + 68)] + 68
    s = floor32(cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 129
    while idx < arg4 + cd[(arg4 + 68)] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 68:
        require cd[idx] <= test266151307()
        require arg4 + cd[(arg4 + 68)] + cd[idx] + 99 < arg4 + arg4.length + 36
        if cd[(arg4 + cd[(arg4 + 68)] + cd[idx] + 68)] > test266151307():
            revert with 'NH{q', 65
        _118 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(arg4 + cd[(arg4 + 68)] + cd[idx] + 68)])) + 1 > test266151307() or mem[64] + ceil32(ceil32(cd[(arg4 + cd[(arg4 + 68)] + cd[idx] + 68)])) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(arg4 + cd[(arg4 + 68)] + cd[idx] + 68)])) + 1
        mem[_118] = cd[(arg4 + cd[(arg4 + 68)] + cd[idx] + 68)]
        require cd[(arg4 + 68)] + cd[idx] + cd[(arg4 + cd[(arg4 + 68)] + cd[idx] + 68)] + 100 <= arg4.length + 36
        mem[_118 + 32 len cd[(arg4 + cd[(arg4 + 68)] + cd[idx] + 68)]] = call.data[arg4 + cd[(arg4 + 68)] + cd[idx] + 100 len cd[(arg4 + cd[(arg4 + 68)] + cd[idx] + 68)]]
        mem[_118 + cd[(arg4 + cd[(arg4 + 68)] + cd[idx] + 68)] + 32] = 0
        mem[s] = _118
        idx = idx + 32
        s = s + 32
        continue 
    require cd[(arg4 + 100)] <= test266151307()
    require arg4 + cd[(arg4 + 100)] + 67 < arg4 + arg4.length + 36
    if cd[(arg4 + cd[(arg4 + 100)] + 36)] > test266151307():
        revert with 'NH{q', 65
    _117 = mem[64]
    if mem[64] + floor32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 1 > test266151307() or mem[64] + floor32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 1 < mem[64]:
        revert with 'NH{q', 65
    mem[64] = mem[64] + floor32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 1
    mem[_117] = cd[(arg4 + cd[(arg4 + 100)] + 36)]
    require cd[(arg4 + 100)] + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 68 <= arg4.length + 36
    idx = arg4 + cd[(arg4 + 100)] + 68
    s = _117 + 32
    while idx < arg4 + cd[(arg4 + 100)] + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 68:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[(arg4 + 132)] <= test266151307()
    require arg4 + cd[(arg4 + 132)] + 67 < arg4 + arg4.length + 36
    if cd[(arg4 + cd[(arg4 + 132)] + 36)] > test266151307():
        revert with 'NH{q', 65
    _222 = mem[64]
    if mem[64] + floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 1 > test266151307() or mem[64] + floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 1 < mem[64]:
        revert with 'NH{q', 65
    mem[64] = mem[64] + floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 1
    mem[_222] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
    require cd[(arg4 + 132)] + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 68 <= arg4.length + 36
    idx = arg4 + cd[(arg4 + 132)] + 68
    s = _222 + 32
    while idx < arg4 + cd[(arg4 + 132)] + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 68:
        require cd[idx] == cd[idx]
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    staticcall msg.sender.token0() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _327 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _328 = mem[_327]
    require mem[_327] == mem[_327 + 12 len 20]
    staticcall msg.sender.token1() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _331 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _332 = mem[_331]
    require mem[_331] == mem[_331 + 12 len 20]
    mem[mem[64] + 4] = address(_328)
    mem[mem[64] + 36] = address(_332)
    staticcall stor1.0xe6a43905 with:
            gas gas_remaining wei
           args address(_328), address(_332)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _335 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_335] == mem[_335 + 12 len 20]
    if mem[_335 + 12 len 20] != msg.sender:
        revert with 0, 'nice try'
    require mem[96] == mem[floor32(cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97]
    _427 = mem[96]
    idx = 0
    while idx < _427:
        if idx >= mem[_117]:
            revert with 'NH{q', 50
        _429 = mem[(32 * idx) + _117 + 32]
        if idx >= mem[96]:
            revert with 'NH{q', 50
        if idx >= mem[_222]:
            revert with 'NH{q', 50
        _433 = mem[(32 * idx) + _222 + 32]
        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
        mem[mem[64] + 36] = _433
        call address(_429).0xa9059cbb with:
             gas gas_remaining wei
            args mem[mem[64] + 4], _433
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _436 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_436] == bool(mem[_436])
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _443 = mem[(32 * idx) + 128]
        if idx >= mem[floor32(cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97]:
            revert with 'NH{q', 50
        _445 = mem[(32 * idx) + floor32(cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 129]
        _446 = mem[64]
        _455 = mem[mem[(32 * idx) + floor32(cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 129]]
        s = 0
        while s < _455:
            mem[_446 + s] = mem[_445 + s + 32]
            _427 = mem[96]
            s = s + 32
            continue 
        if ceil32(_455) <= _455:
            call address(_443).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _446 + _455 + -mem[64] - 4]
            if return_data.size:
                _515 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_515] = return_data.size
                mem[_515 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        else:
            mem[_446 + _455] = 0
            call address(_443).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _446 + _455 + -mem[64] - 4]
            if return_data.size:
                _517 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_517] = return_data.size
                mem[_517 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'call failed'
        if idx == -1:
            revert with 'NH{q', 17
        _427 = mem[96]
        idx = idx + 1
        continue 
    if not stor2:
        if arg2 and 1000 > -1 / arg2:
            revert with 'NH{q', 17
        mem[mem[64] + 4] = this.address
        if not stor2:
            staticcall address(_328).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _451 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_451] == mem[_451]
            if mem[_451] < 1000 * arg2 / 997:
                revert with 'NH{q', 17
            if mem[_451] - (1000 * arg2 / 997) <= 0:
                revert with 0, 'was not profitable'
            if not stor2:
                if arg2 and 1000 > -1 / arg2:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 1000 * arg2 / 997
                call address(_328).0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, 1000 * arg2 / 997
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _497 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_497] == bool(mem[_497])
            else:
                if arg3 and 1000 > -1 / arg3:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 1000 * arg3 / 997
                call address(_328).0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, 1000 * arg3 / 997
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _498 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_498] == bool(mem[_498])
        else:
            staticcall address(_332).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _452 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_452] == mem[_452]
            if mem[_452] < 1000 * arg2 / 997:
                revert with 'NH{q', 17
            if mem[_452] - (1000 * arg2 / 997) <= 0:
                revert with 0, 'was not profitable'
            if not stor2:
                if arg2 and 1000 > -1 / arg2:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 1000 * arg2 / 997
                call address(_332).0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, 1000 * arg2 / 997
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _499 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_499] == bool(mem[_499])
            else:
                if arg3 and 1000 > -1 / arg3:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 1000 * arg3 / 997
                call address(_332).0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, 1000 * arg3 / 997
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _500 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_500] == bool(mem[_500])
    else:
        if arg3 and 1000 > -1 / arg3:
            revert with 'NH{q', 17
        mem[mem[64] + 4] = this.address
        if not stor2:
            staticcall address(_328).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _453 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_453] == mem[_453]
            if mem[_453] < 1000 * arg3 / 997:
                revert with 'NH{q', 17
            if mem[_453] - (1000 * arg3 / 997) <= 0:
                revert with 0, 'was not profitable'
            if not stor2:
                if arg2 and 1000 > -1 / arg2:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 1000 * arg2 / 997
                call address(_328).0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, 1000 * arg2 / 997
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _501 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_501] == bool(mem[_501])
            else:
                if arg3 and 1000 > -1 / arg3:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 1000 * arg3 / 997
                call address(_328).0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, 1000 * arg3 / 997
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _502 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_502] == bool(mem[_502])
        else:
            staticcall address(_332).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _454 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_454] == mem[_454]
            if mem[_454] < 1000 * arg3 / 997:
                revert with 'NH{q', 17
            if mem[_454] - (1000 * arg3 / 997) <= 0:
                revert with 0, 'was not profitable'
            if not stor2:
                if arg2 and 1000 > -1 / arg2:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 1000 * arg2 / 997
                call address(_332).0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, 1000 * arg2 / 997
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _503 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_503] == bool(mem[_503])
            else:
                if arg3 and 1000 > -1 / arg3:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 1000 * arg3 / 997
                call address(_332).0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, 1000 * arg3 / 997
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _504 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_504] == bool(mem[_504])
}



}
