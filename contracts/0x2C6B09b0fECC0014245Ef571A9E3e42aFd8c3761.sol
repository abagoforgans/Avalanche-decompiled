contract main {




// =====================  Runtime code  =====================


address owner;
address sub_b649d032Address;

function owner() payable {
    return owner
}

function sub_b649d032(?) payable {
    return sub_b649d032Address
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

function sub_985ded82(?) payable {
    require calldata.size - 4 >= 96
    require arg3 == address(arg3)
    staticcall address(arg3).totalBorrow() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if not bool(ceil32(return_data.size) + 160 <= test266151307()):
        revert with 0, 65
    require ext_call.return_data[0] == ext_call.return_data[16 len 16]
    require ext_call.return_data[32] == ext_call.return_data[48 len 16]
    if arg1 and ext_call.return_data[16 len 16] > -1 / arg1:
        revert with 0, 17
    if arg1 * ext_call.return_data[16 len 16] and arg2 > -1 / arg1 * ext_call.return_data[16 len 16]:
        revert with 0, 17
    if not ext_call.return_data[48 len 16]:
        revert with 0, 18
    return (arg1 * ext_call.return_data[16 len 16] * arg2 / ext_call.return_data[48 len 16])
}

function sub_410f0341(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    staticcall address(arg2).COLLATERIZATION_RATE() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    staticcall address(arg2).collateral() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if arg1 and 10^13 > -1 / arg1:
        revert with 0, 17
    if 10^13 * arg1 and ext_call.return_data[0] > -1 / 10^13 * arg1:
        revert with 0, 17
    staticcall sub_b649d032Address.toAmount(address arg1, uint256 arg2, bool arg3) with:
            gas gas_remaining wei
           args address(ext_call.return_data[0]), 10^13 * arg1 * ext_call.return_data[0], 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_d9a9e6cd(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg3 == address(arg3)
    staticcall address(arg3).userBorrowPart(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    staticcall address(arg3).userCollateralShare(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    staticcall address(arg3).totalBorrow() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if not bool((4 * ceil32(return_data.size)) + 160 <= test266151307()):
        revert with 0, 65
    require ext_call.return_data[0] == ext_call.return_data[16 len 16]
    require ext_call.return_data[32] == ext_call.return_data[48 len 16]
    if ext_call.return_data[0] and ext_call.return_data[16 len 16] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if ext_call.return_data[0] * ext_call.return_data[16 len 16] and arg2 > -1 / ext_call.return_data[0] * ext_call.return_data[16 len 16]:
        revert with 0, 17
    if not ext_call.return_data[48 len 16]:
        revert with 0, 18
    staticcall address(arg3).COLLATERIZATION_RATE() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    staticcall address(arg3).collateral() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[0] and 10^13 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if 10^13 * ext_call.return_data[0] and ext_call.return_data[0] > -1 / 10^13 * ext_call.return_data[0]:
        revert with 0, 17
    staticcall sub_b649d032Address.toAmount(address arg1, uint256 arg2, bool arg3) with:
            gas gas_remaining wei
           args address(ext_call.return_data[0]), 10^13 * ext_call.return_data[0] * ext_call.return_data[0], 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0] >= ext_call.return_data[0] * uint128(ext_call.return_data[0]) * arg2 / ext_call.return_data[48 len 16], 
           ext_call.return_data[0],
           ext_call.return_data[0]
}



}
