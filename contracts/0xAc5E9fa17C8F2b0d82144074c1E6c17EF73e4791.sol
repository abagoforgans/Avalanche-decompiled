contract main {




// =====================  Runtime code  =====================


const abc = -1


address owner;
address stor1;
address stor2;
address sub_8a14c2fdAddress;
uint256 CLAIM_PERIOD;
uint256 sub_ab4f47fe;
mapping of uint256 sub_22f68f75;

function CLAIM_PERIOD() payable {
    return CLAIM_PERIOD
}

function sub_22f68f75(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_22f68f75[arg1]
}

function sub_8a14c2fd(?) payable {
    return sub_8a14c2fdAddress
}

function owner() payable {
    return owner
}

function sub_ab4f47fe(?) payable {
    return sub_ab4f47fe
}

function _fallback() payable {
    revert
}

function kkk() payable {
    revert with 0, 17
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_d15a7d1a(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_ab4f47fe = arg1
}

function setClaimPeriod(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    CLAIM_PERIOD = arg1
}

function sub_3675d39c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1 = address(arg1)
    emit 0x387a5a83: msg.sender, address(arg1)
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

function sub_da169741(?) payable {
    require calldata.size - 4 >= 32
    mem[96] = 3
    mem[128] = stor2
    require ext_code.size(sub_8a14c2fdAddress)
    staticcall sub_8a14c2fdAddress.WAVAX() with:
            gas gas_remaining wei
    mem[224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[160] = ext_call.return_data[12 len 20]
    mem[192] = stor1
    mem[ceil32(return_data.size) + 224] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 228] = arg1
    mem[ceil32(return_data.size) + 260] = 64
    mem[ceil32(return_data.size) + 292] = 3
    idx = 0
    s = 128
    t = ceil32(return_data.size) + 324
    while idx < 3:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(sub_8a14c2fdAddress)
    staticcall sub_8a14c2fdAddress.getAmountsIn(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg1, Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 224
    require return_data.size >= 32
    _25 = mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg1) >> 32
    require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg1) >> 32 + 255 < ceil32(return_data.size) + return_data.size + 224
    _26 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg1) >> 32 + 224]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg1) >> 32 + 224] > test266151307():
        revert with 0, 65
    if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 225 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 1 < 0:
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 225
    mem[(2 * ceil32(return_data.size)) + 224] = _26
    require return_data.size >= _25 + (32 * _26) + 32
    mem[(2 * ceil32(return_data.size)) + 256 len 32 * _26] = mem[ceil32(return_data.size) + _25 + 256 len 32 * _26]
    if 2 >= _26:
        revert with 0, 50
    mem[mem[64]] = mem[(2 * ceil32(return_data.size)) + 320]
    return memory
      from mem[64]
       len 32
}

function sub_6731daa9(?) payable {
    require calldata.size - 4 >= 32
    mem[96] = 3
    mem[128] = stor1
    require ext_code.size(sub_8a14c2fdAddress)
    staticcall sub_8a14c2fdAddress.WAVAX() with:
            gas gas_remaining wei
    mem[224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[160] = ext_call.return_data[12 len 20]
    mem[192] = stor2
    mem[ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 228] = arg1
    mem[ceil32(return_data.size) + 260] = 64
    mem[ceil32(return_data.size) + 292] = 3
    idx = 0
    s = 128
    t = ceil32(return_data.size) + 324
    while idx < 3:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(sub_8a14c2fdAddress)
    staticcall sub_8a14c2fdAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg1, Array(len=3, data=mem[ceil32(return_data.size) + 324 len 96])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 224
    require return_data.size >= 32
    _25 = mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg1) >> 32
    require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg1) >> 32 + 255 < ceil32(return_data.size) + return_data.size + 224
    _26 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg1) >> 32 + 224]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg1) >> 32 + 224] > test266151307():
        revert with 0, 65
    if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 225 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 1 < 0:
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 225
    mem[(2 * ceil32(return_data.size)) + 224] = _26
    require return_data.size >= _25 + (32 * _26) + 32
    mem[(2 * ceil32(return_data.size)) + 256 len 32 * _26] = mem[ceil32(return_data.size) + _25 + 256 len 32 * _26]
    if 2 >= _26:
        revert with 0, 50
    mem[mem[64]] = mem[(2 * ceil32(return_data.size)) + 320]
    return memory
      from mem[64]
       len 32
}

