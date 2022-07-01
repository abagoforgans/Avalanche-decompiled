contract main {




// =====================  Runtime code  =====================


uint8 stor0;
address stor0;
address owner; offset 8
mapping of uint8 stor1;
address stor2;
address sub_13bc8a15Address;
address loveAddress;
uint256 sub_8c47a802;

function sub_13bc8a15(?) {
    return sub_13bc8a15Address
}

function paused() {
    return bool(uint8(stor0.field_0))
}

function Controller(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[address(arg1)])
}

function sub_8c47a802(?) {
    return sub_8c47a802
}

function owner() {
    return owner
}

function love() {
    return loveAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Only owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_da0ff68c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 != msg.value:
        revert with 0, 'ErrorCode: Money'
}

function addController(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Only owner'
    stor1[address(arg1)] = 1
}

function removeController(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Only owner'
    stor1[address(arg1)] = 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Only owner'
    if not arg1:
        revert with 0, 'zero not allow'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_91ebbd73(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Only owner'
    call owner with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function EmergencyWithdraw(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Only owner'
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function SetPause(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor1[address(msg.sender)]:
        revert with 0, 'Only controllers'
    if arg1 != 1:
        if not uint8(stor0.field_0):
            revert with 0, 'Pausable: not paused'
        uint8(stor0.field_0) = 0
        emit Unpaused(msg.sender);
    else:
        if uint8(stor0.field_0):
            revert with 0, 'Pausable: paused'
        uint8(stor0.field_0) = 1
        emit Paused(msg.sender);
}

function sub_e62b9994(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Only owner'
    require ext_code.size(address(arg1))
    call address(arg1).0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), address(stor0.field_0), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_62121e15(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Only owner'
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
        args address(arg2), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function addLiquidity(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor1[address(msg.sender)]:
        revert with 0, 'Only controllers'
    if arg1 and sub_8c47a802 > -1 / arg1:
        revert with 'NH{q', 17
    require ext_code.size(loveAddress)
    call loveAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor2, arg1 * sub_8c47a802
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(loveAddress)
    call loveAddress.0x40c10f19 with:
         gas gas_remaining wei
        args address(this.address), arg1 * sub_8c47a802
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor2)
    call stor2.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
       value arg1 wei
         gas gas_remaining wei
        args loveAddress, arg1 * sub_8c47a802, 0, 0, address(this.address), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
}

function sub_81bff628(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    if arg3 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer amount must be greater than zero'
    if address(arg1) != sub_13bc8a15Address:
        if address(arg2) != sub_13bc8a15Address:
            return 1
        if bool(stor1[address(arg1)]) == 1:
            require ext_code.size(loveAddress)
            staticcall loveAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args sub_13bc8a15Address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0]:
                return 1
            if bool(stor1[address(arg1)]) == 1:
                return 1
    else:
        if bool(stor1[address(arg2)]) == 1:
            if address(arg2) != sub_13bc8a15Address:
                return 1
            if bool(stor1[address(arg1)]) == 1:
                require ext_code.size(loveAddress)
                staticcall loveAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args sub_13bc8a15Address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0]:
                    return 1
                if bool(stor1[address(arg1)]) == 1:
                    return 1
    return 0
}

function sub_cd89439e(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 2
    require ext_code.size(stor2)
    staticcall stor2.WAVAX() with:
            gas gas_remaining wei
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[160] = ext_call.return_data[12 len 20]
    mem[128] = loveAddress
    mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = arg1
    mem[ceil32(return_data.size) + 228] = 64
    mem[ceil32(return_data.size) + 260] = 2
    idx = 0
    s = 128
    t = ceil32(return_data.size) + 292
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(stor2)
    staticcall stor2.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg1, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _24 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32
    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
    _25 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192] > test266151307():
        revert with 'NH{q', 65
    if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193
    mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    require _24 + (32 * _25) + 32 <= return_data.size
    idx = 0
    s = ceil32(return_data.size) + _24 + 224
    t = (2 * ceil32(return_data.size)) + 224
    while idx < _25:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _25
    mem[mem[64] + 64 len 32 * _25] = mem[(2 * ceil32(return_data.size)) + 224 len 32 * _25]
    return Array(len=_25, data=mem[mem[64] + 64 len 32 * _25])
}

