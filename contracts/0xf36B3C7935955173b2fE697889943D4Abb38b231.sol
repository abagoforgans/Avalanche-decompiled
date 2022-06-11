contract main {




// =====================  Runtime code  =====================


address stor0;
mapping of uint8 stor1;
uint8 stor2;
address sub_578855b2Address; offset 8
address routerAddress;
mapping of address sub_2c08f418;
address tokenAddress;
address adminAddress;

function sub_2c08f418(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_2c08f418[arg1]
}

function sub_578855b2(?) payable {
    return sub_578855b2Address
}

function paused() payable {
    return bool(stor2)
}

function admin() payable {
    return adminAddress
}

function router() payable {
    return routerAddress
}

function token() payable {
    return tokenAddress
}

function isAuthorized(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[address(arg1)])
}

function _fallback() payable {
    revert
}

function pause() payable {
    require msg.sender == stor0
    stor2 = 1
    emit Paused()
}

function unpause() payable {
    require msg.sender == stor0
    stor2 = 0
    emit Unpaused()
}

function isOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (arg1 == stor0)
}

function authorize(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor0
    stor1[address(arg1)] = 1
    emit Authorized(arg1);
}

function unauthorize(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor0
    stor1[address(arg1)] = 0
    emit Unauthorized(arg1);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor0
    stor0 = arg1
    stor1[address(arg1)] = 1
    emit OwnershipTransferred(arg1);
}

function sub_c044d82d(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == address(arg2)
    require msg.sender == stor0
    sub_2c08f418[arg1] = address(arg2)
    emit 0x26e410dc: arg1, address(arg2)
}

function setRouter(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor0
    routerAddress = arg1
    stor1[stor3] = 1
    emit Authorized(routerAddress);
    emit RouterUpdated(routerAddress);
}

function sub_abbdf4c5(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == address(arg4)
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    if arg5.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg5.length)) + 97 > test266151307() or ceil32(ceil32(arg5.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg5 + arg5.length + 36 <= calldata.size
    mem[arg5.length + 128] = 0
    if stor2:
        revert with 0, 'PAUSED'
    require stor1[address(msg.sender)]
    if not sub_2c08f418[arg2]:
        revert with 0, 'UNSUPPORTED_CHAIN'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args adminAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(ceil32(arg5.length)) + ceil32(return_data.size) + 101] = msg.sender
    mem[ceil32(ceil32(arg5.length)) + ceil32(return_data.size) + 133] = adminAddress
    mem[ceil32(ceil32(arg5.length)) + ceil32(return_data.size) + 165] = arg3
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, adminAddress, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(ceil32(arg5.length)) + (2 * ceil32(return_data.size)) + 101] = adminAddress
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args adminAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 'NH{q', 17
    if arg3 != 0:
        revert with 'NH{q', 1
    require ext_code.size(adminAddress)
    call adminAddress.0x44df8e70 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(ceil32(arg5.length)) + (4 * ceil32(return_data.size)) + 129] = arg3
    mem[ceil32(ceil32(arg5.length)) + (4 * ceil32(return_data.size)) + 161] = address(arg4)
    mem[ceil32(ceil32(arg5.length)) + (4 * ceil32(return_data.size)) + 193] = 96
    mem[ceil32(ceil32(arg5.length)) + (4 * ceil32(return_data.size)) + 225] = arg5.length
    mem[ceil32(ceil32(arg5.length)) + (4 * ceil32(return_data.size)) + 257 len ceil32(arg5.length)] = arg5[all], ext_call.return_data[arg5.length + -ceil32(ceil32(arg5.length)) + 31 len ceil32(arg5.length) - arg5.length]
    require ext_code.size(sub_578855b2Address)
    if ceil32(arg5.length) <= arg5.length:
        call sub_578855b2Address.0x75ea8358 with:
             gas gas_remaining wei
            args arg2, sub_2c08f418[arg2], arg1, Array(len=ceil32(arg5.length) + 128, data=mem[ceil32(ceil32(arg5.length)) + (4 * ceil32(return_data.size)) + 129 len ceil32(ceil32(arg5.length)) + 4])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
    else:
        call sub_578855b2Address with:
             gas gas_remaining wei
            args arg2, sub_2c08f418[arg2], arg1, Array(len=ceil32(arg5.length) + 128, data=mem[ceil32(ceil32(arg5.length)) + (4 * ceil32(return_data.size)) + 129 len ceil32(ceil32(arg5.length)) + 4])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 0, ext_call.return_data[4 len 28] == 0, ext_call.return_data[4 len 28]
}

