contract main {




// =====================  Runtime code  =====================


const ETH_TOKEN_ADDRESS = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee


address owner;
mapping of struct stor1;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function sub_7a6d0bd2(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    return address(arg2)
}

function sub_83d91809(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    return address(arg2)
}

function getSpenderAddress(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return arg2
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function getWrapCallData(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if arg1 != stor1[address(arg2)].field_0:
        revert with 0, 'Must be a valid token pair'
    return address(arg2), 0, 96, 36, arg3, address(arg2) << 64 >> 32, 0
}

function getUnwrapCallData(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if arg1 != stor1[address(arg2)].field_0:
        revert with 0, 'Must be a valid token pair'
    return address(arg2), 0, 96, 36, arg3, address(arg2) << 64 >> 32, 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_66024df6(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require calldata.size - 36 >= 64
    require arg2 == address(arg2)
    require arg3 == uint8(arg3)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1[address(arg1)].field_0 = address(arg2)
    stor1[address(arg1)].field_160 = uint8(arg3)
    emit 0xfbb05929: address(arg1), address(arg2), uint8(arg3)
}

function sub_161aa661(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if address(arg1) != stor1[address(arg2)].field_0:
        revert with 0, 'Must be a valid token pair'
    require ext_code.size(address(arg2))
    staticcall address(arg2).getDepositTokensForShares(uint256 arg1) with:
            gas gas_remaining wei
           args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}



}
