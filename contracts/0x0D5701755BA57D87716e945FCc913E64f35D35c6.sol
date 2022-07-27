contract main {




// =====================  Runtime code  =====================


address owner;
address sub_c649fc2fAddress;
address sub_fedb2532Address;
address xTokenAddress;
address sub_49bfcca1Address;

function xToken() payable {
    return xTokenAddress
}

function sub_49bfcca1(?) payable {
    return sub_49bfcca1Address
}

function owner() payable {
    return owner
}

function sub_c649fc2f(?) payable {
    return sub_c649fc2fAddress
}

function sub_fedb2532(?) payable {
    return sub_fedb2532Address
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

function sub_3ddf9e39(?) payable {
    require ext_code.size(sub_c649fc2fAddress)
    staticcall sub_c649fc2fAddress.0x153ffc77 with:
            gas gas_remaining wei
           args xTokenAddress, 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_6e16399c(?) payable {
    require ext_code.size(sub_fedb2532Address)
    staticcall sub_fedb2532Address.0x153ffc77 with:
            gas gas_remaining wei
           args sub_49bfcca1Address, 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_c0ce6238(?) payable {
    require ext_code.size(sub_c649fc2fAddress)
    staticcall sub_c649fc2fAddress.twap(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args xTokenAddress, 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_5f4370a5(?) payable {
    require ext_code.size(sub_fedb2532Address)
    staticcall sub_fedb2532Address.twap(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args sub_49bfcca1Address, 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}



}
