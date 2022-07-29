contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
address stor2;
address stor3;
address stor4;
address stor5;
address stor6;
address stor9;
address stor10;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call stor9.0xa9059cbb with:
         gas gas_remaining wei
        args owner, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return 1
}

function sub_fd17d1cf(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    staticcall stor9.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg1 < ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 3
    mem[ceil32(return_data.size) + 128] = stor9
    mem[ceil32(return_data.size) + 160] = stor4
    mem[ceil32(return_data.size) + 192] = stor3
    mem[ceil32(return_data.size) + 228] = stor6
    mem[ceil32(return_data.size) + 260] = arg1
    call stor9.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor6, arg1
    mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if 1 > !block.timestamp:
        revert with 'NH{q', 17
    mem[(2 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 228] = arg1
    mem[(2 * ceil32(return_data.size)) + 260] = 0
    mem[(2 * ceil32(return_data.size)) + 292] = 160
    mem[(2 * ceil32(return_data.size)) + 388] = 3
    idx = 0
    s = ceil32(return_data.size) + 128
    t = (2 * ceil32(return_data.size)) + 420
    while idx < mem[ceil32(return_data.size) + 96]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(2 * ceil32(return_data.size)) + 324] = this.address
    mem[(2 * ceil32(return_data.size)) + 356] = block.timestamp + 1
    call stor6.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg1, 0, 160, address(this.address), block.timestamp + 1, mem[(2 * ceil32(return_data.size)) + 388 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 224
    require return_data.size >= 32
    _102 = mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg1) >> 32
    require mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg1) >> 32 + 255 < (2 * ceil32(return_data.size)) + return_data.size + 224
    _103 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg1) >> 32 + 224]
    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg1) >> 32 + 224] > test266151307():
        revert with 'NH{q', 65
    if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 225 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 225
    mem[(4 * ceil32(return_data.size)) + 224] = _103
    require (32 * _103) + _102 + 32 <= return_data.size
    mem[(4 * ceil32(return_data.size)) + 256 len ceil32(32 * _103)] = mem[(2 * ceil32(return_data.size)) + _102 + 256 len ceil32(32 * _103)]
    mem[mem[64] + 4] = this.address
    staticcall stor3.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _184 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _185 = mem[_184]
    mem[mem[64] + 4] = stor3
    mem[mem[64] + 36] = _185
    call stor3.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor3, _185
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _188 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_188] == bool(mem[_188])
    mem[mem[64] + 4] = this.address
    staticcall stor3.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _192 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    call stor3.unwrap(uint256 arg1) with:
         gas gas_remaining wei
        args mem[_192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    mem[mem[64] + 4] = this.address
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _200 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _201 = mem[_200]
    mem[mem[64] + 4] = stor5
    mem[mem[64] + 36] = _201
    call stor2.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor5, _201
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _204 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_204] == bool(mem[_204])
    mem[mem[64] + 4] = this.address
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _208 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    mem[mem[64] + 4] = mem[_208]
    mem[mem[64] + 36] = 1
    require ext_code.size(stor5)
    call stor5.unstake(uint256 arg1, bool arg2) with:
         gas gas_remaining wei
        args mem[mem[64] + 4], 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[mem[64] + 4] = this.address
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    _214 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _215 = mem[_214]
    mem[mem[64] + 4] = stor10
    mem[mem[64] + 36] = _215
    call stor1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor10, _215
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _218 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_218] == bool(mem[_218])
    _220 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    if not mem[_220]:
        revert with 'NH{q', 50
    mem[_220 + 32] = stor1
    if 1 >= mem[_220]:
        revert with 'NH{q', 50
    mem[_220 + 64] = stor9
    if not arg2:
        mem[_220 + 100] = this.address
        staticcall stor1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[_220 + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = _220 + ceil32(return_data.size) + 96
        require return_data.size >= 32
        if 1 > !block.timestamp:
            revert with 'NH{q', 17
        mem[_220 + ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[_220 + ceil32(return_data.size) + 100] = ext_call.return_data[0]
        mem[_220 + ceil32(return_data.size) + 132] = 0
        mem[_220 + ceil32(return_data.size) + 164] = 160
        mem[_220 + ceil32(return_data.size) + 260] = mem[_220]
        idx = 0
        s = _220 + 32
        t = _220 + ceil32(return_data.size) + 292
        while idx < mem[_220]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_220 + ceil32(return_data.size) + 196] = this.address
        mem[_220 + ceil32(return_data.size) + 228] = block.timestamp + 1
        call stor10.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _220 + ceil32(return_data.size) + (32 * mem[_220]) + -mem[64] + 288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _261 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_261] <= test266151307()
        require _261 + mem[_261] + 31 < _261 + return_data.size
        if mem[_261 + mem[_261]] > test266151307():
            revert with 'NH{q', 65
        if _261 + ceil32(return_data.size) + ceil32(32 * mem[_261 + mem[_261]]) + 1 > test266151307() or ceil32(32 * mem[_261 + mem[_261]]) + 1 < 0:
            revert with 'NH{q', 65
        require (32 * mem[_261 + mem[_261]]) + mem[_261] + 32 <= return_data.size
    else:
        if gas_remaining < gas_remaining:
            revert with 'NH{q', 17
        mem[_220 + 100] = this.address
        staticcall stor1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[_220 + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = _220 + ceil32(return_data.size) + 96
        require return_data.size >= 32
        if False and block.gasprice > 0:
            revert with 'NH{q', 17
        if arg1 > -1:
            revert with 'NH{q', 17
        if 1 > !block.timestamp:
            revert with 'NH{q', 17
        mem[_220 + ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[_220 + ceil32(return_data.size) + 100] = ext_call.return_data[0]
        mem[_220 + ceil32(return_data.size) + 132] = arg1
        mem[_220 + ceil32(return_data.size) + 164] = 160
        mem[_220 + ceil32(return_data.size) + 260] = mem[_220]
        idx = 0
        s = _220 + 32
        t = _220 + ceil32(return_data.size) + 292
        while idx < mem[_220]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_220 + ceil32(return_data.size) + 196] = this.address
        mem[_220 + ceil32(return_data.size) + 228] = block.timestamp + 1
        call stor10.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _220 + ceil32(return_data.size) + (32 * mem[_220]) + -mem[64] + 288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _262 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _264 = mem[_262]
        require mem[_262] <= test266151307()
        require _262 + mem[_262] + 31 < _262 + return_data.size
        _266 = mem[_262 + mem[_262]]
        if mem[_262 + mem[_262]] > test266151307():
            revert with 'NH{q', 65
        if _262 + ceil32(return_data.size) + ceil32(32 * mem[_262 + mem[_262]]) + 1 > test266151307() or ceil32(32 * mem[_262 + mem[_262]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _262 + ceil32(return_data.size) + ceil32(32 * mem[_262 + mem[_262]]) + 1
        mem[_262 + ceil32(return_data.size)] = _266
        require (32 * _266) + _264 + 32 <= return_data.size
        mem[_262 + ceil32(return_data.size) + 32 len ceil32(32 * _266)] = mem[_262 + _264 + 32 len ceil32(32 * _266)]
        mem[mem[64] + 4] = this.address
        staticcall stor9.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _283 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_283] > arg1
    return 1
}

function sub_79514b03(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    staticcall stor9.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg1 < ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 2
    mem[ceil32(return_data.size) + 128] = stor9
    mem[ceil32(return_data.size) + 160] = stor1
    mem[ceil32(return_data.size) + 196] = stor10
    mem[ceil32(return_data.size) + 228] = arg1
    call stor9.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor10, arg1
    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if 1 > !block.timestamp:
        revert with 'NH{q', 17
    mem[(2 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 196] = arg1
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
    mem[(2 * ceil32(return_data.size)) + 292] = this.address
    mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp + 1
    call stor10.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg1, 0, 160, address(this.address), block.timestamp + 1, mem[(2 * ceil32(return_data.size)) + 356 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _150 = mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32
    require mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
    _151 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192] > test266151307():
        revert with 'NH{q', 65
    if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193
    mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    require (32 * _151) + _150 + 32 <= return_data.size
    mem[(4 * ceil32(return_data.size)) + 224 len ceil32(32 * _151)] = mem[(2 * ceil32(return_data.size)) + _150 + 224 len ceil32(32 * _151)]
    mem[mem[64] + 4] = this.address
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _281 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _282 = mem[_281]
    mem[mem[64] + 4] = stor5
    mem[mem[64] + 36] = _282
    call stor1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor5, _282
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _285 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_285] == bool(mem[_285])
    mem[mem[64] + 4] = this.address
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _289 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    mem[mem[64] + 4] = mem[_289]
    mem[mem[64] + 36] = this.address
    call stor5.stake(uint256 arg1, address arg2) with:
         gas gas_remaining wei
        args mem[mem[64] + 4], this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _293 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_293] == bool(mem[_293])
    require ext_code.size(stor5)
    call stor5.claim(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[mem[64] + 4] = this.address
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    _299 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _300 = mem[_299]
    mem[mem[64] + 4] = stor3
    mem[mem[64] + 36] = _300
    call stor2.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor3, _300
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _303 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_303] == bool(mem[_303])
    mem[mem[64] + 4] = this.address
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _307 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    call stor3.wrap(uint256 arg1) with:
         gas gas_remaining wei
        args mem[_307]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    mem[mem[64] + 4] = this.address
    staticcall stor3.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _315 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _316 = mem[_315]
    mem[mem[64] + 4] = stor6
    mem[mem[64] + 36] = _316
    call stor3.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor6, _316
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _319 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_319] == bool(mem[_319])
    if not mem[ceil32(return_data.size) + 96]:
        revert with 'NH{q', 50
    mem[ceil32(return_data.size) + 128] = stor3
    if 1 >= mem[ceil32(return_data.size) + 96]:
        revert with 'NH{q', 50
    mem[ceil32(return_data.size) + 160] = stor4
    mem[mem[64] + 4] = this.address
    staticcall stor3.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not arg2:
        _327 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _329 = mem[_327]
        if 1 > !block.timestamp:
            revert with 'NH{q', 17
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _329
        mem[mem[64] + 36] = 0
        mem[mem[64] + 68] = 160
        _333 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 164] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 196
        while idx < _333:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 100] = this.address
        mem[mem[64] + 132] = block.timestamp + 1
        call stor6.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args _329, 0, 160, address(this.address), block.timestamp + 1, mem[mem[64] + 164 len (32 * _333) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _407 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _409 = mem[_407]
        require mem[_407] <= test266151307()
        require _407 + mem[_407] + 31 < _407 + return_data.size
        _411 = mem[_407 + mem[_407]]
        if mem[_407 + mem[_407]] > test266151307():
            revert with 'NH{q', 65
        if _407 + ceil32(return_data.size) + ceil32(32 * mem[_407 + mem[_407]]) + 1 > test266151307() or ceil32(32 * mem[_407 + mem[_407]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _407 + ceil32(return_data.size) + ceil32(32 * mem[_407 + mem[_407]]) + 1
        mem[_407 + ceil32(return_data.size)] = _411
        require (32 * _411) + _409 + 32 <= return_data.size
        mem[_407 + ceil32(return_data.size) + 32 len ceil32(32 * _411)] = mem[_407 + _409 + 32 len ceil32(32 * _411)]
        if not mem[ceil32(return_data.size) + 96]:
            revert with 'NH{q', 50
        mem[ceil32(return_data.size) + 128] = stor4
        if 1 >= mem[ceil32(return_data.size) + 96]:
            revert with 'NH{q', 50
        mem[ceil32(return_data.size) + 160] = stor9
        mem[mem[64] + 4] = this.address
        staticcall stor4.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _481 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _483 = mem[_481]
        mem[mem[64] + 4] = stor10
        mem[mem[64] + 36] = _483
        call stor4.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor10, _483
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _489 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_489] == bool(mem[_489])
        mem[mem[64] + 4] = this.address
        staticcall stor4.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _495 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _496 = mem[_495]
        if 1 > !block.timestamp:
            revert with 'NH{q', 17
        _501 = mem[64]
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _496
        mem[mem[64] + 36] = 0
        mem[mem[64] + 68] = 160
        _502 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 164] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 196
        while idx < _502:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_501 + 100] = this.address
        mem[_501 + 132] = block.timestamp + 1
        call stor10.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _501 + (32 * _502) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _531 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_531] <= test266151307()
        require _531 + mem[_531] + 31 < _531 + return_data.size
        if mem[_531 + mem[_531]] > test266151307():
            revert with 'NH{q', 65
        if _531 + ceil32(return_data.size) + ceil32(32 * mem[_531 + mem[_531]]) + 1 > test266151307() or ceil32(32 * mem[_531 + mem[_531]]) + 1 < 0:
            revert with 'NH{q', 65
        require (32 * mem[_531 + mem[_531]]) + mem[_531] + 32 <= return_data.size
    else:
        _328 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _330 = mem[_328]
        if 1 > !block.timestamp:
            revert with 'NH{q', 17
        _332 = mem[64]
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _330
        mem[mem[64] + 36] = 0
        mem[mem[64] + 68] = 160
        _334 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 164] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 196
        while idx < _334:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_332 + 100] = this.address
        mem[_332 + 132] = block.timestamp + 1
        call stor6.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _332 + (32 * _334) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _408 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _410 = mem[_408]
        require mem[_408] <= test266151307()
        require _408 + mem[_408] + 31 < _408 + return_data.size
        _412 = mem[_408 + mem[_408]]
        if mem[_408 + mem[_408]] > test266151307():
            revert with 'NH{q', 65
        if _408 + ceil32(return_data.size) + ceil32(32 * mem[_408 + mem[_408]]) + 1 > test266151307() or ceil32(32 * mem[_408 + mem[_408]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _408 + ceil32(return_data.size) + ceil32(32 * mem[_408 + mem[_408]]) + 1
        mem[_408 + ceil32(return_data.size)] = _412
        require (32 * _412) + _410 + 32 <= return_data.size
        mem[_408 + ceil32(return_data.size) + 32 len ceil32(32 * _412)] = mem[_408 + _410 + 32 len ceil32(32 * _412)]
        if not mem[ceil32(return_data.size) + 96]:
            revert with 'NH{q', 50
        mem[ceil32(return_data.size) + 128] = stor4
        if 1 >= mem[ceil32(return_data.size) + 96]:
            revert with 'NH{q', 50
        mem[ceil32(return_data.size) + 160] = stor9
        mem[mem[64] + 4] = this.address
        staticcall stor4.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _482 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _484 = mem[_482]
        mem[mem[64] + 4] = stor10
        mem[mem[64] + 36] = _484
        call stor4.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor10, _484
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _490 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_490] == bool(mem[_490])
        if gas_remaining < gas_remaining:
            revert with 'NH{q', 17
        mem[mem[64] + 4] = this.address
        staticcall stor4.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _499 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _500 = mem[_499]
        if False and block.gasprice > 0:
            revert with 'NH{q', 17
        if arg1 > -1:
            revert with 'NH{q', 17
        if 1 > !block.timestamp:
            revert with 'NH{q', 17
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _500
        mem[mem[64] + 36] = arg1
        mem[mem[64] + 68] = 160
        _509 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 164] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 196
        while idx < _509:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 100] = this.address
        mem[mem[64] + 132] = block.timestamp + 1
        call stor10.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args _500, arg1, 160, address(this.address), block.timestamp + 1, mem[mem[64] + 164 len (32 * _509) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _532 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _534 = mem[_532]
        require mem[_532] <= test266151307()
        require _532 + mem[_532] + 31 < _532 + return_data.size
        _536 = mem[_532 + mem[_532]]
        if mem[_532 + mem[_532]] > test266151307():
            revert with 'NH{q', 65
        if _532 + ceil32(return_data.size) + ceil32(32 * mem[_532 + mem[_532]]) + 1 > test266151307() or ceil32(32 * mem[_532 + mem[_532]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _532 + ceil32(return_data.size) + ceil32(32 * mem[_532 + mem[_532]]) + 1
        mem[_532 + ceil32(return_data.size)] = _536
        require (32 * _536) + _534 + 32 <= return_data.size
        mem[_532 + ceil32(return_data.size) + 32 len ceil32(32 * _536)] = mem[_532 + _534 + 32 len ceil32(32 * _536)]
        mem[mem[64] + 4] = this.address
        staticcall stor9.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _553 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_553] > arg1
    return 1
}



}
