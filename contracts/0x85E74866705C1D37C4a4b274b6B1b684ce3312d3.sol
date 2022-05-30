contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint128 stor4;
uint128 stor4; offset 128
uint256 stor4;
uint32 stor5;
uint256 stor5; offset 32
uint256 stor5;
uint8 stor6;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function sub_fdd61f81(?) payable {
    return uint256(stor4.field_0), uint256(stor5.field_0), bool(stor6)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_b62882d0(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor3 = arg1
}

function sub_b7db9374(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor6 = uint8(bool(arg1))
}

function sub_0f98db56(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 and arg2 > -1 / arg1:
        revert with 'NH{q', 17
    return (arg1 * arg2 / 10000)
}

function sortTokens(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 < arg2:
        return address(arg1), arg2
    return address(arg2), arg1
}

function sub_e2ac77eb(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint128(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint128(stor4.field_0) = uint128(arg1)
    uint128(stor4.field_128) = 0
}

function sub_2deb27d9(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint32(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint32(stor5.field_0) = uint32(arg1)
    Mask(224, 0, stor5.field_32) = 0
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

function sub_a98bedee(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(address(arg1))
    call address(arg1).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_35bbf4ab(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require ext_code.size(address(arg3))
    staticcall address(arg3).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if address(arg1) < address(arg2):
        if address(arg1) == address(arg1):
            return ext_call.return_data[18 len 14], ext_call.return_data[32] << 144
    else:
        if address(arg2) == address(arg1):
            return ext_call.return_data[18 len 14], ext_call.return_data[32] << 144
    return ext_call.return_data[50 len 14], ext_call.return_data[0] << 144
}

function sub_9982fc2d(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if 10000 < arg4:
        revert with 'NH{q', 17
    if -arg4 + 10000 and arg1 > -1 / -arg4 + 10000:
        revert with 'NH{q', 17
    if arg2 and 10000 > -1 / arg2:
        revert with 'NH{q', 17
    if 10000 * arg2 > (-10000 * arg1) + (arg4 * arg1) - 1:
        revert with 'NH{q', 17
    if 10000 < arg4:
        revert with 'NH{q', 17
    if -arg4 + 10000 and arg1 > -1 / -arg4 + 10000:
        revert with 'NH{q', 17
    if (10000 * arg1) - (arg4 * arg1) and arg3 > -1 / (10000 * arg1) - (arg4 * arg1):
        revert with 'NH{q', 17
    if not (10000 * arg2) + (10000 * arg1) - (arg4 * arg1):
        revert with 'NH{q', 18
    if arg2 > -arg1 - 1:
        revert with 'NH{q', 17
    if arg3 < (10000 * arg1 * arg3) - (arg4 * arg1 * arg3) / (10000 * arg2) + (10000 * arg1) - (arg4 * arg1):
        revert with 'NH{q', 17
    if arg2 > -arg1 - 1:
        revert with 'NH{q', 17
    if arg2 + arg1 and arg3 - ((10000 * arg1 * arg3) - (arg4 * arg1 * arg3) / (10000 * arg2) + (10000 * arg1) - (arg4 * arg1)) > -1 / arg2 + arg1:
        revert with 'NH{q', 17
    return (10000 * arg1 * arg3) - (arg4 * arg1 * arg3) / (10000 * arg2) + (10000 * arg1) - (arg4 * arg1), 
           arg2 + arg1,
           arg3 - ((10000 * arg1 * arg3) - (arg4 * arg1 * arg3) / (10000 * arg2) + (10000 * arg1) - (arg4 * arg1)),
           (arg3 * arg2) - ((10000 * arg1 * arg3) - (arg4 * arg1 * arg3) / (10000 * arg2) + (10000 * arg1) - (arg4 * arg1) * arg2) + (arg3 * arg1) - ((10000 * arg1 * arg3) - (arg4 * arg1 * arg3) / (10000 * arg2) + (10000 * arg1) - (arg4 * arg1) * arg1)
}

function sub_40f3074a(?) payable {
    if stor6:
        if block.timestamp < uint256(stor4.field_0):
            revert with 0, '1e'
        require ext_code.size(0x3fb7931f7bfa9f318fbf2346f568802a76531774)
        call 0x3fb7931f7bfa9f318fbf2346f568802a76531774.rebase() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0x3fb7931f7bfa9f318fbf2346f568802a76531774)
        call 0x3fb7931f7bfa9f318fbf2346f568802a76531774.claim(address arg1) with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0x28f930fb6a2fbba4667ef5394dee96e24520ca34)
        staticcall 0x28f930fb6a2fbba4667ef5394dee96e24520ca34.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(0x28f930fb6a2fbba4667ef5394dee96e24520ca34)
        call 0x28f930fb6a2fbba4667ef5394dee96e24520ca34.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0x3fb7931f7bfa9f318fbf2346f568802a76531774, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(0x3fb7931f7bfa9f318fbf2346f568802a76531774)
        call 0x3fb7931f7bfa9f318fbf2346f568802a76531774.unstake(uint256 arg1, bool arg2) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if stor2 and ext_call.return_data[0] > -1 / stor2:
            revert with 'NH{q', 17
        require ext_code.size(0x288ea998bab3e0cbe7dec38a7f383ec2af1364f7)
        staticcall 0x288ea998bab3e0cbe7dec38a7f383ec2af1364f7.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if 10000 < stor1:
            revert with 'NH{q', 17
        if -stor1 + 10000 and stor2 * ext_call.return_data[0] / 10^6 > -1 / -stor1 + 10000:
            revert with 'NH{q', 17
        if ext_call.return_data[50 len 14] and 10000 > -1 / ext_call.return_data[50 len 14]:
            revert with 'NH{q', 17
        if 10000 * ext_call.return_data[50 len 14] > (-10000 * stor2 * ext_call.return_data[0] / 10^6) + (stor1 * stor2 * ext_call.return_data[0] / 10^6) - 1:
            revert with 'NH{q', 17
        if 10000 < stor1:
            revert with 'NH{q', 17
        if -stor1 + 10000 and stor2 * ext_call.return_data[0] / 10^6 > -1 / -stor1 + 10000:
            revert with 'NH{q', 17
        if (10000 * stor2 * ext_call.return_data[0] / 10^6) - (stor1 * stor2 * ext_call.return_data[0] / 10^6) and ext_call.return_data[18 len 14] > -1 / (10000 * stor2 * ext_call.return_data[0] / 10^6) - (stor1 * stor2 * ext_call.return_data[0] / 10^6):
            revert with 'NH{q', 17
        if not (10000 * ext_call.return_data[50 len 14]) + (10000 * stor2 * ext_call.return_data[0] / 10^6) - (stor1 * stor2 * ext_call.return_data[0] / 10^6):
            revert with 'NH{q', 18
        if ext_call.return_data[50 len 14] > -(stor2 * ext_call.return_data[0] / 10^6) - 1:
            revert with 'NH{q', 17
        if ext_call.return_data[18 len 14] < (10000 * stor2 * ext_call.return_data[0] / 10^6 * ext_call.return_data[18 len 14]) - (stor1 * stor2 * ext_call.return_data[0] / 10^6 * ext_call.return_data[18 len 14]) / (10000 * ext_call.return_data[50 len 14]) + (10000 * stor2 * ext_call.return_data[0] / 10^6) - (stor1 * stor2 * ext_call.return_data[0] / 10^6):
            revert with 'NH{q', 17
        if ext_call.return_data[50 len 14] > -(stor2 * ext_call.return_data[0] / 10^6) - 1:
            revert with 'NH{q', 17
        if ext_call.return_data[50 len 14] + (stor2 * ext_call.return_data[0] / 10^6) and ext_call.return_data[18 len 14] - ((10000 * stor2 * ext_call.return_data[0] / 10^6 * ext_call.return_data[18 len 14]) - (stor1 * stor2 * ext_call.return_data[0] / 10^6 * ext_call.return_data[18 len 14]) / (10000 * ext_call.return_data[50 len 14]) + (10000 * stor2 * ext_call.return_data[0] / 10^6) - (stor1 * stor2 * ext_call.return_data[0] / 10^6)) > -1 / ext_call.return_data[50 len 14] + (stor2 * ext_call.return_data[0] / 10^6):
            revert with 'NH{q', 17
        require ext_code.size(0xb72ab6f7177bbb41efcc17d817778d77460259f1)
        call 0xb72ab6f7177bbb41efcc17d817778d77460259f1.0xa9059cbb with:
             gas gas_remaining wei
            args 0x288ea998bab3e0cbe7dec38a7f383ec2af1364f7, stor2 * ext_call.return_data[0] / 10^6
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(0x288ea998bab3e0cbe7dec38a7f383ec2af1364f7)
        call 0x288ea998bab3e0cbe7dec38a7f383ec2af1364f7.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args (10000 * stor2 * ext_call.return_data[0] / 10^6 * Mask(112, 0, ext_call.return_data[0])) - (stor1 * stor2 * ext_call.return_data[0] / 10^6 * Mask(112, 0, ext_call.return_data[0])) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * stor2 * ext_call.return_data[0] / 10^6) - (stor1 * stor2 * ext_call.return_data[0] / 10^6), 0, owner, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if ext_call.return_data[0] < stor2 * ext_call.return_data[0] / 10^6:
            revert with 'NH{q', 17
        require ext_code.size(0xbf56ea8a64faf58889584930716e655317d22ea6)
        staticcall 0xbf56ea8a64faf58889584930716e655317d22ea6.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if 10000 < stor1:
            revert with 'NH{q', 17
        if -stor1 + 10000 and ext_call.return_data[0] - (stor2 * ext_call.return_data[0] / 10^6) > -1 / -stor1 + 10000:
            revert with 'NH{q', 17
        if ext_call.return_data[18 len 14] and 10000 > -1 / ext_call.return_data[18 len 14]:
            revert with 'NH{q', 17
        if 10000 * ext_call.return_data[18 len 14] > (-10000 * ext_call.return_data[0]) + (10000 * stor2 * ext_call.return_data[0] / 10^6) + (ext_call.return_data[0] * stor1) + (-1 * stor2 * ext_call.return_data[0] / 10^6 * stor1) - 1:
            revert with 'NH{q', 17
        if 10000 < stor1:
            revert with 'NH{q', 17
        if -stor1 + 10000 and ext_call.return_data[0] - (stor2 * ext_call.return_data[0] / 10^6) > -1 / -stor1 + 10000:
            revert with 'NH{q', 17
        if (10000 * ext_call.return_data[0]) - (10000 * stor2 * ext_call.return_data[0] / 10^6) - (ext_call.return_data[0] * stor1) + (stor2 * ext_call.return_data[0] / 10^6 * stor1) and ext_call.return_data[50 len 14] > -1 / (10000 * ext_call.return_data[0]) - (10000 * stor2 * ext_call.return_data[0] / 10^6) - (ext_call.return_data[0] * stor1) + (stor2 * ext_call.return_data[0] / 10^6 * stor1):
            revert with 'NH{q', 17
        if not (10000 * ext_call.return_data[18 len 14]) + (10000 * ext_call.return_data[0]) - (10000 * stor2 * ext_call.return_data[0] / 10^6) - (ext_call.return_data[0] * stor1) + (stor2 * ext_call.return_data[0] / 10^6 * stor1):
            revert with 'NH{q', 18
        if ext_call.return_data[18 len 14] > -ext_call.return_data[0] + (stor2 * ext_call.return_data[0] / 10^6) - 1:
            revert with 'NH{q', 17
        if ext_call.return_data[50 len 14] < (10000 * ext_call.return_data[0] * ext_call.return_data[50 len 14]) - (10000 * stor2 * ext_call.return_data[0] / 10^6 * ext_call.return_data[50 len 14]) - (ext_call.return_data[0] * stor1 * ext_call.return_data[50 len 14]) + (stor2 * ext_call.return_data[0] / 10^6 * stor1 * ext_call.return_data[50 len 14]) / (10000 * ext_call.return_data[18 len 14]) + (10000 * ext_call.return_data[0]) - (10000 * stor2 * ext_call.return_data[0] / 10^6) - (ext_call.return_data[0] * stor1) + (stor2 * ext_call.return_data[0] / 10^6 * stor1):
            revert with 'NH{q', 17
        if ext_call.return_data[18 len 14] > -ext_call.return_data[0] + (stor2 * ext_call.return_data[0] / 10^6) - 1:
            revert with 'NH{q', 17
        if ext_call.return_data[18 len 14] + ext_call.return_data[0] - (stor2 * ext_call.return_data[0] / 10^6) and ext_call.return_data[50 len 14] - ((10000 * ext_call.return_data[0] * ext_call.return_data[50 len 14]) - (10000 * stor2 * ext_call.return_data[0] / 10^6 * ext_call.return_data[50 len 14]) - (ext_call.return_data[0] * stor1 * ext_call.return_data[50 len 14]) + (stor2 * ext_call.return_data[0] / 10^6 * stor1 * ext_call.return_data[50 len 14]) / (10000 * ext_call.return_data[18 len 14]) + (10000 * ext_call.return_data[0]) - (10000 * stor2 * ext_call.return_data[0] / 10^6) - (ext_call.return_data[0] * stor1) + (stor2 * ext_call.return_data[0] / 10^6 * stor1)) > -1 / ext_call.return_data[18 len 14] + ext_call.return_data[0] - (stor2 * ext_call.return_data[0] / 10^6):
            revert with 'NH{q', 17
        require ext_code.size(0xb72ab6f7177bbb41efcc17d817778d77460259f1)
        call 0xb72ab6f7177bbb41efcc17d817778d77460259f1.0xa9059cbb with:
             gas gas_remaining wei
            args 0xbf56ea8a64faf58889584930716e655317d22ea6, ext_call.return_data[0] - (stor2 * ext_call.return_data[0] / 10^6)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(0xbf56ea8a64faf58889584930716e655317d22ea6)
        call 0xbf56ea8a64faf58889584930716e655317d22ea6.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, (10000 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (10000 * stor2 * ext_call.return_data[0] / 10^6 * Mask(112, 0, ext_call.return_data[32])) - (ext_call.return_data[0] * stor1 * Mask(112, 0, ext_call.return_data[32])) + (stor2 * ext_call.return_data[0] / 10^6 * stor1 * Mask(112, 0, ext_call.return_data[32])) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * ext_call.return_data[0]) - (10000 * stor2 * ext_call.return_data[0] / 10^6) - (ext_call.return_data[0] * stor1) + (stor2 * ext_call.return_data[0] / 10^6 * stor1), owner, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        stor6 = 0
        require ext_code.size(0x3fb7931f7bfa9f318fbf2346f568802a76531774)
        call 0x3fb7931f7bfa9f318fbf2346f568802a76531774.epoch() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 128
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_call.return_data[32] == ext_call.return_data[32]
        require ext_call.return_data[64] == ext_call.return_data[64]
        require ext_call.return_data[96] == ext_call.return_data[96]
        uint128(stor4.field_0) = ext_call.return_data[112 len 16]
        uint128(stor4.field_128) = 0
    else:
        require ext_code.size(0x3fb7931f7bfa9f318fbf2346f568802a76531774)
        call 0x3fb7931f7bfa9f318fbf2346f568802a76531774.warmupPeriod() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] > 1:
            revert with 0, 'w'
        require ext_code.size(0x3fb7931f7bfa9f318fbf2346f568802a76531774)
        call 0x3fb7931f7bfa9f318fbf2346f568802a76531774.warmupContract() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != 0xf98adca9b43f6d852074f311d1c5ef21e7bed50e:
            revert with 0, 'w'
        if block.timestamp >= uint256(stor4.field_0):
            revert with 0, '1b'
        if uint256(stor4.field_0) < uint256(stor5.field_0):
            revert with 'NH{q', 17
        if block.timestamp < uint256(stor4.field_0) - uint256(stor5.field_0):
            revert with 0, '1c'
        require ext_code.size(0x288ea998bab3e0cbe7dec38a7f383ec2af1364f7)
        staticcall 0x288ea998bab3e0cbe7dec38a7f383ec2af1364f7.getReserves() with:
                gas gas_remaining wei
        mem[(2 * ceil32(return_data.size)) + 96 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if ext_call.return_data[18 len 14] and stor3 > -1 / ext_call.return_data[18 len 14]:
            revert with 'NH{q', 17
        mem[(4 * ceil32(return_data.size)) + 100] = owner
        mem[(4 * ceil32(return_data.size)) + 132] = this.address
        mem[(4 * ceil32(return_data.size)) + 164] = Mask(112, 0, ext_call.return_data[0]) * stor3 / 10000
        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x23b872dd with:
             gas gas_remaining wei
            args owner, address(this.address), Mask(112, 0, ext_call.return_data[0]) * stor3 / 10000
        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] < Mask(112, 0, ext_call.return_data[0]) * stor3 / 10000:
            revert with 0, '$'
        require ext_code.size(0x288ea998bab3e0cbe7dec38a7f383ec2af1364f7)
        staticcall 0x288ea998bab3e0cbe7dec38a7f383ec2af1364f7.getReserves() with:
                gas gas_remaining wei
        mem[(7 * ceil32(return_data.size)) + 96 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if 10000 < stor1:
            revert with 'NH{q', 17
        if -stor1 + 10000 and Mask(112, 0, ext_call.return_data[0]) * stor3 / 10000 > -1 / -stor1 + 10000:
            revert with 'NH{q', 17
        if ext_call.return_data[18 len 14] and 10000 > -1 / ext_call.return_data[18 len 14]:
            revert with 'NH{q', 17
        if 10000 * ext_call.return_data[18 len 14] > (-10000 * Mask(112, 0, ext_call.return_data[0]) * stor3 / 10000) + (stor1 * Mask(112, 0, ext_call.return_data[0]) * stor3 / 10000) - 1:
            revert with 'NH{q', 17
        if 10000 < stor1:
            revert with 'NH{q', 17
        if -stor1 + 10000 and Mask(112, 0, ext_call.return_data[0]) * stor3 / 10000 > -1 / -stor1 + 10000:
            revert with 'NH{q', 17
        if (10000 * Mask(112, 0, ext_call.return_data[0]) * stor3 / 10000) - (stor1 * Mask(112, 0, ext_call.return_data[0]) * stor3 / 10000) and ext_call.return_data[50 len 14] > -1 / (10000 * Mask(112, 0, ext_call.return_data[0]) * stor3 / 10000) - (stor1 * Mask(112, 0, ext_call.return_data[0]) * stor3 / 10000):
            revert with 'NH{q', 17
        if not (10000 * ext_call.return_data[18 len 14]) + (10000 * Mask(112, 0, ext_call.return_data[0]) * stor3 / 10000) - (stor1 * Mask(112, 0, ext_call.return_data[0]) * stor3 / 10000):
            revert with 'NH{q', 18
        if ext_call.return_data[18 len 14] > -(Mask(112, 0, ext_call.return_data[0]) * stor3 / 10000) - 1:
            revert with 'NH{q', 17
        if ext_call.return_data[50 len 14] < (10000 * Mask(112, 0, ext_call.return_data[0]) * stor3 / 10000 * ext_call.return_data[50 len 14]) - (stor1 * Mask(112, 0, ext_call.return_data[0]) * stor3 / 10000 * ext_call.return_data[50 len 14]) / (10000 * ext_call.return_data[18 len 14]) + (10000 * Mask(112, 0, ext_call.return_data[0]) * stor3 / 10000) - (stor1 * Mask(112, 0, ext_call.return_data[0]) * stor3 / 10000):
            revert with 'NH{q', 17
        if ext_call.return_data[18 len 14] > -(Mask(112, 0, ext_call.return_data[0]) * stor3 / 10000) - 1:
            revert with 'NH{q', 17
        if ext_call.return_data[18 len 14] + (Mask(112, 0, ext_call.return_data[0]) * stor3 / 10000) and ext_call.return_data[50 len 14] - ((10000 * Mask(112, 0, ext_call.return_data[0]) * stor3 / 10000 * ext_call.return_data[50 len 14]) - (stor1 * Mask(112, 0, ext_call.return_data[0]) * stor3 / 10000 * ext_call.return_data[50 len 14]) / (10000 * ext_call.return_data[18 len 14]) + (10000 * Mask(112, 0, ext_call.return_data[0]) * stor3 / 10000) - (stor1 * Mask(112, 0, ext_call.return_data[0]) * stor3 / 10000)) > -1 / ext_call.return_data[18 len 14] + (Mask(112, 0, ext_call.return_data[0]) * stor3 / 10000):
            revert with 'NH{q', 17
        mem[(8 * ceil32(return_data.size)) + 100] = 0x288ea998bab3e0cbe7dec38a7f383ec2af1364f7
        mem[(8 * ceil32(return_data.size)) + 132] = Mask(112, 0, ext_call.return_data[0]) * stor3 / 10000
        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0xa9059cbb with:
             gas gas_remaining wei
            args 0x288ea998bab3e0cbe7dec38a7f383ec2af1364f7, Mask(112, 0, ext_call.return_data[0]) * stor3 / 10000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(10 * ceil32(return_data.size)) + 196] = this.address
        mem[(10 * ceil32(return_data.size)) + 228] = 128
        mem[(10 * ceil32(return_data.size)) + 260] = 0
        mem[(10 * ceil32(return_data.size)) + 292 len 0] = None
        require ext_code.size(0x288ea998bab3e0cbe7dec38a7f383ec2af1364f7)
        call 0x288ea998bab3e0cbe7dec38a7f383ec2af1364f7.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, (10000 * Mask(112, 0, ext_call.return_data[0]) * stor3 / 10000 * Mask(112, 0, ext_call.return_data[32])) - (stor1 * Mask(112, 0, ext_call.return_data[0]) * stor3 / 10000 * Mask(112, 0, ext_call.return_data[32])) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * Mask(112, 0, ext_call.return_data[0]) * stor3 / 10000) - (stor1 * Mask(112, 0, ext_call.return_data[0]) * stor3 / 10000), address(this.address), 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0xbf56ea8a64faf58889584930716e655317d22ea6)
        staticcall 0xbf56ea8a64faf58889584930716e655317d22ea6.getReserves() with:
                gas gas_remaining wei
        mem[(10 * ceil32(return_data.size)) + 128 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if ext_call.return_data[50 len 14] and stor3 > -1 / ext_call.return_data[50 len 14]:
            revert with 'NH{q', 17
        mem[(11 * ceil32(return_data.size)) + 132] = owner
        mem[(11 * ceil32(return_data.size)) + 164] = this.address
        mem[(11 * ceil32(return_data.size)) + 196] = Mask(112, 0, ext_call.return_data[32]) * stor3 / 10000
        require ext_code.size(0xd586e7f844cea2f87f50152665bcbc2c279d8d70)
        call 0xd586e7f844cea2f87f50152665bcbc2c279d8d70.0x23b872dd with:
             gas gas_remaining wei
            args owner, address(this.address), Mask(112, 0, ext_call.return_data[32]) * stor3 / 10000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(13 * ceil32(return_data.size)) + 132] = this.address
        require ext_code.size(0xd586e7f844cea2f87f50152665bcbc2c279d8d70)
        staticcall 0xd586e7f844cea2f87f50152665bcbc2c279d8d70.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address), mem[(13 * ceil32(return_data.size)) + 164 len 5 * ceil32(return_data.size)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] < Mask(112, 0, ext_call.return_data[32]) * stor3 / 10000:
            revert with 0, '$', mem[(15 * ceil32(return_data.size)) + 228 len 9 * ceil32(return_data.size)]
        mem[(15 * ceil32(return_data.size)) + 128] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
        require ext_code.size(0xbf56ea8a64faf58889584930716e655317d22ea6)
        staticcall 0xbf56ea8a64faf58889584930716e655317d22ea6.getReserves() with:
                gas gas_remaining wei
               args mem[(15 * ceil32(return_data.size)) + 132 len 8 * ceil32(return_data.size)]
        mem[(15 * ceil32(return_data.size)) + 128 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if 10000 < stor1:
            revert with 'NH{q', 17
        if -stor1 + 10000 and Mask(112, 0, ext_call.return_data[32]) * stor3 / 10000 > -1 / -stor1 + 10000:
            revert with 'NH{q', 17
        if ext_call.return_data[50 len 14] and 10000 > -1 / ext_call.return_data[50 len 14]:
            revert with 'NH{q', 17
        if 10000 * ext_call.return_data[50 len 14] > (-10000 * Mask(112, 0, ext_call.return_data[32]) * stor3 / 10000) + (stor1 * Mask(112, 0, ext_call.return_data[32]) * stor3 / 10000) - 1:
            revert with 'NH{q', 17
        if 10000 < stor1:
            revert with 'NH{q', 17
        if -stor1 + 10000 and Mask(112, 0, ext_call.return_data[32]) * stor3 / 10000 > -1 / -stor1 + 10000:
            revert with 'NH{q', 17
        if (10000 * Mask(112, 0, ext_call.return_data[32]) * stor3 / 10000) - (stor1 * Mask(112, 0, ext_call.return_data[32]) * stor3 / 10000) and ext_call.return_data[18 len 14] > -1 / (10000 * Mask(112, 0, ext_call.return_data[32]) * stor3 / 10000) - (stor1 * Mask(112, 0, ext_call.return_data[32]) * stor3 / 10000):
            revert with 'NH{q', 17
        if not (10000 * ext_call.return_data[50 len 14]) + (10000 * Mask(112, 0, ext_call.return_data[32]) * stor3 / 10000) - (stor1 * Mask(112, 0, ext_call.return_data[32]) * stor3 / 10000):
            revert with 'NH{q', 18
        if ext_call.return_data[50 len 14] > -(Mask(112, 0, ext_call.return_data[32]) * stor3 / 10000) - 1:
            revert with 'NH{q', 17
        if ext_call.return_data[18 len 14] < (10000 * Mask(112, 0, ext_call.return_data[32]) * stor3 / 10000 * ext_call.return_data[18 len 14]) - (stor1 * Mask(112, 0, ext_call.return_data[32]) * stor3 / 10000 * ext_call.return_data[18 len 14]) / (10000 * ext_call.return_data[50 len 14]) + (10000 * Mask(112, 0, ext_call.return_data[32]) * stor3 / 10000) - (stor1 * Mask(112, 0, ext_call.return_data[32]) * stor3 / 10000):
            revert with 'NH{q', 17
        if ext_call.return_data[50 len 14] > -(Mask(112, 0, ext_call.return_data[32]) * stor3 / 10000) - 1:
            revert with 'NH{q', 17
        if ext_call.return_data[50 len 14] + (Mask(112, 0, ext_call.return_data[32]) * stor3 / 10000) and ext_call.return_data[18 len 14] - ((10000 * Mask(112, 0, ext_call.return_data[32]) * stor3 / 10000 * ext_call.return_data[18 len 14]) - (stor1 * Mask(112, 0, ext_call.return_data[32]) * stor3 / 10000 * ext_call.return_data[18 len 14]) / (10000 * ext_call.return_data[50 len 14]) + (10000 * Mask(112, 0, ext_call.return_data[32]) * stor3 / 10000) - (stor1 * Mask(112, 0, ext_call.return_data[32]) * stor3 / 10000)) > -1 / ext_call.return_data[50 len 14] + (Mask(112, 0, ext_call.return_data[32]) * stor3 / 10000):
            revert with 'NH{q', 17
        mem[(16 * ceil32(return_data.size)) + 132] = 0xbf56ea8a64faf58889584930716e655317d22ea6
        mem[(16 * ceil32(return_data.size)) + 164] = Mask(112, 0, ext_call.return_data[32]) * stor3 / 10000
        require ext_code.size(0xd586e7f844cea2f87f50152665bcbc2c279d8d70)
        call 0xd586e7f844cea2f87f50152665bcbc2c279d8d70.0xa9059cbb with:
             gas gas_remaining wei
            args mem[(16 * ceil32(return_data.size)) + 132 len ceil32(return_data.size) + 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(17 * ceil32(return_data.size)) + 196] = 0
        mem[(17 * ceil32(return_data.size)) + 228] = this.address
        mem[(17 * ceil32(return_data.size)) + 260] = 128
        mem[(17 * ceil32(return_data.size)) + 292] = 0
        mem[(17 * ceil32(return_data.size)) + 324 len 0] = None
        require ext_code.size(0xbf56ea8a64faf58889584930716e655317d22ea6)
        call 0xbf56ea8a64faf58889584930716e655317d22ea6.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args (10000 * Mask(112, 0, ext_call.return_data[32]) * stor3 / 10000 * Mask(112, 0, ext_call.return_data[0])) - (stor1 * Mask(112, 0, ext_call.return_data[32]) * stor3 / 10000 * Mask(112, 0, ext_call.return_data[0])) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * Mask(112, 0, ext_call.return_data[32]) * stor3 / 10000) - (stor1 * Mask(112, 0, ext_call.return_data[32]) * stor3 / 10000), 0, address(this.address), 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if (10000 * Mask(112, 0, ext_call.return_data[0]) * stor3 / 10000 * Mask(112, 0, ext_call.return_data[32])) - (stor1 * Mask(112, 0, ext_call.return_data[0]) * stor3 / 10000 * Mask(112, 0, ext_call.return_data[32])) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * Mask(112, 0, ext_call.return_data[0]) * stor3 / 10000) - (stor1 * Mask(112, 0, ext_call.return_data[0]) * stor3 / 10000) > -((10000 * Mask(112, 0, ext_call.return_data[32]) * stor3 / 10000 * Mask(112, 0, ext_call.return_data[0])) - (stor1 * Mask(112, 0, ext_call.return_data[32]) * stor3 / 10000 * Mask(112, 0, ext_call.return_data[0])) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * Mask(112, 0, ext_call.return_data[32]) * stor3 / 10000) - (stor1 * Mask(112, 0, ext_call.return_data[32]) * stor3 / 10000)) - 1:
            revert with 'NH{q', 17
        if (10000 * Mask(112, 0, ext_call.return_data[0]) * stor3 / 10000 * Mask(112, 0, ext_call.return_data[32])) - (stor1 * Mask(112, 0, ext_call.return_data[0]) * stor3 / 10000 * Mask(112, 0, ext_call.return_data[32])) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * Mask(112, 0, ext_call.return_data[0]) * stor3 / 10000) - (stor1 * Mask(112, 0, ext_call.return_data[0]) * stor3 / 10000) and 10^6 > -1 / (10000 * Mask(112, 0, ext_call.return_data[0]) * stor3 / 10000 * Mask(112, 0, ext_call.return_data[32])) - (stor1 * Mask(112, 0, ext_call.return_data[0]) * stor3 / 10000 * Mask(112, 0, ext_call.return_data[32])) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * Mask(112, 0, ext_call.return_data[0]) * stor3 / 10000) - (stor1 * Mask(112, 0, ext_call.return_data[0]) * stor3 / 10000):
            revert with 'NH{q', 17
        if not ((10000 * Mask(112, 0, ext_call.return_data[0]) * stor3 / 10000 * Mask(112, 0, ext_call.return_data[32])) - (stor1 * Mask(112, 0, ext_call.return_data[0]) * stor3 / 10000 * Mask(112, 0, ext_call.return_data[32])) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * Mask(112, 0, ext_call.return_data[0]) * stor3 / 10000) - (stor1 * Mask(112, 0, ext_call.return_data[0]) * stor3 / 10000)) + ((10000 * Mask(112, 0, ext_call.return_data[32]) * stor3 / 10000 * Mask(112, 0, ext_call.return_data[0])) - (stor1 * Mask(112, 0, ext_call.return_data[32]) * stor3 / 10000 * Mask(112, 0, ext_call.return_data[0])) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * Mask(112, 0, ext_call.return_data[32]) * stor3 / 10000) - (stor1 * Mask(112, 0, ext_call.return_data[32]) * stor3 / 10000)):
            revert with 'NH{q', 18
        stor2 = 10^6 * (10000 * Mask(112, 0, ext_call.return_data[0]) * stor3 / 10000 * Mask(112, 0, ext_call.return_data[32])) - (stor1 * Mask(112, 0, ext_call.return_data[0]) * stor3 / 10000 * Mask(112, 0, ext_call.return_data[32])) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * Mask(112, 0, ext_call.return_data[0]) * stor3 / 10000) - (stor1 * Mask(112, 0, ext_call.return_data[0]) * stor3 / 10000) / ((10000 * Mask(112, 0, ext_call.return_data[0]) * stor3 / 10000 * Mask(112, 0, ext_call.return_data[32])) - (stor1 * Mask(112, 0, ext_call.return_data[0]) * stor3 / 10000 * Mask(112, 0, ext_call.return_data[32])) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * Mask(112, 0, ext_call.return_data[0]) * stor3 / 10000) - (stor1 * Mask(112, 0, ext_call.return_data[0]) * stor3 / 10000)) + ((10000 * Mask(112, 0, ext_call.return_data[32]) * stor3 / 10000 * Mask(112, 0, ext_call.return_data[0])) - (stor1 * Mask(112, 0, ext_call.return_data[32]) * stor3 / 10000 * Mask(112, 0, ext_call.return_data[0])) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * Mask(112, 0, ext_call.return_data[32]) * stor3 / 10000) - (stor1 * Mask(112, 0, ext_call.return_data[32]) * stor3 / 10000))
        require ext_code.size(0xb72ab6f7177bbb41efcc17d817778d77460259f1)
        staticcall 0xb72ab6f7177bbb41efcc17d817778d77460259f1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[(18 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
        require ext_code.size(0xb72ab6f7177bbb41efcc17d817778d77460259f1)
        call 0xb72ab6f7177bbb41efcc17d817778d77460259f1.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0x3fb7931f7bfa9f318fbf2346f568802a76531774, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(20 * ceil32(return_data.size)) + 196] = this.address
        require ext_code.size(0x3fb7931f7bfa9f318fbf2346f568802a76531774)
        call 0x3fb7931f7bfa9f318fbf2346f568802a76531774.stake(uint256 arg1, address arg2) with:
             gas gas_remaining wei
            args ext_call.return_data[0], address(this.address), mem[(20 * ceil32(return_data.size)) + 228 len 5 * ceil32(return_data.size)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(0x3fb7931f7bfa9f318fbf2346f568802a76531774)
        call 0x3fb7931f7bfa9f318fbf2346f568802a76531774.claim(address arg1) with:
             gas gas_remaining wei
            args address(this.address), mem[(22 * ceil32(return_data.size)) + 196 len 9 * ceil32(return_data.size)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        stor6 = 1
}



}
