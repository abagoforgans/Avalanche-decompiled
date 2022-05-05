contract main {




// =====================  Runtime code  =====================


address stor0;
mapping of uint8 stor1;
uint8 stor2;
address stor2; offset 8
address stor3;
uint256 sub_baee97f4;
address treasuryAddress;
uint256 treasuryFee;
address stakingAddress;
uint256 stakingFee;
mapping of address sub_0025ec2a;

function sub_0025ec2a(?) payable {
    require calldata.size - 4 >= 32
    return sub_0025ec2a[arg1]
}

function staking() payable {
    return stakingAddress
}

function paused() payable {
    return bool(uint8(stor2.field_0))
}

function treasury() payable {
    return treasuryAddress
}

function sub_baee97f4(?) payable {
    return sub_baee97f4
}

function treasuryFee() payable {
    return treasuryFee
}

function stakingFee() payable {
    return stakingFee
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
    uint8(stor2.field_0) = 1
    emit Paused()
}

function unpause() payable {
    require msg.sender == stor0
    uint8(stor2.field_0) = 0
    emit Unpaused()
}

function isOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (stor0 == arg1)
}

function sub_c044d82d(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    require msg.sender == stor0
    sub_0025ec2a[arg1] = address(arg2)
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

function sub_597e6e3e(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    require msg.sender == stor0
    if arg1 >= 100:
        revert with 0, 'Fee limit exceeded'
    stakingFee = arg1
    stakingAddress = address(arg2)
}

function sub_abb9683c(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    require msg.sender == stor0
    if arg1 >= 100:
        revert with 0, 'Fee limit exceeded'
    treasuryFee = arg1
    treasuryAddress = address(arg2)
}

function returnTokenOwnership() payable {
    require msg.sender == stor0
    require ext_code.size(address(stor2.field_8))
    call address(stor2.field_8).0xf2fde38b with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_8984d3b6(?) payable {
    require calldata.size - 4 >= 64
    if uint8(stor2.field_0):
        revert with 0, 'PAUSED'
    if not sub_0025ec2a[arg1]:
        revert with 0, 'Unsupported Chain'
    call address(stor2.field_8).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if treasuryFee and arg2 > -1 / treasuryFee:
        revert with 0, 17
    if treasuryFee * arg2 / 10000:
        call address(stor2.field_8).0xa9059cbb with:
             gas gas_remaining wei
            args treasuryAddress, treasuryFee * arg2 / 10000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if stakingFee and arg2 > -1 / stakingFee:
        revert with 0, 17
    if stakingFee * arg2 / 10000:
        call address(stor2.field_8).0xa9059cbb with:
             gas gas_remaining wei
            args stakingAddress, stakingFee * arg2 / 10000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if arg2 < treasuryFee * arg2 / 10000:
        revert with 0, 17
    if arg2 - (treasuryFee * arg2 / 10000) < stakingFee * arg2 / 10000:
        revert with 0, 17
    require ext_code.size(address(stor2.field_8))
    call address(stor2.field_8).0x42966c68 with:
         gas gas_remaining wei
        args (arg2 - (treasuryFee * arg2 / 10000) - (stakingFee * arg2 / 10000))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call stor3.0x75ea8358 with:
         gas gas_remaining wei
        args arg1, sub_0025ec2a[arg1], sub_baee97f4, 128, 64, msg.sender, arg2 - (treasuryFee * arg2 / 10000) - (stakingFee * arg2 / 10000)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_b5ec1583(?) payable {
    require calldata.size - 4 >= 128
    require arg2 == address(arg2)
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg4.length)) + 97 < 96 or ceil32(ceil32(arg4.length)) + 97 > test266151307():
        revert with 0, 65
    require arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    if uint8(stor2.field_0):
        revert with 0, 'PAUSED'
    if stor3 != msg.sender:
        revert with 0, '!BRIDGE'
    if sub_0025ec2a[arg1] != address(arg2):
        revert with 0, '!TOKEN_BRIDGE'
    require arg3 == sub_baee97f4
    require arg4.length >= 64
    require mem[128] == mem[140 len 20]
    require ext_code.size(address(stor2.field_8))
    call address(stor2.field_8).mint(uint256 arg1) with:
         gas gas_remaining wei
        args mem[160]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if treasuryFee and mem[160] > -1 / treasuryFee:
        revert with 0, 17
    if treasuryFee * mem[160] / 10000:
        call address(stor2.field_8).0xa9059cbb with:
             gas gas_remaining wei
            args treasuryAddress, treasuryFee * mem[160] / 10000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if stakingFee and mem[160] > -1 / stakingFee:
        revert with 0, 17
    if stakingFee * mem[160] / 10000:
        call address(stor2.field_8).0xa9059cbb with:
             gas gas_remaining wei
            args stakingAddress, stakingFee * mem[160] / 10000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if mem[160] < treasuryFee * mem[160] / 10000:
        revert with 0, 17
    if mem[160] - (treasuryFee * mem[160] / 10000) < stakingFee * mem[160] / 10000:
        revert with 0, 17
    call address(stor2.field_8).0xa9059cbb with:
         gas gas_remaining wei
        args address(mem[128]), mem[160] - (treasuryFee * mem[160] / 10000) - (stakingFee * mem[160] / 10000)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