function sub_7e62c4d4(?) payable {
    mem[0] = msg.sender
    mem[32] = 6
    if sub_22f68f75[msg.sender] > !CLAIM_PERIOD:
        revert with 0, 17
    if sub_22f68f75[msg.sender] + CLAIM_PERIOD >= block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'User can't claim several time per one day.'
    mem[100] = msg.sender
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 96] = 3
    mem[ceil32(return_data.size) + 128] = stor1
    require ext_code.size(sub_8a14c2fdAddress)
    staticcall sub_8a14c2fdAddress.WAVAX() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 224
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 160] = ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 192] = stor2
    mem[(2 * ceil32(return_data.size)) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 228] = ext_call.return_data[0] / 100
    mem[(2 * ceil32(return_data.size)) + 260] = 64
    mem[(2 * ceil32(return_data.size)) + 292] = 3
    idx = 0
    s = ceil32(return_data.size) + 128
    t = (2 * ceil32(return_data.size)) + 324
    while idx < mem[ceil32(return_data.size) + 96]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(sub_8a14c2fdAddress)
    staticcall sub_8a14c2fdAddress.mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 416]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _110 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _111 = mem[_110]
    require mem[_110] <= test266151307()
    require _110 + mem[_110] + 31 < _110 + return_data.size
    _112 = mem[_110 + mem[_110]]
    if mem[_110 + mem[_110]] > test266151307():
        revert with 0, 65
    if _110 + ceil32(return_data.size) + ceil32(32 * mem[_110 + mem[_110]]) + 1 > test266151307() or ceil32(32 * mem[_110 + mem[_110]]) + 1 < 0:
        revert with 0, 65
    mem[64] = _110 + ceil32(return_data.size) + ceil32(32 * mem[_110 + mem[_110]]) + 1
    mem[_110 + ceil32(return_data.size)] = _112
    require return_data.size >= _111 + (32 * _112) + 32
    mem[_110 + ceil32(return_data.size) + 32 len 32 * _112] = mem[_110 + _111 + 32 len 32 * _112]
    if 2 >= _112:
        revert with 0, 50
    if mem[_110 + ceil32(return_data.size) + 96] <= sub_ab4f47fe:
        mem[mem[64] + 4] = this.address
        require ext_code.size(stor1)
        staticcall stor1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _205 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _208 = mem[_205]
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = this.address
        mem[mem[64] + 68] = ext_call.return_data[0] / 100
        require ext_code.size(stor1)
        call stor1.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, ext_call.return_data[0] / 100
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _213 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_213] == bool(mem[_213])
        mem[mem[64] + 4] = this.address
        require ext_code.size(stor1)
        staticcall stor1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _220 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _222 = mem[_220]
        if mem[_220] < _208:
            revert with 0, 17
        _225 = mem[64]
        mem[mem[64]] = 3
        mem[64] = mem[64] + 128
        mem[_225 + 32 len 96] = call.data[calldata.size len 96]
        if not mem[_225]:
            revert with 0, 50
        mem[_225 + 32] = stor1
        require ext_code.size(sub_8a14c2fdAddress)
        staticcall sub_8a14c2fdAddress.WAVAX() with:
                gas gas_remaining wei
        mem[_225 + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = _225 + ceil32(return_data.size) + 128
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if 1 >= mem[_225]:
            revert with 0, 50
        mem[_225 + 64] = ext_call.return_data[12 len 20]
        if 2 >= mem[_225]:
            revert with 0, 50
        mem[_225 + 96] = stor2
        mem[_225 + ceil32(return_data.size) + 132] = sub_8a14c2fdAddress
        mem[_225 + ceil32(return_data.size) + 164] = _222 - _208
        require ext_code.size(stor1)
        call stor1.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args sub_8a14c2fdAddress, _222 - _208
        mem[_225 + ceil32(return_data.size) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = _225 + (2 * ceil32(return_data.size)) + 128
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[_225 + (2 * ceil32(return_data.size)) + 128] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
        mem[_225 + (2 * ceil32(return_data.size)) + 132] = _222 - _208
        mem[_225 + (2 * ceil32(return_data.size)) + 164] = 0
        mem[_225 + (2 * ceil32(return_data.size)) + 196] = 160
        mem[_225 + (2 * ceil32(return_data.size)) + 292] = mem[_225]
        idx = 0
        s = _225 + 32
        t = _225 + (2 * ceil32(return_data.size)) + 324
        while idx < mem[_225]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(sub_8a14c2fdAddress)
        call sub_8a14c2fdAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args _222 - _208, 0, 160, msg.sender, block.timestamp, mem[_225 + (2 * ceil32(return_data.size)) + 292 len (32 * mem[_225]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        sub_22f68f75[msg.sender] = block.timestamp
        emit 0x96cefb06: msg.sender, ext_call.return_data[0] / 100
    else:
        _203 = mem[64]
        mem[mem[64]] = 3
        mem[64] = mem[64] + 128
        mem[_203 + 32 len 96] = call.data[calldata.size len 96]
        if not mem[_203]:
            revert with 0, 50
        mem[_203 + 32] = stor2
        require ext_code.size(sub_8a14c2fdAddress)
        staticcall sub_8a14c2fdAddress.WAVAX() with:
                gas gas_remaining wei
        mem[_203 + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = _203 + ceil32(return_data.size) + 128
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if 1 >= mem[_203]:
            revert with 0, 50
        mem[_203 + 64] = ext_call.return_data[12 len 20]
        if 2 >= mem[_203]:
            revert with 0, 50
        mem[_203 + 96] = stor1
        mem[_203 + ceil32(return_data.size) + 128] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[_203 + ceil32(return_data.size) + 132] = sub_ab4f47fe
        mem[_203 + ceil32(return_data.size) + 164] = 64
        mem[_203 + ceil32(return_data.size) + 196] = mem[_203]
        idx = 0
        s = _203 + 32
        t = _203 + ceil32(return_data.size) + 228
        while idx < mem[_203]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(sub_8a14c2fdAddress)
        staticcall sub_8a14c2fdAddress.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _203 + ceil32(return_data.size) + (32 * mem[_203]) + -mem[64] + 224]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _286 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _290 = mem[_286]
        require mem[_286] <= test266151307()
        require _286 + mem[_286] + 31 < _286 + return_data.size
        _291 = mem[_286 + mem[_286]]
        if mem[_286 + mem[_286]] > test266151307():
            revert with 0, 65
        if _286 + ceil32(return_data.size) + ceil32(32 * mem[_286 + mem[_286]]) + 1 > test266151307() or ceil32(32 * mem[_286 + mem[_286]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _286 + ceil32(return_data.size) + ceil32(32 * mem[_286 + mem[_286]]) + 1
        mem[_286 + ceil32(return_data.size)] = _291
        require return_data.size >= _290 + (32 * _291) + 32
        mem[_286 + ceil32(return_data.size) + 32 len 32 * _291] = mem[_286 + _290 + 32 len 32 * _291]
        if 2 >= _291:
            revert with 0, 50
        _329 = mem[_286 + ceil32(return_data.size) + 96]
        mem[mem[64] + 4] = this.address
        require ext_code.size(stor1)
        staticcall stor1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _332 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _333 = mem[_332]
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = this.address
        mem[mem[64] + 68] = _329
        require ext_code.size(stor1)
        call stor1.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, _329
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _336 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_336] == bool(mem[_336])
        mem[mem[64] + 4] = this.address
        require ext_code.size(stor1)
        staticcall stor1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _340 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _341 = mem[_340]
        if mem[_340] < _333:
            revert with 0, 17
        _342 = mem[64]
        mem[mem[64]] = 3
        mem[64] = mem[64] + 128
        mem[_342 + 32 len 96] = call.data[calldata.size len 96]
        if not mem[_342]:
            revert with 0, 50
        mem[_342 + 32] = stor1
        require ext_code.size(sub_8a14c2fdAddress)
        staticcall sub_8a14c2fdAddress.WAVAX() with:
                gas gas_remaining wei
        mem[_342 + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = _342 + ceil32(return_data.size) + 128
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if 1 >= mem[_342]:
            revert with 0, 50
        mem[_342 + 64] = ext_call.return_data[12 len 20]
        if 2 >= mem[_342]:
            revert with 0, 50
        mem[_342 + 96] = stor2
        mem[_342 + ceil32(return_data.size) + 132] = sub_8a14c2fdAddress
        mem[_342 + ceil32(return_data.size) + 164] = _341 - _333
        require ext_code.size(stor1)
        call stor1.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args sub_8a14c2fdAddress, _341 - _333
        mem[_342 + ceil32(return_data.size) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = _342 + (2 * ceil32(return_data.size)) + 128
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[_342 + (2 * ceil32(return_data.size)) + 128] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
        mem[_342 + (2 * ceil32(return_data.size)) + 132] = _341 - _333
        mem[_342 + (2 * ceil32(return_data.size)) + 164] = 0
        mem[_342 + (2 * ceil32(return_data.size)) + 196] = 160
        mem[_342 + (2 * ceil32(return_data.size)) + 292] = mem[_342]
        idx = 0
        s = _342 + 32
        t = _342 + (2 * ceil32(return_data.size)) + 324
        while idx < mem[_342]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_342 + (2 * ceil32(return_data.size)) + 228] = msg.sender
        mem[_342 + (2 * ceil32(return_data.size)) + 260] = block.timestamp
        require ext_code.size(sub_8a14c2fdAddress)
        call sub_8a14c2fdAddress.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _342 + (2 * ceil32(return_data.size)) + (32 * mem[_342]) + -mem[64] + 320]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        sub_22f68f75[msg.sender] = block.timestamp
        emit 0x96cefb06: msg.sender, _329
}



}