function sub_577c8960(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = msg.sender
    mem[32] = 1
    if not stor1[address(msg.sender)]:
        revert with 0, 'Only controllers'
    require ext_code.size(stor2)
    staticcall stor2.WAVAX() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 100] = sub_13bc8a15Address
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args sub_13bc8a15Address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 100] = sub_13bc8a15Address
    require ext_code.size(loveAddress)
    staticcall loveAddress.0x70a08231 with:
            gas gas_remaining wei
           args sub_13bc8a15Address
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not ext_call.return_data[0]:
        revert with 0, 'ETH Amount 0!'
    if not ext_call.return_data[0]:
        revert with 0, 'LOVE Amount 0!'
    mem[(4 * ceil32(return_data.size)) + 96] = 2
    require ext_code.size(stor2)
    staticcall stor2.WAVAX() with:
            gas gas_remaining wei
    mem[(4 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (6 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(4 * ceil32(return_data.size)) + 128] = ext_call.return_data[12 len 20]
    mem[(4 * ceil32(return_data.size)) + 160] = loveAddress
    mem[(6 * ceil32(return_data.size)) + 192] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
    mem[(6 * ceil32(return_data.size)) + 196] = 0
    mem[(6 * ceil32(return_data.size)) + 228] = 128
    mem[(6 * ceil32(return_data.size)) + 324] = 2
    idx = 0
    s = (4 * ceil32(return_data.size)) + 128
    t = (6 * ceil32(return_data.size)) + 356
    while idx < mem[(4 * ceil32(return_data.size)) + 96]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(6 * ceil32(return_data.size)) + 260] = this.address
    mem[(6 * ceil32(return_data.size)) + 292] = block.timestamp
    require ext_code.size(stor2)
    call stor2.mem[mem[64] len 4] with:
       value arg1 wei
         gas gas_remaining wei
        args mem[mem[64] + 4 len (6 * ceil32(return_data.size)) + -mem[64] + 416]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _38 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _39 = mem[_38]
    require mem[_38] <= test266151307()
    require _38 + mem[_38] + 31 < _38 + return_data.size
    _40 = mem[_38 + mem[_38]]
    if mem[_38 + mem[_38]] > test266151307():
        revert with 'NH{q', 65
    if _38 + ceil32(return_data.size) + floor32(mem[_38 + mem[_38]]) + 1 > test266151307() or floor32(mem[_38 + mem[_38]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _38 + ceil32(return_data.size) + floor32(mem[_38 + mem[_38]]) + 1
    mem[_38 + ceil32(return_data.size)] = _40
    require _39 + (32 * _40) + 32 <= return_data.size
    idx = 0
    s = _38 + _39 + 32
    t = _38 + ceil32(return_data.size) + 32
    while idx < _40:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
}

function sub_c9f72bfa(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = msg.sender
    mem[32] = 1
    if not stor1[address(msg.sender)]:
        revert with 0, 'Only controllers'
    require ext_code.size(stor2)
    staticcall stor2.WAVAX() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 100] = sub_13bc8a15Address
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args sub_13bc8a15Address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 100] = sub_13bc8a15Address
    require ext_code.size(loveAddress)
    staticcall loveAddress.0x70a08231 with:
            gas gas_remaining wei
           args sub_13bc8a15Address
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not ext_call.return_data[0]:
        revert with 0, 'ETH Amount 0!'
    if not ext_call.return_data[0]:
        revert with 0, 'LOVE Amount 0!'
    mem[(4 * ceil32(return_data.size)) + 96] = 2
    require ext_code.size(stor2)
    staticcall stor2.WAVAX() with:
            gas gas_remaining wei
    mem[(4 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (6 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(4 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
    mem[(4 * ceil32(return_data.size)) + 128] = loveAddress
    mem[(6 * ceil32(return_data.size)) + 192] = 0x676528d100000000000000000000000000000000000000000000000000000000
    mem[(6 * ceil32(return_data.size)) + 196] = arg1
    mem[(6 * ceil32(return_data.size)) + 228] = 0
    mem[(6 * ceil32(return_data.size)) + 260] = 160
    mem[(6 * ceil32(return_data.size)) + 356] = 2
    idx = 0
    s = (4 * ceil32(return_data.size)) + 128
    t = (6 * ceil32(return_data.size)) + 388
    while idx < mem[(4 * ceil32(return_data.size)) + 96]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(6 * ceil32(return_data.size)) + 292] = 0x219007c0e048989df4aac4838cdcacb86b7e03c8
    mem[(6 * ceil32(return_data.size)) + 324] = block.timestamp
    require ext_code.size(stor2)
    call stor2.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len (6 * ceil32(return_data.size)) + -mem[64] + 448]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _38 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _39 = mem[_38]
    require mem[_38] <= test266151307()
    require _38 + mem[_38] + 31 < _38 + return_data.size
    _40 = mem[_38 + mem[_38]]
    if mem[_38 + mem[_38]] > test266151307():
        revert with 'NH{q', 65
    if _38 + ceil32(return_data.size) + floor32(mem[_38 + mem[_38]]) + 1 > test266151307() or floor32(mem[_38 + mem[_38]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _38 + ceil32(return_data.size) + floor32(mem[_38 + mem[_38]]) + 1
    mem[_38 + ceil32(return_data.size)] = _40
    require _39 + (32 * _40) + 32 <= return_data.size
    idx = 0
    s = _38 + _39 + 32
    t = _38 + ceil32(return_data.size) + 32
    while idx < _40:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
}



}