function sub_b5ec1583(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == address(arg2)
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg4.length)) + 97 > test266151307() or ceil32(ceil32(arg4.length)) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg4.length
    require arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    require msg.sender == sub_578855b2Address
    mem[0] = arg1
    mem[32] = 4
    require address(arg2) == sub_2c08f418[arg1]
    require arg4.length >= 96
    _4 = mem[128]
    require mem[128] == mem[128]
    _5 = mem[160]
    require mem[160] == mem[172 len 20]
    _6 = mem[192]
    require mem[192] <= test266151307()
    require mem[192] + 159 < arg4.length + 128
    _7 = mem[mem[192] + 128]
    if mem[mem[192] + 128] > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg4.length)) + ceil32(ceil32(mem[mem[192] + 128])) + 98 > test266151307() or ceil32(ceil32(mem[mem[192] + 128])) + 98 < 97:
        revert with 'NH{q', 65
    mem[64] = ceil32(ceil32(arg4.length)) + ceil32(ceil32(mem[mem[192] + 128])) + 98
    mem[ceil32(ceil32(arg4.length)) + 97] = mem[mem[192] + 128]
    require _6 + _7 + 64 <= arg4.length + 32
    mem[ceil32(ceil32(arg4.length)) + 129 len ceil32(_7)] = mem[_6 + 160 len ceil32(_7)]
    if ceil32(_7) <= _7:
        mem[mem[64] + 4] = routerAddress
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args routerAddress
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _45 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _47 = mem[_45]
        require mem[_45] == mem[_45]
        mem[mem[64] + 36] = _4
        require ext_code.size(adminAddress)
        call adminAddress.0x40c10f19 with:
             gas gas_remaining wei
            args routerAddress, _4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = routerAddress
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args routerAddress
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _57 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_57] == mem[_57]
        if mem[_57] < _47:
            revert with 'NH{q', 17
        if mem[_57] - _47 != _4:
            revert with 'NH{q', 1
    else:
        mem[ceil32(ceil32(arg4.length)) + _7 + 129] = 0
        mem[mem[64] + 4] = routerAddress
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args routerAddress
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _46 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _48 = mem[_46]
        require mem[_46] == mem[_46]
        mem[mem[64] + 36] = _4
        require ext_code.size(adminAddress)
        call adminAddress.0x40c10f19 with:
             gas gas_remaining wei
            args routerAddress, _4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = routerAddress
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args routerAddress
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _58 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_58] == mem[_58]
        if mem[_58] < _48:
            revert with 'NH{q', 17
        if mem[_58] - _48 != _4:
            revert with 'NH{q', 1
    mem[mem[64]] = 0xf101f7fe00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = arg3
    mem[mem[64] + 36] = address(_5)
    mem[mem[64] + 68] = 96
    mem[mem[64] + 100] = _7
    mem[mem[64] + 132 len ceil32(_7)] = mem[ceil32(ceil32(arg4.length)) + 129 len ceil32(_7)]
    if ceil32(_7) > _7:
        mem[mem[64] + _7 + 132] = 0
    require ext_code.size(routerAddress)
    call routerAddress.0xf101f7fe with:
         gas gas_remaining wei
        args arg3, address(_5), Array(len=_7, data=mem[mem[64] + 132 len ceil32(_7)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
