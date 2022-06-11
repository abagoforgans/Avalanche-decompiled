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
        _105 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(arg4 + cd[(arg4 + 68)] + cd[idx] + 68)])) + 1 > test266151307() or mem[64] + ceil32(ceil32(cd[(arg4 + cd[(arg4 + 68)] + cd[idx] + 68)])) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(arg4 + cd[(arg4 + 68)] + cd[idx] + 68)])) + 1
        mem[_105] = cd[(arg4 + cd[(arg4 + 68)] + cd[idx] + 68)]
        require cd[(arg4 + 68)] + cd[idx] + cd[(arg4 + cd[(arg4 + 68)] + cd[idx] + 68)] + 100 <= arg4.length + 36
        mem[_105 + 32 len cd[(arg4 + cd[(arg4 + 68)] + cd[idx] + 68)]] = call.data[arg4 + cd[(arg4 + 68)] + cd[idx] + 100 len cd[(arg4 + cd[(arg4 + 68)] + cd[idx] + 68)]]
        mem[_105 + cd[(arg4 + cd[(arg4 + 68)] + cd[idx] + 68)] + 32] = 0
        mem[s] = _105
        idx = idx + 32
        s = s + 32
        continue 
    require cd[(arg4 + 100)] <= test266151307()
    require arg4 + cd[(arg4 + 100)] + 67 < arg4 + arg4.length + 36
    if cd[(arg4 + cd[(arg4 + 100)] + 36)] > test266151307():
        revert with 'NH{q', 65
    _104 = mem[64]
    if mem[64] + floor32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 1 > test266151307() or mem[64] + floor32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 1 < mem[64]:
        revert with 'NH{q', 65
    mem[64] = mem[64] + floor32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 1
    mem[_104] = cd[(arg4 + cd[(arg4 + 100)] + 36)]
    require cd[(arg4 + 100)] + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 68 <= arg4.length + 36
    idx = arg4 + cd[(arg4 + 100)] + 68
    s = _104 + 32
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
    _173 = mem[64]
    if mem[64] + floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 1 > test266151307() or mem[64] + floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 1 < mem[64]:
        revert with 'NH{q', 65
    mem[64] = mem[64] + floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 1
    mem[_173] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
    require cd[(arg4 + 132)] + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 68 <= arg4.length + 36
    idx = arg4 + cd[(arg4 + 132)] + 68
    s = _173 + 32
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
    _242 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _243 = mem[_242]
    require mem[_242] == mem[_242 + 12 len 20]
    staticcall msg.sender.token1() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _246 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _247 = mem[_246]
    require mem[_246] == mem[_246 + 12 len 20]
    mem[mem[64] + 4] = address(_243)
    mem[mem[64] + 36] = address(_247)
    staticcall stor1.0xe6a43905 with:
            gas gas_remaining wei
           args address(_243), address(_247)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _250 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_250] == mem[_250 + 12 len 20]
    if mem[_250 + 12 len 20] != msg.sender:
        revert with 0, 'nice try'
    require mem[96] == mem[floor32(cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97]
    _306 = mem[96]
    idx = 0
    while idx < _306:
        if idx >= mem[_104]:
            revert with 'NH{q', 50
        _308 = mem[(32 * idx) + _104 + 32]
        if idx >= mem[96]:
            revert with 'NH{q', 50
        if idx >= mem[_173]:
            revert with 'NH{q', 50
        _312 = mem[(32 * idx) + _173 + 32]
        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
        mem[mem[64] + 36] = _312
        call address(_308).0xa9059cbb with:
             gas gas_remaining wei
            args mem[mem[64] + 4], _312
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _315 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_315] == bool(mem[_315])
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _320 = mem[(32 * idx) + 128]
        if idx >= mem[floor32(cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97]:
            revert with 'NH{q', 50
        _322 = mem[(32 * idx) + floor32(cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 129]
        _323 = mem[64]
        _328 = mem[mem[(32 * idx) + floor32(cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 129]]
        s = 0
        while s < _328:
            mem[_323 + s] = mem[_322 + s + 32]
            _306 = mem[96]
            s = s + 32
            continue 
        if ceil32(_328) <= _328:
            call address(_320).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _323 + _328 + -mem[64] - 4]
            if return_data.size:
                _358 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_358] = return_data.size
                mem[_358 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        else:
            mem[_323 + _328] = 0
            call address(_320).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _323 + _328 + -mem[64] - 4]
            if return_data.size:
                _360 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_360] = return_data.size
                mem[_360 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'call failed'
        if idx == -1:
            revert with 'NH{q', 17
        _306 = mem[96]
        idx = idx + 1
        continue 
    if not stor2:
        if arg2 and 1000 > -1 / arg2:
            revert with 'NH{q', 17
        mem[mem[64] + 4] = this.address
        staticcall address(_243).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _326 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_326] == mem[_326]
        if mem[_326] <= 1000 * arg2 / 997:
            revert with 0, 'was not profitable'
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = 1000 * arg2 / 997
        call address(_243).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, 1000 * arg2 / 997
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _352 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_352] == bool(mem[_352])
    else:
        if arg3 and 1000 > -1 / arg3:
            revert with 'NH{q', 17
        mem[mem[64] + 4] = this.address
        staticcall address(_247).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _327 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_327] == mem[_327]
        if mem[_327] <= 1000 * arg3 / 997:
            revert with 0, 'was not profitable'
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = 1000 * arg3 / 997
        call address(_247).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, 1000 * arg3 / 997
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _353 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_353] == bool(mem[_353])
}

function pangolinCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
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
        _105 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(arg4 + cd[(arg4 + 68)] + cd[idx] + 68)])) + 1 > test266151307() or mem[64] + ceil32(ceil32(cd[(arg4 + cd[(arg4 + 68)] + cd[idx] + 68)])) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(arg4 + cd[(arg4 + 68)] + cd[idx] + 68)])) + 1
        mem[_105] = cd[(arg4 + cd[(arg4 + 68)] + cd[idx] + 68)]
        require cd[(arg4 + 68)] + cd[idx] + cd[(arg4 + cd[(arg4 + 68)] + cd[idx] + 68)] + 100 <= arg4.length + 36
        mem[_105 + 32 len cd[(arg4 + cd[(arg4 + 68)] + cd[idx] + 68)]] = call.data[arg4 + cd[(arg4 + 68)] + cd[idx] + 100 len cd[(arg4 + cd[(arg4 + 68)] + cd[idx] + 68)]]
        mem[_105 + cd[(arg4 + cd[(arg4 + 68)] + cd[idx] + 68)] + 32] = 0
        mem[s] = _105
        idx = idx + 32
        s = s + 32
        continue 
    require cd[(arg4 + 100)] <= test266151307()
    require arg4 + cd[(arg4 + 100)] + 67 < arg4 + arg4.length + 36
    if cd[(arg4 + cd[(arg4 + 100)] + 36)] > test266151307():
        revert with 'NH{q', 65
    _104 = mem[64]
    if mem[64] + floor32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 1 > test266151307() or mem[64] + floor32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 1 < mem[64]:
        revert with 'NH{q', 65
    mem[64] = mem[64] + floor32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 1
    mem[_104] = cd[(arg4 + cd[(arg4 + 100)] + 36)]
    require cd[(arg4 + 100)] + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 68 <= arg4.length + 36
    idx = arg4 + cd[(arg4 + 100)] + 68
    s = _104 + 32
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
    _173 = mem[64]
    if mem[64] + floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 1 > test266151307() or mem[64] + floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 1 < mem[64]:
        revert with 'NH{q', 65
    mem[64] = mem[64] + floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 1
    mem[_173] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
    require cd[(arg4 + 132)] + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 68 <= arg4.length + 36
    idx = arg4 + cd[(arg4 + 132)] + 68
    s = _173 + 32
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
    _242 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _243 = mem[_242]
    require mem[_242] == mem[_242 + 12 len 20]
    staticcall msg.sender.token1() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _246 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _247 = mem[_246]
    require mem[_246] == mem[_246 + 12 len 20]
    mem[mem[64] + 4] = address(_243)
    mem[mem[64] + 36] = address(_247)
    staticcall stor1.0xe6a43905 with:
            gas gas_remaining wei
           args address(_243), address(_247)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _250 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_250] == mem[_250 + 12 len 20]
    if mem[_250 + 12 len 20] != msg.sender:
        revert with 0, 'nice try'
    require mem[96] == mem[floor32(cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97]
    _306 = mem[96]
    idx = 0
    while idx < _306:
        if idx >= mem[_104]:
            revert with 'NH{q', 50
        _308 = mem[(32 * idx) + _104 + 32]
        if idx >= mem[96]:
            revert with 'NH{q', 50
        if idx >= mem[_173]:
            revert with 'NH{q', 50
        _312 = mem[(32 * idx) + _173 + 32]
        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
        mem[mem[64] + 36] = _312
        call address(_308).0xa9059cbb with:
             gas gas_remaining wei
            args mem[mem[64] + 4], _312
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _315 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_315] == bool(mem[_315])
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _320 = mem[(32 * idx) + 128]
        if idx >= mem[floor32(cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97]:
            revert with 'NH{q', 50
        _322 = mem[(32 * idx) + floor32(cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 129]
        _323 = mem[64]
        _328 = mem[mem[(32 * idx) + floor32(cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 129]]
        s = 0
        while s < _328:
            mem[_323 + s] = mem[_322 + s + 32]
            _306 = mem[96]
            s = s + 32
            continue 
        if ceil32(_328) <= _328:
            call address(_320).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _323 + _328 + -mem[64] - 4]
            if return_data.size:
                _358 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_358] = return_data.size
                mem[_358 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        else:
            mem[_323 + _328] = 0
            call address(_320).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _323 + _328 + -mem[64] - 4]
            if return_data.size:
                _360 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_360] = return_data.size
                mem[_360 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'call failed'
        if idx == -1:
            revert with 'NH{q', 17
        _306 = mem[96]
        idx = idx + 1
        continue 
    if not stor2:
        if arg2 and 1000 > -1 / arg2:
            revert with 'NH{q', 17
        mem[mem[64] + 4] = this.address
        staticcall address(_243).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _326 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_326] == mem[_326]
        if mem[_326] <= 1000 * arg2 / 997:
            revert with 0, 'was not profitable'
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = 1000 * arg2 / 997
        call address(_243).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, 1000 * arg2 / 997
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _352 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_352] == bool(mem[_352])
    else:
        if arg3 and 1000 > -1 / arg3:
            revert with 'NH{q', 17
        mem[mem[64] + 4] = this.address
        staticcall address(_247).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _327 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_327] == mem[_327]
        if mem[_327] <= 1000 * arg3 / 997:
            revert with 0, 'was not profitable'
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = 1000 * arg3 / 997
        call address(_247).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, 1000 * arg3 / 997
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _353 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_353] == bool(mem[_353])
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
        _105 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(arg4 + cd[(arg4 + 68)] + cd[idx] + 68)])) + 1 > test266151307() or mem[64] + ceil32(ceil32(cd[(arg4 + cd[(arg4 + 68)] + cd[idx] + 68)])) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(arg4 + cd[(arg4 + 68)] + cd[idx] + 68)])) + 1
        mem[_105] = cd[(arg4 + cd[(arg4 + 68)] + cd[idx] + 68)]
        require cd[(arg4 + 68)] + cd[idx] + cd[(arg4 + cd[(arg4 + 68)] + cd[idx] + 68)] + 100 <= arg4.length + 36
        mem[_105 + 32 len cd[(arg4 + cd[(arg4 + 68)] + cd[idx] + 68)]] = call.data[arg4 + cd[(arg4 + 68)] + cd[idx] + 100 len cd[(arg4 + cd[(arg4 + 68)] + cd[idx] + 68)]]
        mem[_105 + cd[(arg4 + cd[(arg4 + 68)] + cd[idx] + 68)] + 32] = 0
        mem[s] = _105
        idx = idx + 32
        s = s + 32
        continue 
    require cd[(arg4 + 100)] <= test266151307()
    require arg4 + cd[(arg4 + 100)] + 67 < arg4 + arg4.length + 36
    if cd[(arg4 + cd[(arg4 + 100)] + 36)] > test266151307():
        revert with 'NH{q', 65
    _104 = mem[64]
    if mem[64] + floor32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 1 > test266151307() or mem[64] + floor32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 1 < mem[64]:
        revert with 'NH{q', 65
    mem[64] = mem[64] + floor32(cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 1
    mem[_104] = cd[(arg4 + cd[(arg4 + 100)] + 36)]
    require cd[(arg4 + 100)] + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 68 <= arg4.length + 36
    idx = arg4 + cd[(arg4 + 100)] + 68
    s = _104 + 32
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
    _173 = mem[64]
    if mem[64] + floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 1 > test266151307() or mem[64] + floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 1 < mem[64]:
        revert with 'NH{q', 65
    mem[64] = mem[64] + floor32(cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 1
    mem[_173] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
    require cd[(arg4 + 132)] + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 68 <= arg4.length + 36
    idx = arg4 + cd[(arg4 + 132)] + 68
    s = _173 + 32
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
    _242 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _243 = mem[_242]
    require mem[_242] == mem[_242 + 12 len 20]
    staticcall msg.sender.token1() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _246 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _247 = mem[_246]
    require mem[_246] == mem[_246 + 12 len 20]
    mem[mem[64] + 4] = address(_243)
    mem[mem[64] + 36] = address(_247)
    staticcall stor1.0xe6a43905 with:
            gas gas_remaining wei
           args address(_243), address(_247)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _250 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_250] == mem[_250 + 12 len 20]
    if mem[_250 + 12 len 20] != msg.sender:
        revert with 0, 'nice try'
    require mem[96] == mem[floor32(cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97]
    _306 = mem[96]
    idx = 0
    while idx < _306:
        if idx >= mem[_104]:
            revert with 'NH{q', 50
        _308 = mem[(32 * idx) + _104 + 32]
        if idx >= mem[96]:
            revert with 'NH{q', 50
        if idx >= mem[_173]:
            revert with 'NH{q', 50
        _312 = mem[(32 * idx) + _173 + 32]
        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
        mem[mem[64] + 36] = _312
        call address(_308).0xa9059cbb with:
             gas gas_remaining wei
            args mem[mem[64] + 4], _312
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _315 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_315] == bool(mem[_315])
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _320 = mem[(32 * idx) + 128]
        if idx >= mem[floor32(cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 97]:
            revert with 'NH{q', 50
        _322 = mem[(32 * idx) + floor32(cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 129]
        _323 = mem[64]
        _328 = mem[mem[(32 * idx) + floor32(cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 129]]
        s = 0
        while s < _328:
            mem[_323 + s] = mem[_322 + s + 32]
            _306 = mem[96]
            s = s + 32
            continue 
        if ceil32(_328) <= _328:
            call address(_320).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _323 + _328 + -mem[64] - 4]
            if return_data.size:
                _358 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_358] = return_data.size
                mem[_358 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        else:
            mem[_323 + _328] = 0
            call address(_320).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _323 + _328 + -mem[64] - 4]
            if return_data.size:
                _360 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_360] = return_data.size
                mem[_360 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'call failed'
        if idx == -1:
            revert with 'NH{q', 17
        _306 = mem[96]
        idx = idx + 1
        continue 
    if not stor2:
        if arg2 and 1000 > -1 / arg2:
            revert with 'NH{q', 17
        mem[mem[64] + 4] = this.address
        staticcall address(_243).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _326 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_326] == mem[_326]
        if mem[_326] <= 1000 * arg2 / 997:
            revert with 0, 'was not profitable'
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = 1000 * arg2 / 997
        call address(_243).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, 1000 * arg2 / 997
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _352 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_352] == bool(mem[_352])
    else:
        if arg3 and 1000 > -1 / arg3:
            revert with 'NH{q', 17
        mem[mem[64] + 4] = this.address
        staticcall address(_247).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _327 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_327] == mem[_327]
        if mem[_327] <= 1000 * arg3 / 997:
            revert with 0, 'was not profitable'
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = 1000 * arg3 / 997
        call address(_247).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, 1000 * arg3 / 997
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _353 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_353] == bool(mem[_353])
}



}
